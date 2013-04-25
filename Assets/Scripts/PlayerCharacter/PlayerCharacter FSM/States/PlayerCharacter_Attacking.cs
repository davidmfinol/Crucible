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
        Controller.animation.CrossFade("Attacking");
        VerticalSpeed = GroundVerticalSpeed;
        _attackNumber = 0;
        _attackPressed = false;
    }

    protected override Enum OnUpdate()
    {
        PlayerCharacterStates nextState = PlayerCharacterStates.PlayerCharacter_Attacking;

        // Determine next state
        if (!IsGrounded)
            nextState = PlayerCharacterStates.PlayerCharacter_Falling;
        else if (_attackNumber == 0)
        {
            //HorizontalSpeed = 0;
            _attackPressed = _attackPressed || Input.GetButton("Primary");
            if (Duration > Controller.AttackDuration1)
            {
                //HorizontalSpeed = 30;
                if (!_attackPressed)
                    nextState = PlayerCharacterStates.PlayerCharacter_Idle;
                else
                {
                    _attackPressed = false;
                    _attackNumber++;
                }
            }

        }
        else if (_attackNumber == 1)
        {
            HorizontalSpeed = 2;
            _attackPressed = _attackPressed || Input.GetButton("Primary");
            if (Duration > Controller.AttackDuration2)
            {
                //HorizontalSpeed = 30;
                if (!_attackPressed)
                    nextState = PlayerCharacterStates.PlayerCharacter_Idle;
                else
                {
                    _attackPressed = false;
                    _attackNumber++;
                }
            }
        }
        else if (_attackNumber == 2)
        {
            HorizontalSpeed = 2;
            if (Duration > Controller.AttackDuration3)
            {
                //HorizontalSpeed = 30;
                nextState = PlayerCharacterStates.PlayerCharacter_Idle;
            }
        }
        return nextState;
    }

    public override bool IsGroundState()
    {
        return true;
    }
}
