using UnityEngine;
using System;
using System.Collections;

/*
public class PlayerCharacter_Stepping : PlayerCharacterFSM_IState
{
    public PlayerCharacter_Stepping(PlayerCharacterFSM controller) : base(controller) { }

    protected override void OnStartState()
    {
        FSM.animation["Walking"].time = 0;
        FSM.animation.CrossFade("Walking");
    }

    protected override Enum OnUpdate()
    {
        PlayerCharacterStates nextState = PlayerCharacterStates.PlayerCharacter_Stepping;

        // Determine movement
        float accelerationSmoothing = FSM.GroundHorizontalAcceleration * Time.deltaTime;
        HorizontalSpeed = Mathf.Lerp(HorizontalSpeed, FSM.MaxRunSpeed, accelerationSmoothing);

        // Determine next state
        if (!IsGrounded)
            nextState = PlayerCharacterStates.PlayerCharacter_Falling;
        else if (JumpDown)
            nextState = PlayerCharacterStates.PlayerCharacter_Jumping;
        else if (IsPlayerInputZero(RawHorizontalInput) || (Direction.x * RawHorizontalInput < 0))
            nextState = PlayerCharacterStates.PlayerCharacter_StepCancelling;
        else if (Duration > FSM.StepDuration)
            nextState = PlayerCharacterStates.PlayerCharacter_Running;

        return nextState;
    }

    public override bool IsGroundState()
    {
        return true;
    }
}
 */