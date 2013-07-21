using UnityEngine;
using System;
using System.Collections;

public class PlayerCharacter_AttackCombo1 : PlayerCharacterFSM_IState
{
    private bool _attackPressed;

    public PlayerCharacter_AttackCombo1(PlayerCharacterFSM controller) : base(controller) { }

    protected override void OnStartState()
    {
        // Keep track of the weapon
        _attackPressed = false;
        //_weapon = Controller.Weapon.GetComponent<Weapon>();
        Controller.Weapon.GetComponent<Weapon>().ActivateAttack(0);

        // Character Speed
        HorizontalSpeed = 0;
        VerticalSpeed = GroundVerticalSpeed;

        // Character Animation
        Controller.animation["AttackingFirst"].wrapMode = WrapMode.Once;
        Controller.animation["AttackingFirst"].time = 0;
        Controller.animation.CrossFade("AttackingFirst");
    }

    protected override Enum OnUpdate()
    {
        // Simultaneously determine next state and do movement
        if (!IsGrounded)
            return PlayerCharacterStates.PlayerCharacter_Falling;

        _attackPressed = _attackPressed || WeaponPrimaryDown;
        if (Controller.animation["AttackingFirst"].normalizedTime > 0.6f && Direction.x != 0)
            HorizontalSpeed = 1;
        if (!Controller.animation.IsPlaying("AttackingFirst"))
        {
            if (!_attackPressed)
                return PlayerCharacterStates.PlayerCharacter_Idle;
            else if (Controller.Weapon.GetComponent<Mine>() == null)
                return PlayerCharacterStates.PlayerCharacter_AttackCombo2;
            else
                return PlayerCharacterStates.PlayerCharacter_Idle;
        }

        return PlayerCharacterStates.PlayerCharacter_AttackCombo1;
    }

    protected override void OnExitState()
    {
		if(Controller.Weapon != null && Controller.Weapon.GetComponent<Weapon>() != null)
        	Controller.Weapon.GetComponent<Weapon>().Deactivate();
    }

    public override bool IsGroundState()
    {
        return true;
    }
}
