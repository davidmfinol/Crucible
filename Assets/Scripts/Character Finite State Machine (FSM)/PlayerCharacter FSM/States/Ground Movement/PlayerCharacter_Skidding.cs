using UnityEngine;
using System;
using System.Collections;

/*
public class PlayerCharacter_Skidding : PlayerCharacterFSM_IState
{
    public PlayerCharacter_Skidding(PlayerCharacterFSM controller) : base(controller) { }

    protected override Enum OnUpdate()
    {
        PlayerCharacterStates nextState = PlayerCharacterStates.PlayerCharacter_Skidding;

        // Determine movement
        float accelerationSmoothing = FSM.GroundHorizontalAcceleration * Time.deltaTime;
        HorizontalSpeed = Mathf.Lerp(HorizontalSpeed, 0.0f, accelerationSmoothing);

        // Determine next state
        if (!IsGrounded)
            nextState = PlayerCharacterStates.PlayerCharacter_Falling;
        else if (Duration > FSM.SkidDuration)
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

    protected override void OnExitState()
    {
        HorizontalSpeed = 0.0f;
    }

    public override bool IsGroundState()
    {
        return true;
    }
}
*/