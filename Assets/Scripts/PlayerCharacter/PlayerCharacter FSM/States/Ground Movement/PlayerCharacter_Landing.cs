using UnityEngine;
using System;
using System.Collections;

public class PlayerCharacter_Landing : PlayerCharacterStateMachineState 
{
    public PlayerCharacter_Landing(PlayerCharacterStateMachine controller) : base(controller) { }

    protected override Enum OnUpdate()
    {
        PlayerCharacterStates nextState = PlayerCharacterStates.PlayerCharacter_Landing;

        // Determine movement
        if (!IsPlayerInputZero(RawHorizontalInput))
            Direction = new Vector3(RawHorizontalInput, 0, 0);

        // Determine next state
        if (!IsGrounded)
            nextState = PlayerCharacterStates.PlayerCharacter_Falling;
        else if (Duration > Controller.LandingDuration)
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
            else if (!IsPlayerInputZero(RawHorizontalInput))
            {
                if (RawHorizontalInput * Direction.x < 0)
                    nextState = PlayerCharacterStates.PlayerCharacter_Turning;
                else
                    nextState = PlayerCharacterStates.PlayerCharacter_Running;
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
