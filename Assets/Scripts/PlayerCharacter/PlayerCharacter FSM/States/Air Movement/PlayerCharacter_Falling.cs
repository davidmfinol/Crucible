using UnityEngine;
using System;
using System.Collections;

public class PlayerCharacter_Falling : PlayerCharacterStateMachineState
{
    public PlayerCharacter_Falling(PlayerCharacterStateMachine controller) : base(controller) { }

    protected override void OnStartState()
    {
        Controller.FallHeight = 0;
        Controller.animation.CrossFade("Falling");
    }

    protected override Enum OnUpdate()
    {
        PlayerCharacterStates nextState = PlayerCharacterStates.PlayerCharacter_Falling;

        Controller.FallHeight += -VerticalSpeed * Time.deltaTime; 

        // Determine movement
        float targetSpeed = RawHorizontalInput * Controller.MaxRunSpeed * Direction.x;
        float accelerationSmoothing = Controller.AirHorizontalAcceleration * Time.deltaTime;
        HorizontalSpeed = Mathf.Lerp(HorizontalSpeed, targetSpeed, accelerationSmoothing);
        VerticalSpeed = Controller.ApplyGravity();

        // Determine next state
        if (Controller.CanHangOffObject)
                nextState = PlayerCharacterStates.PlayerCharacter_Hanging;
        else if (Controller.CanClimbObject && (UpHold || DownHold))
            nextState = PlayerCharacterStates.PlayerCharacter_ClimbingUp;
        else if (IsGrounded)
            nextState = PlayerCharacterStates.PlayerCharacter_Landing;
        else if (DownHold && Controller.CanTransitionZ)
        {
            Controller.ZLevel = Controller.Z_Down;
            VerticalSpeed = GroundVerticalSpeed;
            nextState = PlayerCharacterStates.PlayerCharacter_TransitioningZ;
        }
        else if (UpHold && Controller.CanTransitionZ)
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

    public override bool IsAirState()
    {
        return true;
    }
}
