using UnityEngine;
using System;
using System.Collections;

public class PlayerCharacter_Falling : PlayerCharacterFSM_IState
{
    public PlayerCharacter_Falling(PlayerCharacterFSM controller) : base(controller) { }

    protected override void OnStartState()
    {
        Controller.FallHeight = 0;
        Controller.animation["Falling"].time = 0;
        Controller.animation.CrossFade("Falling");
        VerticalSpeed = Controller.ApplyGravity();
    }

    protected override Enum OnUpdate()
    {
        PlayerCharacterStates nextState = PlayerCharacterStates.PlayerCharacter_Falling;

        Controller.FallHeight += -VerticalSpeed * Time.deltaTime;

        // Determine movement
        float targetSpeed;
        if (Direction.x == 0)
        {
            if(!IsPlayerInputZero(RawHorizontalInput))
                Direction = new Vector3(RawHorizontalInput, 0, 0);
            targetSpeed = RawHorizontalInput * Controller.MaxRunSpeed;
        }
        else
            targetSpeed = (Direction.x * RawHorizontalInput * Controller.MaxRunSpeed);
        float accelerationSmoothing = Controller.AirHorizontalAcceleration * Time.deltaTime;
        HorizontalSpeed = Mathf.Lerp(HorizontalSpeed, targetSpeed, accelerationSmoothing);
        VerticalSpeed = Controller.ApplyGravity();

        // Determine next state
        if (Controller.CanHangOffObject && (Controller.ActiveHangTarget is Ledge || UpDown))
        {
            VerticalSpeed = 0;
            nextState = PlayerCharacterStates.PlayerCharacter_Hanging;
        }
        else if (Controller.CanClimbLadder && (UpHold || DownHold))
            nextState = PlayerCharacterStates.PlayerCharacter_ClimbingLadder;
        else if (Controller.CanClimbPipe && (UpHold || DownHold))
            nextState = PlayerCharacterStates.PlayerCharacter_ClimbingPipe;
        else if (IsGrounded)
            nextState = PlayerCharacterStates.PlayerCharacter_Landing;
        else if (ShouldTransitionZ_Down)
        {
            Controller.ZLevel = Controller.Z_Down;
            VerticalSpeed = GroundVerticalSpeed;
            nextState = PlayerCharacterStates.PlayerCharacter_TransitioningZ;
        }
        else if (ShouldTransitionZ_Up)
        {
            Controller.ZLevel = Controller.Z_Up;
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
