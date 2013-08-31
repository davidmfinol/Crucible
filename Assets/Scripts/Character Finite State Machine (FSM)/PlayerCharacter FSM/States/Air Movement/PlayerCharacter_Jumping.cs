using UnityEngine;
using System;
using System.Collections;

public class PlayerCharacter_Jumping : PlayerCharacterFSM_IState
{
    private float _startHeight;

    public PlayerCharacter_Jumping(PlayerCharacterFSM controller) : base(controller) { }

    protected override void OnStartState()
    {
        FSM.animation["Jumping"].time = 0;
        FSM.animation["JumpFall"].time = 0;
        FSM.animation.CrossFade("Jumping");
        FSM.FallHeight = 0;
        StartHeight = FSM.transform.position.y;
        VerticalSpeed = Mathf.Sqrt(2 * FSM.JumpHeight * FSM.Gravity);
    }

    protected override Enum OnUpdate()
    {
        PlayerCharacterStates nextState = PlayerCharacterStates.PlayerCharacter_Jumping;

        // Update animation
        if (!FSM.animation.IsPlaying("Jumping") && !FSM.animation.IsPlaying("JumpFall"))
            FSM.animation.CrossFade("JumpFall");

        // Determine movement
        float targetSpeed;
        if ( (Direction.x == 0 || Duration < 1) && (!IsPlayerInputZero(RawHorizontalInput)) )
            Direction = new Vector3(RawHorizontalInput, 0, 0);
        targetSpeed = Direction.x * RawHorizontalInput * FSM.MaxRunSpeed;
        float accelerationSmoothing = FSM.AirHorizontalAcceleration * Time.deltaTime;
        HorizontalSpeed = Mathf.Lerp(HorizontalSpeed, targetSpeed, accelerationSmoothing);
        VerticalSpeed = FSM.ApplyGravity();

        // Determine next state
        if (FSM.CanClimbLadder && (UpHold || DownHold))
            nextState = PlayerCharacterStates.PlayerCharacter_ClimbingLadder;
        else if (FSM.CanClimbPipe && (UpHold || DownHold))
            nextState = PlayerCharacterStates.PlayerCharacter_ClimbingPipe;
        else if (FSM.CanHangOffObject && UpHold)
        {
            if (!FSM.CanHangOffLedge)
                HorizontalSpeed = 0;
            VerticalSpeed = 0;
            nextState = PlayerCharacterStates.PlayerCharacter_Hanging;
        }
        else if (Duration > 0 && IsGrounded)
        {
            FSM.animation["JumpLanding"].time = 0;
            FSM.animation.CrossFade("JumpLanding");
            nextState = PlayerCharacterStates.PlayerCharacter_Landing;
        }
        else if (FSM.transform.position.y < StartHeight)
            nextState = PlayerCharacterStates.PlayerCharacter_Falling;
        else if (ShouldTransitionZ_Down)
        {
            FSM.ZLevel = FSM.Z_Down;
            VerticalSpeed = GroundVerticalSpeed;
            nextState = PlayerCharacterStates.PlayerCharacter_TransitioningZ;
        }
        else if (ShouldTransitionZ_Up)
        {
            FSM.ZLevel = FSM.Z_Up;
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
