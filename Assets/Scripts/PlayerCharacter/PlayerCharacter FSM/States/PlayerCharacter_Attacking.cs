using UnityEngine;
using System;
using System.Collections;

public class PlayerCharacter_Attacking : PlayerCharacterStateMachineState
{
    private int _attackNumber;
    private bool _attackPressed;

    public PlayerCharacter_Attacking(PlayerCharacterStateMachine controller) : base(controller) { }

    protected override void OnStartState()
    {
        Controller.animation["AttackingFirst"].wrapMode = WrapMode.Once;
        Controller.animation.CrossFade("AttackingFirst");
        Controller.Whip.animation.CrossFade("Whip");
        _attackNumber = 1;
        _attackPressed = false;
        HorizontalSpeed = 0;
        VerticalSpeed = GroundVerticalSpeed;
    }

    protected override Enum OnUpdate()
    {
        PlayerCharacterStates nextState = PlayerCharacterStates.PlayerCharacter_Attacking;

        // Determine next state and do movement
        if (!IsGrounded)
            nextState = PlayerCharacterStates.PlayerCharacter_Falling;
        else if (_attackNumber == 1)
        {
            _attackPressed = _attackPressed || Input.GetButtonDown("Primary");
            if(Controller.animation["AttackingFirst"].normalizedTime > 0.6f)
                HorizontalSpeed = 1;
            if (!Controller.animation.IsPlaying("AttackingFirst"))
            {
                if (!_attackPressed)
                    nextState = PlayerCharacterStates.PlayerCharacter_Idle;
                else
                {
                    Controller.animation["AttackingSecond"].wrapMode = WrapMode.Once;
                    Controller.animation.CrossFade("AttackingSecond");
                    _attackPressed = false;
                    _attackNumber++;
                }
            }

        }
        else if (_attackNumber == 2)
        {
            _attackPressed = _attackPressed || Input.GetButtonDown("Primary");
            HorizontalSpeed = 2;
            if (!Controller.animation.IsPlaying("AttackingSecond"))
            {
                if (!_attackPressed)
                    nextState = PlayerCharacterStates.PlayerCharacter_Idle;
                else
                {
                    Controller.animation["AttackingLast"].wrapMode = WrapMode.Once;
                    Controller.animation.CrossFade("AttackingLast");
                    _attackPressed = false;
                    _attackNumber++;
                }
            }
        }
        else if (_attackNumber == 3)
        {
            HorizontalSpeed = 2;
            if (Controller.animation["AttackingLast"].normalizedTime > 0.4f)
                HorizontalSpeed = 0.0f;
            if (!Controller.animation.IsPlaying("AttackingLast"))
                nextState = PlayerCharacterStates.PlayerCharacter_Idle;
        }
        return nextState;
    }

    public override bool IsGroundState()
    {
        return true;
    }
}
