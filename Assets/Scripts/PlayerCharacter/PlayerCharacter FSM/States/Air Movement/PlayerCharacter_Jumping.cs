using UnityEngine;
using System;
using System.Collections;

public class PlayerCharacter_Jumping : PlayerCharacterFSM_IState
{
    private float _startHeight;

    public PlayerCharacter_Jumping(PlayerCharacterFSM controller) : base(controller) { }

    protected override void OnStartState()
    {
        Controller.animation["Jumping"].time = 0;
        Controller.animation["JumpFall"].time = 0;
        Controller.animation.CrossFade("Jumping");
        Controller.FallHeight = 0;
        StartHeight = Controller.transform.position.y;
        VerticalSpeed = Mathf.Sqrt(2 * Controller.JumpHeight * Controller.Gravity);
    }

    protected override Enum OnUpdate()
    {
        PlayerCharacterStates nextState = PlayerCharacterStates.PlayerCharacter_Jumping;

        // Update animation
        if (!Controller.animation.IsPlaying("Jumping") && !Controller.animation.IsPlaying("JumpFall"))
            Controller.animation.CrossFade("JumpFall");

        // Determine movement
        float targetSpeed;
        if ( (Direction.x == 0 || Duration < 1) && (!IsPlayerInputZero(RawHorizontalInput)) )
            Direction = new Vector3(RawHorizontalInput, 0, 0);
        targetSpeed = Direction.x * RawHorizontalInput * Controller.MaxRunSpeed;
        float accelerationSmoothing = Controller.AirHorizontalAcceleration * Time.deltaTime;
        HorizontalSpeed = Mathf.Lerp(HorizontalSpeed, targetSpeed, accelerationSmoothing);
        VerticalSpeed = Controller.ApplyGravity();

        // Determine next state
        if (Controller.CanClimbLadder && (UpHold || DownHold))
            nextState = PlayerCharacterStates.PlayerCharacter_ClimbingLadder;
        else if (Controller.CanClimbPipe && (UpHold || DownHold))
            nextState = PlayerCharacterStates.PlayerCharacter_ClimbingPipe;
        else if (Controller.CanHangOffObject && ( Controller.CanHangOffLedge || UpDown) )
        {
            HorizontalSpeed = 0;
            VerticalSpeed = 0;
            nextState = PlayerCharacterStates.PlayerCharacter_Hanging;
        }
        else if (Duration > 0 && IsGrounded)
        {
            Controller.animation["JumpLanding"].time = 0;
            Controller.animation.CrossFade("JumpLanding");
            nextState = PlayerCharacterStates.PlayerCharacter_Landing;
        }
        else if (Controller.transform.position.y < StartHeight)
            nextState = PlayerCharacterStates.PlayerCharacter_Falling;
        else if (ShouldTransitionZ_Down)
        {
            Controller.ZLevel = Controller.Z_Down;
            VerticalSpeed = GroundVerticalSpeed;
            nextState = PlayerCharacterStates.PlayerCharacter_TransitioningZ;
        }
        else if (ShouldTransitionZ_Up)
        {
            Controller.ZLevel = Controller.Z_Up;
            VerticalSpeed = -GroundVerticalSpeed;
            nextState = PlayerCharacterStates.PlayerCharacter_TransitioningZ;
        }
        //else if (IsTouchingWall && JumpHold)
        //    nextState = PlayerCharacterStates.PlayerCharacter_WallGrabbing;
        //else if (JumpDown /*&& Controller.transform.position.y > StartHeight + Controller.JumpHeight / 2*/)
        //{
        //    nextState = PlayerCharacterStates.PlayerCharacter_DoubleJumping;
        //}

        return nextState;
    }

    // Properties
    public float StartHeight
    {
        get { return _startHeight; }
        set { _startHeight = value; }
    }
}
