using UnityEngine;
using System;
using System.Collections;

public class PlayerCharacter_Landing : PlayerCharacterStateMachineState 
{
    public PlayerCharacter_Landing(PlayerCharacterStateMachine controller) : base(controller) { }

    protected override void OnStartState()
    {
        if (Controller.FallHeight != -1)
            Controller.animation.CrossFade("Landing");
    }

    protected override Enum OnUpdate()
    {
        PlayerCharacterStates nextState = PlayerCharacterStates.PlayerCharacter_Landing;

        // Determine movement
        if (!IsPlayerInputZero(RawHorizontalInput))
            Direction = new Vector3(RawHorizontalInput, 0, 0);

        float toLast = ((Controller.FallHeight / 5) * Controller.LandingDuration);
        toLast = Mathf.Max(toLast, Controller.LandingDuration);
        toLast = Mathf.Min(toLast, 5 * Controller.LandingDuration);

        if (Controller.FallHeight == -1)
            toLast = 0.05f;

        // Determine next state
        if (!IsGrounded)
            nextState = PlayerCharacterStates.PlayerCharacter_Falling;
        else if (Duration > toLast)
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
            else if (ShouldTransitionZ_Down)
            {
                Controller.ZLevel = Controller.Z_Down;
                VerticalSpeed = GroundVerticalSpeed;
                nextState = PlayerCharacterStates.PlayerCharacter_TransitioningZ;
            }
            else if (ShouldTransitionZ_Up)
            {
                Controller.ZLevel = Controller.Z_Up;
                VerticalSpeed = 0;
                nextState = PlayerCharacterStates.PlayerCharacter_TransitioningZ;
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
