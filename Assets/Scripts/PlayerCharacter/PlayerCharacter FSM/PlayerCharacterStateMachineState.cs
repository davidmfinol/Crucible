using UnityEngine;
using System;
using System.Collections;
using System.Collections.Generic;

/// <summary>
/// For the use of the FSM (PlayerCharacterStateMachine), keep an enum of all the possible states
/// </summary>
public enum PlayerCharacterStates : int
{
    // Ground Basic
    PlayerCharacter_Idle,
    PlayerCharacter_Stepping,
    PlayerCharacter_Running,
    PlayerCharacter_Skidding,
    PlayerCharacter_Turning,
    PlayerCharacter_StepCancelling,

    // Air Basic
    PlayerCharacter_Landing,
    PlayerCharacter_Jumping,
    PlayerCharacter_Falling,
    //PlayerCharacter_DoubleJumping,
    //PlayerCharacter_WallGrabbing,
    //PlayerCharacter_WallKicking,

    // Ledge/ladders
    PlayerCharacter_Hanging,
    PlayerCharacter_ClimbingLedge,
    PlayerCharacter_ClimbingUp,
    
    PlayerCharacter_TransitioningZ,
    PlayerCharacter_Attacking
};

// PlayerCharacterStateMachineState is used to define the states of the FSM that handles the input and movement of players
// Every state possible is a subclass of this abstract class
// The finite state machine (PlayerCharacterStateMachine) processes each state by calling its Update() method
public abstract class PlayerCharacterStateMachineState : CharacterStateMachineState
{
    // We keep track of whether the jump button was pressed during this state to prevent from "gobbling" it
    protected ButtonPressedStack buttonPressedStack = new ButtonPressedStack();

    //Input constants
    protected const string strLeft = "Left";
    protected const string strUp = "Up";
    protected const string strRight = "Right";
    protected const string strDown = "Down";
    protected const string strJump = "Jump";

    public PlayerCharacterStateMachineState(PlayerCharacterStateMachine controller) : base(controller){}

    /// <summary>
    /// Because of the way we're storing states (see PlayerCharacterStateMachine), we need a way to simulate creating a new state
    /// </summary>
    sealed public override void StartState()
    {
        base.StartState();

        if (IsGroundState())
        {
            VerticalSpeed = GroundVerticalSpeed;
            HasDoubleJumped = false;
            Controller.HasReleasedHangableObject = false;
        }
        
        OnStartState();
    }

    /// <summary>
    /// States can override OnStartState() to start their own instance variables
    /// They should set the animation for the state
    /// And they can also set the desired HorizontalSpeed, VerticalSpeed, and Direction if that remains constant for the entire state
    /// </summary>
    protected virtual void OnStartState() {}

    sealed public override Enum Update()
    {
        Enum nextState;

        // We let the individual state do their processing and set the desired Direction, VerticalSpeed, and HorizontalSpeed
        nextState = base.Update();
        
        // ButtonPressedStack management
        if (JumpDown)
            buttonPressedStack.PushOnStack(strJump);
        // Movement gets priority. Remember, Stacks are LIFO
        if (LeftDown)
            buttonPressedStack.PushOnStack(strLeft);
        if (RightDown)
            buttonPressedStack.PushOnStack(strRight);
        if (DownHold)
            buttonPressedStack.PushOnStack(strDown);
        if (UpHold)
            buttonPressedStack.PushOnStack(strUp);

        return nextState;
    }

    sealed public override void ExitState()
    {
        buttonPressedStack.Clear();
        OnExitState();
    }

    protected virtual void OnExitState() {}

    public override bool ShouldMoveWithPlatform()
    {
        return IsWallHangState() || (IsGroundState() && IsGrounded) || (IsWallHangState() && IsTouchingWall);
    }

    public virtual bool IsGroundState()
    {
        return false;
    }
    public virtual bool IsWallHangState()
    {
        return false;
    }

    // Helper Methods

    /// <summary>
    /// Comparing a player's input float directly to zero can be bad, so here's a helper
    /// </summary>
    protected bool IsPlayerInputZero(float input)
    {
        return Mathf.Abs(input) < 0.1f;
    }
    /// <summary>
    /// Check if a buttonName refers to the 'forward' direction
    /// </summary>
    protected bool equalsForward(string buttonName)
    {
        return (Direction.x > 0 && buttonName.Equals(strRight)) || (Direction.x < 0 && buttonName.Equals(strLeft));
    }
    /// <summary>
    /// Check if a buttonName refers to the 'backward' direction
    /// </summary>
    protected bool equalsBackward(string buttonName)
    {
        return (Direction.x < 0 && buttonName.Equals(strRight)) || (Direction.x > 0 && buttonName.Equals(strLeft));
    }
    // Properties
    protected new PlayerCharacterStateMachine Controller
    {
        get { return (PlayerCharacterStateMachine)base.Controller; }
        set { base.Controller = value; }
    }
    protected bool HasDoubleJumped
    {
        get { return Controller.HasDoubleJumped; }
        set { Controller.HasDoubleJumped = value; }
    }

    // Input is handled below
    protected float RawHorizontalInput
    {
        get { return Input.GetAxisRaw("Horizontal"); }
    }
    protected float RawVerticalInput
    {
        get { return Input.GetAxisRaw("Vertical"); }
    }

    protected bool LeftUp
    {
        get { return Input.GetButtonUp("Horizontal") && RawHorizontalInput < 0; }
    }
    protected bool LeftHold
    {
        get { return Input.GetButton("Horizontal") && RawHorizontalInput < 0; }
    }
    protected bool LeftDown
    {
        get { return Input.GetButtonDown("Horizontal") && RawHorizontalInput < 0; }
    }

    protected bool UpUp
    {
        get { return Input.GetButtonUp("Vertical") && RawVerticalInput > 0; }
    }
    protected bool UpHold
    {
        get { return Input.GetButton("Vertical") && RawVerticalInput > 0; }
    }
    protected bool UpDown
    {
        get { return Input.GetButtonDown("Vertical") && RawVerticalInput > 0; }
    }

    protected bool RightUp
    {
        get { return Input.GetButtonUp("Horizontal") && RawHorizontalInput > 0; }
    }
    protected bool RightHold
    {
        get { return Input.GetButton("Horizontal") && RawHorizontalInput > 0; }
    }
    protected bool RightDown
    {
        get { return Input.GetButtonDown("Horizontal") && RawHorizontalInput > 0; }
    }

    protected bool DownUp
    {
        get { return Input.GetButtonUp("Vertical") && RawVerticalInput < 0; }
    }
    protected bool DownHold
    {
        get { return Input.GetButton("Vertical") && RawVerticalInput < 0; }
    }
    protected bool DownDown
    {
        get { return Input.GetButtonDown("Vertical") && RawVerticalInput < 0; }
    }

    protected bool ForwardUp
    {
        get { return (Direction.x > 0 && RightUp) || (Direction.x < 0 && LeftUp); }
    }
    protected bool ForwardHold
    {
        get { return (Direction.x > 0 && RightHold) || (Direction.x < 0 && LeftHold); }
    }
    protected bool ForwardDown
    {
        get { return (Direction.x > 0 && RightDown) || (Direction.x < 0 && LeftDown); }
    }

    protected bool BackwardUp
    {
        get { return (Direction.x > 0 && LeftUp) || (Direction.x < 0 && RightUp); }
    }
    protected bool BackwardHold
    {
        get { return (Direction.x > 0 && LeftHold) || (Direction.x < 0 && RightHold); }
    }
    protected bool BackwardDown
    {
        get { return (Direction.x > 0 && LeftDown) || (Direction.x < 0 && RightDown); }
    }

    protected bool JumpUp
    {
        get { return Input.GetButtonUp(strJump); }
    }
    protected bool JumpHold
    {
        get { return Input.GetButton(strJump); }
    }
    protected bool JumpDown
    {
        get { return Input.GetButtonDown(strJump); }
    }

    public bool ShouldTransitionZ_Down
    {
        get { return DownHold && Controller.CanTransitionZ && Controller.ZLevel != Controller.Z_Down; }
    }

    public bool ShouldTransitionZ_Up
    {
        get { return UpHold && Controller.CanTransitionZ && Controller.ZLevel != Controller.Z_Up; }
    }
    
    protected class ButtonPressedStack
    {
        private Stack<string> buttonsPressed;

        public ButtonPressedStack()
        {
            buttonsPressed = new Stack<string>();
        }

        /// <summary>
        /// Wrapper for Stack.Push(). Invalid string names will not get pushed
        /// </summary>
        public void PushOnStack(string buttonName)
        {
            if (buttonName.Equals(strLeft) || buttonName.Equals(strUp) || buttonName.Equals(strRight) || buttonName.Equals(strDown)
                || buttonName.Equals(strJump))
                buttonsPressed.Push(buttonName);
        }
        /// <summary>
        /// Wrapper for Stack.Clear()
        /// </summary>
        public void Clear() { buttonsPressed.Clear(); }
        /// <summary>
        /// Returns name of latest button pressed. Returns empty string if no latest found
        /// </summary>
        public string LatestButton()
        {
            if (buttonsPressed.Count > 0)
                return buttonsPressed.Peek();
            else
                return "";
        }
        public string LatestButton(string[] filter)
        {
            string latestMovementButtonName = "";
            foreach (string buttonName in buttonsPressed)
            {
                foreach (string filterEntry in filter)
                {
                    if (buttonName.Equals(filterEntry))
                    {
                        latestMovementButtonName = buttonName;
                        goto Finish;
                    }
                }
            }
            Finish:
            return latestMovementButtonName;
        }
        /// <summary>
        /// Returns name of latest movement button pressed. Returns empty string if no latest found
        /// </summary>
        public string LatestMovementButton()
        {
            string[] validMovementStrings = new string[] { strLeft, strUp, strRight, strDown };
            return LatestButton(validMovementStrings);
        }
        /// <summary>
        /// Returns name of latest face button pressed. Returns empty string if no latest found
        /// </summary>
        public string LatestFaceButton()
        {
            string[] validFaceStrings = new string[] { strJump };
            return LatestButton(validFaceStrings);
        }
    }
}