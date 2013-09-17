using UnityEngine;
using System;
using System.Collections;
using System.Collections.Generic;

/*
/// <summary>
/// PlayerCharacterFSM_IState is used to define the states of the FSM that handles the input and movement of players.
/// Every state possible is a subclass of this abstract class.
/// The finite state machine (PlayerCharacterFSM) processes each state by calling its Update() method.
/// </summary>
public abstract class PlayerCharacterFSM_IState : CharacterFiniteStateMachineState
{

    /// <summary>
    /// Because of the way we're storing states (see PlayerCharacterFSM), we need a way to simulate creating a new state
    /// </summary>
    sealed public override void StartState()
    {
        base.StartState();

        if (IsGroundState())
        {
            VerticalSpeed = GroundVerticalSpeed;
            HasDoubleJumped = false;
            FSM.PreviousHangTarget = null;
        }
        
        OnStartState();
    }

    sealed public override Enum Update()
    {
		
		// FIXME: There should be a better way to do this.
        Weapon weapon = FSM.Weapon.GetComponent<Weapon>();
        if (WeaponPrimaryDown && weapon is Mine)
            weapon.ActivateAttack(0);
        if (SecondaryWeaponDown && weapon is Mine)
            weapon.ActivateAttack(1);
    }

    protected virtual void OnExitState() {}

    public override bool ShouldMoveWithPlatform()
    {
        //return IsWallHangState() || (IsGroundState() && IsGrounded);
        return true;
    }

    public virtual bool IsGroundState()
    {
        return false;
    }
    public virtual bool IsWallHangState()
    {
        return false;
    }

    // Helper Methods

    /// <summary>
    /// Comparing a player's input float directly to zero can be bad, so here's a helper
    /// </summary>
    protected bool IsPlayerInputZero(float input)
    {
        return Mathf.Abs(input) < 0.1f;
    }
    // Properties
    protected bool HasDoubleJumped
    {
        get { return FSM.HasDoubleJumped; }
        set { FSM.HasDoubleJumped = value; }
    }


    public bool ShouldTransitionZ_Down
    {
        get { return DownHold && FSM.CanTransitionZ && FSM.ZLevel != FSM.Z_Down; }
    }

    public bool ShouldTransitionZ_Up
    {
        get { return UpHold && FSM.CanTransitionZ && FSM.ZLevel != FSM.Z_Up; }
    }
    
}

*/