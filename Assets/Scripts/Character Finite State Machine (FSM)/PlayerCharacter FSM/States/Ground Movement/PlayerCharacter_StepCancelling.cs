using UnityEngine;
using System;
using System.Collections;

public class PlayerCharacter_StepCancelling : PlayerCharacterFSM_IState
{
    public PlayerCharacter_StepCancelling(PlayerCharacterFSM controller) : base(controller) { }

    protected override Enum OnUpdate()
    {
        PlayerCharacterStates nextState = PlayerCharacterStates.PlayerCharacter_StepCancelling;

        // No movement done this state

        // So we just determine next state
        if (!IsGrounded)
            nextState = PlayerCharacterStates.PlayerCharacter_Falling;
        else if (Duration > FSM.StepCancelDuration)
        {
            string latestFacePressed = buttonPressedStack.LatestFaceButton();
            if (latestFacePressed.Equals(strJump))
            {
                if (BackwardHold)
                {
                    Direction = new Vector3(Direction.x * -1, 0);
                    HorizontalSpeed = HorizontalSpeed * -1;
                }
                nextState = PlayerCharacterStates.PlayerCharacter_Jumping;
            }
            else
                nextState = PlayerCharacterStates.PlayerCharacter_Idle;
        }

        return nextState;
    }

    public override bool IsGroundState()
    {
        return true;
    }
}
