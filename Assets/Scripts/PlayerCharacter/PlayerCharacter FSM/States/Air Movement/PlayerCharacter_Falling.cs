using UnityEngine;
using System;
using System.Collections;

public class PlayerCharacter_Falling : PlayerCharacterStateMachineState
{
    public PlayerCharacter_Falling(PlayerCharacterStateMachine controller) : base(controller) { }

    protected override Enum OnUpdate()
    {
        PlayerCharacterStates nextState = PlayerCharacterStates.PlayerCharacter_Falling;

        // Determine movement
        float targetSpeed = RawHorizontalInput * Controller.MaxRunSpeed * Direction.x;
        float accelerationSmoothing = Controller.AirHorizontalAcceleration * Time.deltaTime;
        HorizontalSpeed = Mathf.Lerp(HorizontalSpeed, targetSpeed, accelerationSmoothing);
        VerticalSpeed = Controller.ApplyGravity();

        // Determine next state
        if (Controller.CanHangOffObject && UpHold)
                nextState = PlayerCharacterStates.PlayerCharacter_Hanging;
        else if (Controller.CanClimbObject && (UpHold || DownHold))
            nextState = PlayerCharacterStates.PlayerCharacter_ClimbingUp;
        else if (IsGrounded)
            nextState = PlayerCharacterStates.PlayerCharacter_Landing;
        else if (IsTouchingWall && JumpHold)
            nextState = PlayerCharacterStates.PlayerCharacter_WallGrabbing;
        //else if (JumpDown && !HasDoubleJumped)
        //    nextState = PlayerCharacterStates.PlayerCharacter_DoubleJumping;

        return nextState;
    }

    public override bool IsAirState()
    {
        return true;
    }
}
