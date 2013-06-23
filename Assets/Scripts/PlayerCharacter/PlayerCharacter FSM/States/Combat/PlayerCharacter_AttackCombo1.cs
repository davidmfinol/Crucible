using UnityEngine;
using System;
using System.Collections;

public class PlayerCharacter_AttackCombo1 : PlayerCharacterFSM_IState
{
    private bool _attackPressed;
    private Weapon _weapon;

    public PlayerCharacter_AttackCombo1(PlayerCharacterFSM controller) : base(controller) { }

    protected override void OnStartState()
    {
        // Keep track of the weapon
        _attackPressed = false;
        _weapon = Controller.Weapon.GetComponent<Weapon>();
        _weapon.ActivateAttack(0);

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
        if (Controller.animation["AttackingFirst"].normalizedTime > 0.6f)
            HorizontalSpeed = 1;
        if (!Controller.animation.IsPlaying("AttackingFirst"))
        {
            if (!_attackPressed)
                return PlayerCharacterStates.PlayerCharacter_Idle;
            else
                return PlayerCharacterStates.PlayerCharacter_AttackCombo2;
        }

        return PlayerCharacterStates.PlayerCharacter_AttackCombo1;
    }

    protected override void OnExitState()
    {
        _weapon.Deactivate();
    }

    public override bool IsGroundState()
    {
        return true;
    }
}
