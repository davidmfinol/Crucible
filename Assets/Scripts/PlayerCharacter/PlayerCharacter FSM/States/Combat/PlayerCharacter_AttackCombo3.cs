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
        // Basic animation/movement stuff
        Controller.animation["AttackingFirst"].wrapMode = WrapMode.Once;
        Controller.animation.CrossFade("AttackingFirst");
        Controller.Whip.animation.CrossFade("Whip_Attack");
        _attackPressed = false;
        HorizontalSpeed = 0;
        VerticalSpeed = GroundVerticalSpeed;

        // Set up the hit boxes
        //ActivateWhipHitBox(Controller.Whip, true);

        // Sound effects
        //audioSources = Controller.Whip.GetComponents<AudioSource>();
        //audioSources[0].Play(16000);
    }

    protected override Enum OnUpdate()
    {
        // Simultaneously determine next state and do movement
        if (!IsGrounded)
            return PlayerCharacterStates.PlayerCharacter_Falling;

        HorizontalSpeed = 2;
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
        Controller.Whip.animation["Whip_Idle"].time = 0;
        Controller.Whip.animation.Stop();
        Controller.Whip.animation.Play("Whip_Idle");
        //ActivateWhipHitBox(Controller.Whip, false);
    }
}
