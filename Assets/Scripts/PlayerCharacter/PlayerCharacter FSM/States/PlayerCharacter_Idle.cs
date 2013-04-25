using UnityEngine;
using System;
using System.Collections;
using System.Collections.Generic;

public class PlayerCharacter_Idle : PlayerCharacterStateMachineState
{
    public PlayerCharacter_Idle(PlayerCharacterStateMachine controller) : base(controller) { }

    protected override void OnStartState()
    {
        Controller.animation.CrossFade("Idle");
        HorizontalSpeed = 0.0f;
    }

    protected override Enum OnUpdate()
    {
        PlayerCharacterStates nextState = PlayerCharacterStates.PlayerCharacter_Idle;

        // Determine movement
        if(!IsPlayerInputZero(RawHorizontalInput))
            Direction = new Vector3(RawHorizontalInput, 0, 0);

        // Determine next state
        if (!IsGrounded)
            nextState = PlayerCharacterStates.PlayerCharacter_Falling;
        else if (Controller.CanClimbObject && (UpDown || DownDown))
            nextState = PlayerCharacterStates.PlayerCharacter_ClimbingUp;
        else if (JumpDown)
            nextState = PlayerCharacterStates.PlayerCharacter_Jumping;
        else if (!(IsPlayerInputZero(RawHorizontalInput)))
            nextState = PlayerCharacterStates.PlayerCharacter_Stepping;

        return nextState;
    }

    public override bool IsGroundState()
    {
        return true;
    }
}
