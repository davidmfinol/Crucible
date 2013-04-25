using UnityEngine;
using System;
using System.Collections;

public class PlayerCharacter_Running : PlayerCharacterStateMachineState
{
    public PlayerCharacter_Running(PlayerCharacterStateMachine controller) : base(controller) { }

    protected override void OnStartState()
    {
        Controller.animation.CrossFade("Running");
    }

    protected override Enum OnUpdate()
    {
        PlayerCharacterStates nextState = PlayerCharacterStates.PlayerCharacter_Running;

        // Determine movement
        float accelerationSmoothing = Controller.GroundHorizontalAcceleration * Time.deltaTime;
        HorizontalSpeed = Mathf.Lerp(HorizontalSpeed, Controller.MaxRunSpeed, accelerationSmoothing);

        // Determine next state
        if (!IsGrounded)
            nextState = PlayerCharacterStates.PlayerCharacter_Falling;
        else if (Controller.CanClimbObject && (UpHold || DownHold))
            nextState = PlayerCharacterStates.PlayerCharacter_ClimbingUp;
        else if (JumpDown)
            nextState = PlayerCharacterStates.PlayerCharacter_Jumping;
        else if (IsPlayerInputZero(RawHorizontalInput) || (Direction.x * RawHorizontalInput < 0))
            nextState = PlayerCharacterStates.PlayerCharacter_Skidding;

        return nextState;
    }

    public override bool IsGroundState()
    {
        return true;
    }

}
