using UnityEngine;
using System;
using System.Collections;

public class PlayerCharacter_Landing : PlayerCharacterStateMachineState 
{
    public PlayerCharacter_Landing(PlayerCharacterStateMachine controller) : base(controller) { }

    protected override void OnStartState()
    {
        Controller.animation["Landing"].time = 0;
        if (!Controller.animation.IsPlaying("JumpLanding"))
        {
            Controller.animation.CrossFade("Landing");
            if (Controller.FallHeight > 10)
            {
                Controller.transform.GetComponentInChildren<HeartBox>().HitPoints -= (int)Controller.FallHeight * 20;
                Controller.transform.GetComponentInChildren<PlayerHeartBox>().TimeSinceHit = 0;
            }
        }
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

        if (Controller.animation.IsPlaying("JumpLanding"))
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
