using UnityEngine;
using System;
using System.Collections;
using System.Collections.Generic;

public class PlayerCharacter_Idle : PlayerCharacterStateMachineState
{
    private bool _idle2;
    public PlayerCharacter_Idle(PlayerCharacterStateMachine controller) : base(controller) { }

    protected override void OnStartState()
    {
        Controller.animation["Idle_001"].time = 0;
        Controller.animation.CrossFade("Idle_001");
        _idle2 = false;
        HorizontalSpeed = 0.0f;
    }

    protected override Enum OnUpdate()
    {
        PlayerCharacterStates nextState = PlayerCharacterStates.PlayerCharacter_Idle;

        // Process Animations
        if (((int)Duration) % 10 == 0 && !_idle2)
        {
            _idle2 = true;
            Controller.animation["Idle2"].time = 0;
            Controller.animation.CrossFade("Idle2");
        }
        if (((int)Duration) % 12 == 0 && _idle2)
        {
            _idle2 = false;
            Controller.animation["Idle_001"].time = 0;
            Controller.animation.CrossFade("Idle_001");
        }

        // Determine movement
        if (!IsPlayerInputZero(RawHorizontalInput))
            Direction = new Vector3(RawHorizontalInput, 0, 0);
        else if (UpHold)
            Direction = Vector3.zero;

        // Determine next state
        if (Input.GetButton("Primary"))
            nextState = PlayerCharacterStates.PlayerCharacter_Attacking;
        if (!IsGrounded)
            nextState = PlayerCharacterStates.PlayerCharacter_Falling;
        else if (Controller.CanClimbObject && (UpDown || DownDown))
            nextState = PlayerCharacterStates.PlayerCharacter_ClimbingUp;
        else if (JumpDown)
            nextState = PlayerCharacterStates.PlayerCharacter_Jumping;
        else if (!(IsPlayerInputZero(RawHorizontalInput)))
            nextState = PlayerCharacterStates.PlayerCharacter_Stepping;
        else if (ShouldTransitionZ_Down)
        {
            Controller.ZLevel = Controller.Z_Down;
            VerticalSpeed = GroundVerticalSpeed;
            nextState = PlayerCharacterStates.PlayerCharacter_TransitioningZ;
        }
        else if (ShouldTransitionZ_Up)
        {
            Controller.ZLevel = Controller.Z_Up;
            VerticalSpeed = 0;
            nextState = PlayerCharacterStates.PlayerCharacter_TransitioningZ;
        }

        return nextState;
    }

    public override bool IsGroundState()
    {
        return true;
    }
}
