using UnityEngine;
using System;
using System.Collections;

public class PlayerCharacter_Stepping : PlayerCharacterStateMachineState
{
    public PlayerCharacter_Stepping(PlayerCharacterStateMachine controller) : base(controller) { }

    protected override Enum OnUpdate()
    {
        PlayerCharacterStates nextState = PlayerCharacterStates.PlayerCharacter_Stepping;

        // Determine movement
        float accelerationSmoothing = Controller.GroundHorizontalAcceleration * Time.deltaTime;
        HorizontalSpeed = Mathf.Lerp(HorizontalSpeed, Controller.MaxRunSpeed, accelerationSmoothing);

        // Determine next state
        if (!IsGrounded)
            nextState = PlayerCharacterStates.PlayerCharacter_Falling;
        else if (JumpDown)
            nextState = PlayerCharacterStates.PlayerCharacter_Jumping;
        else if (IsPlayerInputZero(RawHorizontalInput) || (Direction.x * RawHorizontalInput < 0))
            nextState = PlayerCharacterStates.PlayerCharacter_StepCancelling;
        else if (Duration > Controller.StepDuration)
            nextState = PlayerCharacterStates.PlayerCharacter_Running;

        return nextState;
    }

    public override bool IsGroundState()
    {
        return true;
    }
}
