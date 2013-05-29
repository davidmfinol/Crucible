using UnityEngine;
using System;
using System.Collections;

public class PlayerCharacter_AttackCombo3 : PlayerCharacterStateMachineState
{
    private bool _attackPressed;
    private Weapon _weapon;

    public PlayerCharacter_AttackCombo3(PlayerCharacterStateMachine controller) : base(controller) { }

    protected override void OnStartState()
    {
        // Keep track of the weapon
        _attackPressed = false;
        _weapon = Controller.Weapon.GetComponent<Weapon>();
        _weapon.ActivateAttack(2);

        // Character Speed
        HorizontalSpeed = 2;
        VerticalSpeed = GroundVerticalSpeed;

        // Character Animation
        Controller.animation["AttackingLast"].wrapMode = WrapMode.Once;
        Controller.animation["AttackingLast"].time = 0;
        Controller.animation.CrossFade("AttackingLast");
    }

    protected override Enum OnUpdate()
    {
        // Simultaneously determine next state and do movement
        if (!IsGrounded)
            return PlayerCharacterStates.PlayerCharacter_Falling;

        if (Controller.animation["AttackingLast"].normalizedTime > 0.4f)
            HorizontalSpeed = 0.0f;
        if (!Controller.animation.IsPlaying("AttackingLast"))
            return PlayerCharacterStates.PlayerCharacter_Idle;

        return PlayerCharacterStates.PlayerCharacter_AttackCombo3;
    }

    public override bool IsGroundState()
    {
        return true;
    }

    protected override void OnExitState()
    {
        _weapon.Deactivate();
    }
}
