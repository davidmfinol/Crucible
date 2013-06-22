using UnityEngine;
using System;
using System.Collections;

public class PlayerCharacter_AttackCombo2 : PlayerCharacterFSM_IState
{
    private bool _attackPressed;
    private Weapon _weapon;

    public PlayerCharacter_AttackCombo2(PlayerCharacterFSM controller) : base(controller) { }

    protected override void OnStartState()
    {
        // Keep track of the weapon
        _attackPressed = false;
        _weapon = Controller.Weapon.GetComponent<Weapon>();
        _weapon.ActivateAttack(1);

        // Character Speed
        HorizontalSpeed = 2;
        VerticalSpeed = GroundVerticalSpeed;

        // Character Animation
        Controller.animation["AttackingSecond"].wrapMode = WrapMode.Once;
        Controller.animation["AttackingSecond"].time = 0;
        Controller.animation.CrossFade("AttackingSecond");
    }

    protected override Enum OnUpdate()
    {
        // Simultaneously determine next state and do movement
        if (!IsGrounded)
            return PlayerCharacterStates.PlayerCharacter_Falling;

        _attackPressed = _attackPressed || PrimaryWeaponDown;
        if (!Controller.animation.IsPlaying("AttackingSecond"))
        {
            if (!_attackPressed)
                return PlayerCharacterStates.PlayerCharacter_Idle;
            else
                return PlayerCharacterStates.PlayerCharacter_AttackCombo3;
        }

        return PlayerCharacterStates.PlayerCharacter_AttackCombo2;
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
