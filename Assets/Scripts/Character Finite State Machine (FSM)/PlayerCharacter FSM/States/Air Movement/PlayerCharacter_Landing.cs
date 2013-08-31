using UnityEngine;
using System;
using System.Collections;

public class PlayerCharacter_Landing : PlayerCharacterFSM_IState 
{
    public PlayerCharacter_Landing(PlayerCharacterFSM controller) : base(controller) { }

    protected override void OnStartState()
    {
        FSM.animation["Landing"].time = 0;
        if (!FSM.animation.IsPlaying("JumpLanding"))
        {
            FSM.animation.CrossFade("Landing");
            HorizontalSpeed = Mathf.Min(Mathf.Abs(HorizontalSpeed * 3 / FSM.FallHeight), Mathf.Abs(HorizontalSpeed));
            if (FSM.FallHeight > 10)
            {
                FSM.transform.GetComponentInChildren<HeartBox>().HitPoints -= (int)FSM.FallHeight * 20;
                FSM.transform.GetComponentInChildren<PlayerHeartBox>().TimeSinceHit = 0;
            }
        }
    }

    protected override Enum OnUpdate()
    {
        PlayerCharacterStates nextState = PlayerCharacterStates.PlayerCharacter_Landing;

        // Determine movement
        if (!IsPlayerInputZero(RawHorizontalInput))
            Direction = new Vector3(RawHorizontalInput, 0, 0);

        float toLast = ((FSM.FallHeight / 5) * FSM.LandingDuration);
        toLast = Mathf.Max(toLast, FSM.LandingDuration);
        toLast = Mathf.Min(toLast, 5 * FSM.LandingDuration);

        if (FSM.animation.IsPlaying("JumpLanding"))
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
                FSM.ZLevel = FSM.Z_Down;
                VerticalSpeed = GroundVerticalSpeed;
                nextState = PlayerCharacterStates.PlayerCharacter_TransitioningZ;
            }
            else if (ShouldTransitionZ_Up)
            {
                FSM.ZLevel = FSM.Z_Up;
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
