using UnityEngine;
using System;
using System.Collections;

public class PlayerCharacter_Running : PlayerCharacterFSM_IState
{
    public PlayerCharacter_Running(PlayerCharacterFSM controller) : base(controller) { }

    protected override void OnStartState()
    {
        FSM.animation["Running"].time = 0;
        FSM.animation["Running"].speed = 1.5f;
        FSM.animation.CrossFade("Running");
    }

    protected override Enum OnUpdate()
    {
        PlayerCharacterStates nextState = PlayerCharacterStates.PlayerCharacter_Running;

        // Determine movement
        float accelerationSmoothing = FSM.GroundHorizontalAcceleration * Time.deltaTime;
        HorizontalSpeed = Mathf.Lerp(HorizontalSpeed, FSM.MaxRunSpeed, accelerationSmoothing);

        // Determine next state
        if (!IsGrounded)
            nextState = PlayerCharacterStates.PlayerCharacter_Falling;
        else if (WeaponPrimaryDown && FSM.Weapon.GetComponent<Mine>() == null)
            nextState = PlayerCharacterStates.PlayerCharacter_AttackCombo1;
        else if (FSM.CanClimbLadder && (UpHold || DownHold))
            nextState = PlayerCharacterStates.PlayerCharacter_ClimbingLadder;
        else if (FSM.CanClimbPipe && (UpHold || DownHold))
            nextState = PlayerCharacterStates.PlayerCharacter_ClimbingPipe;
        else if (JumpDown)
            nextState = PlayerCharacterStates.PlayerCharacter_Jumping;
        else if (IsPlayerInputZero(RawHorizontalInput) || (Direction.x * RawHorizontalInput < 0))
            nextState = PlayerCharacterStates.PlayerCharacter_Skidding;
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

        return nextState;
    }

    public override bool IsGroundState()
    {
        return true;
    }

}
