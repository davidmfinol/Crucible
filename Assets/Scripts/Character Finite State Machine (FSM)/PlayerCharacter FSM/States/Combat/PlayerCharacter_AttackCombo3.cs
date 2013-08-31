using UnityEngine;
using System;
using System.Collections;

public class PlayerCharacter_AttackCombo3 : PlayerCharacterFSM_IState
{
    private Weapon _weapon;

    public PlayerCharacter_AttackCombo3(PlayerCharacterFSM controller) : base(controller) { }

    protected override void OnStartState()
    {
        // Keep track of the weapon
        _weapon = FSM.Weapon.GetComponent<Weapon>();
        _weapon.ActivateAttack(2);

        // Character Speed
        if (Direction.x != 0)
            HorizontalSpeed = 2;
        VerticalSpeed = GroundVerticalSpeed;

        // Character Animation
        FSM.animation["AttackingLast"].wrapMode = WrapMode.Once;
        FSM.animation["AttackingLast"].time = 0;
        FSM.animation.CrossFade("AttackingLast");
    }

    protected override Enum OnUpdate()
    {
        // Simultaneously determine next state and do movement
        if (!IsGrounded)
            return PlayerCharacterStates.PlayerCharacter_Falling;

        if (FSM.animation["AttackingLast"].normalizedTime > 0.4f)
            HorizontalSpeed = 0.0f;
        if (!FSM.animation.IsPlaying("AttackingLast"))
            return PlayerCharacterStates.PlayerCharacter_Idle;

        return PlayerCharacterStates.PlayerCharacter_AttackCombo3;
    }

    public override bool IsGroundState()
    {
        return true;
    }

    protected override void OnExitState()
    {
		if(FSM.Weapon != null && FSM.Weapon.GetComponent<Weapon>() != null)
        	FSM.Weapon.GetComponent<Weapon>().Deactivate();
    }
}
