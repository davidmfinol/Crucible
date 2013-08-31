using UnityEngine;
using System;
using System.Collections;

public class PlayerCharacter_Falling : PlayerCharacterFSM_IState
{
    public PlayerCharacter_Falling(PlayerCharacterFSM controller) : base(controller) { }

    protected override void OnStartState()
    {
        FSM.FallHeight = 0;
        FSM.animation["Falling"].time = 0;
        FSM.animation.CrossFade("Falling");
        VerticalSpeed = FSM.ApplyGravity();
    }

    protected override Enum OnUpdate()
    {
        PlayerCharacterStates nextState = PlayerCharacterStates.PlayerCharacter_Falling;

        FSM.FallHeight += -VerticalSpeed * Time.deltaTime;

        // Determine movement
        float targetSpeed;
        if (Direction.x == 0)
        {
            if(!IsPlayerInputZero(RawHorizontalInput))
                Direction = new Vector3(RawHorizontalInput, 0, 0);
            targetSpeed = RawHorizontalInput * FSM.MaxRunSpeed;
        }
        else
            targetSpeed = (Direction.x * RawHorizontalInput * FSM.MaxRunSpeed);
        float accelerationSmoothing = FSM.AirHorizontalAcceleration * Time.deltaTime;
        HorizontalSpeed = Mathf.Lerp(HorizontalSpeed, targetSpeed, accelerationSmoothing);
        VerticalSpeed = FSM.ApplyGravity();

        // Determine next state
        if (FSM.CanHangOffObject && UpHold)
        {
            if (!FSM.CanHangOffLedge)
                HorizontalSpeed = 0;
            VerticalSpeed = 0;
            nextState = PlayerCharacterStates.PlayerCharacter_Hanging;
        }
        else if (FSM.CanClimbLadder && (UpHold || DownHold))
            nextState = PlayerCharacterStates.PlayerCharacter_ClimbingLadder;
        else if (FSM.CanClimbPipe && (UpHold || DownHold))
            nextState = PlayerCharacterStates.PlayerCharacter_ClimbingPipe;
        else if (IsGrounded)
            nextState = PlayerCharacterStates.PlayerCharacter_Landing;
        else if (ShouldTransitionZ_Down)
        {
            FSM.ZLevel = FSM.Z_Down;
            VerticalSpeed = GroundVerticalSpeed;
            nextState = PlayerCharacterStates.PlayerCharacter_TransitioningZ;
        }
        else if (ShouldTransitionZ_Up)
        {
            FSM.ZLevel = FSM.Z_Up;
            VerticalSpeed = 0;
            nextState = PlayerCharacterStates.PlayerCharacter_TransitioningZ;
        }
        //else if (IsTouchingWall && JumpHold)
        //    nextState = PlayerCharacterStates.PlayerCharacter_WallGrabbing;
        //else if (JumpDown && !HasDoubleJumped)
        //    nextState = PlayerCharacterStates.PlayerCharacter_DoubleJumping;

        return nextState;
    }
}
