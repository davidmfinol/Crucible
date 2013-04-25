using UnityEngine;
using System;
using System.Collections;

public class PlayerCharacter_Skidding : PlayerCharacterStateMachineState
{
    public PlayerCharacter_Skidding(PlayerCharacterStateMachine controller) : base(controller) { }

    protected override Enum OnUpdate()
    {
        PlayerCharacterStates nextState = PlayerCharacterStates.PlayerCharacter_Skidding;

        // Determine movement
        float accelerationSmoothing = Controller.GroundHorizontalAcceleration * Time.deltaTime;
        HorizontalSpeed = Mathf.Lerp(HorizontalSpeed, 0.0f, accelerationSmoothing);

        // Determine next state
        if (!IsGrounded)
            nextState = PlayerCharacterStates.PlayerCharacter_Falling;
        else if (Duration > Controller.SkidDuration)
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
