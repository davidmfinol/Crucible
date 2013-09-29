using UnityEngine;
using System;
using System.Collections;
using System.Collections.Generic;

/*
public class PlayerCharacter_Idle : PlayerCharacterFSM_IState
{
    private bool _idle2ShouldPlay;
    public PlayerCharacter_Idle(PlayerCharacterFSM controller) : base(controller) { }

    protected override void OnStartState()
    {
        FSM.animation["Idle_001"].time = 0;
        FSM.animation.CrossFade("Idle_001");
        _idle2ShouldPlay = false;
        HorizontalSpeed = 0.0f;
    }

    protected override Enum OnUpdate()
    {
        PlayerCharacterStates nextState = PlayerCharacterStates.PlayerCharacter_Idle;

        // Process Animations
        if (((int)Duration) % 10 == 0 && !_idle2ShouldPlay)
        {
            _idle2ShouldPlay = true;
            FSM.animation["Idle2"].time = 0;
            FSM.animation.CrossFade("Idle2");
        }
        if (((int)Duration) % 12 == 0 && _idle2ShouldPlay)
        {
            _idle2ShouldPlay = false;
            FSM.animation["Idle_001"].time = 0;
            FSM.animation.CrossFade("Idle_001");
        }

        // Determine movement
        if (!IsPlayerInputZero(RawHorizontalInput))
            Direction = new Vector3(RawHorizontalInput, 0, 0);
        else if (UpHold)
            Direction = Vector3.zero;

        // Determine next state
        if (WeaponPrimaryDown && FSM.Weapon.GetComponent<Mine>() == null)
            nextState = PlayerCharacterStates.PlayerCharacter_AttackCombo1;
        if (!IsGrounded)
            nextState = PlayerCharacterStates.PlayerCharacter_Falling;
        else if (FSM.CanClimbLadder && (UpDown || DownDown))
            nextState = PlayerCharacterStates.PlayerCharacter_ClimbingLadder;
        else if (FSM.CanClimbPipe && (UpDown || DownDown))
            nextState = PlayerCharacterStates.PlayerCharacter_ClimbingPipe;
        else if (JumpDown)
            nextState = PlayerCharacterStates.PlayerCharacter_Jumping;
        else if (!(IsPlayerInputZero(RawHorizontalInput)))
            nextState = PlayerCharacterStates.PlayerCharacter_Stepping;
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
 */