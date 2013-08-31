using UnityEngine;
using System;
using System.Collections;

public class PlayerCharacter_AttackHold : PlayerCharacterFSM_IState
{
    private int _attackNumber;
    private bool _attackPressed;
    private AudioSource[] audioSources;

    public PlayerCharacter_AttackHold(PlayerCharacterFSM controller) : base(controller) { }

    protected override void OnStartState()
    {
        // Basic animation/movement stuff
        FSM.animation["AttackingFirst"].wrapMode = WrapMode.Once;
        FSM.animation.CrossFade("AttackingFirst");
        FSM.Whip.animation.CrossFade("Whip_Attack");
        _attackNumber = 1;
        _attackPressed = false;
        HorizontalSpeed = 0;
        VerticalSpeed = GroundVerticalSpeed;

        // Set up the hit boxes
        ActivateWhipHitBox(FSM.Whip, true);

        // Sound effects
        audioSources = FSM.Whip.GetComponents<AudioSource>();
        audioSources[0].Play(16000);
    }

    protected override Enum OnUpdate()
    {
        PlayerCharacterStates nextState = PlayerCharacterStates.PlayerCharacter_AttackHold;

        // Determine next state and do movement
        if (!IsGrounded)
            nextState = PlayerCharacterStates.PlayerCharacter_Falling;
        else if (_attackNumber == 1)
        {
            _attackPressed = _attackPressed || Input.GetButtonDown("Primary");
            if (FSM.animation["AttackingFirst"].normalizedTime > 0.6f)
            {
                HorizontalSpeed = 1;
            }
            if (!FSM.animation.IsPlaying("AttackingFirst"))
            {
                if (!_attackPressed)
                    nextState = PlayerCharacterStates.PlayerCharacter_Idle;
                else
                {
                    FSM.animation["AttackingSecond"].wrapMode = WrapMode.Once;
                    FSM.animation.CrossFade("AttackingSecond");
                    audioSources[1].Play();
                    _attackPressed = false;
                    _attackNumber++;
                }
            }

        }
        else if (_attackNumber == 2)
        {
            _attackPressed = _attackPressed || Input.GetButtonDown("Primary");
            HorizontalSpeed = 2;
            if (!FSM.animation.IsPlaying("AttackingSecond"))
            {
                if (!_attackPressed)
                    nextState = PlayerCharacterStates.PlayerCharacter_Idle;
                else
                {
                    FSM.animation["AttackingLast"].wrapMode = WrapMode.Once;
                    FSM.animation.CrossFade("AttackingLast");
                    audioSources[2].Play();
                    _attackPressed = false;
                    _attackNumber++;
                }
            }
        }
        else if (_attackNumber == 3)
        {
            HorizontalSpeed = 2;
            if (FSM.animation["AttackingLast"].normalizedTime > 0.4f)
                HorizontalSpeed = 0.0f;
            if (!FSM.animation.IsPlaying("AttackingLast"))
                nextState = PlayerCharacterStates.PlayerCharacter_Idle;
        }

        return nextState;
    }

    public override bool IsGroundState()
    {
        return true;
    }

    protected override void OnExitState()
    {
        FSM.Whip.animation["Whip_Idle"].time = 0;
        FSM.Whip.animation.Stop();
        FSM.Whip.animation.Play("Whip_Idle");
        ActivateWhipHitBox(FSM.Whip, false);
    }
    public void ActivateWhipHitBox(Transform current, bool active)
    {
        // activate the whip hitbox for the bone we're on
        BoxCollider collider = current.GetComponent<BoxCollider>();
        HitBox hitBox = current.GetComponent<HitBox>();
        if (collider != null && hitBox != null)
        {
            collider.enabled = active;
            hitBox.enabled = active;
        }

        // activate the whip hit box for all child bones
        for (int i = 0; i < current.GetChildCount(); ++i)
            ActivateWhipHitBox(current.GetChild(i), active);
    }
}
