using UnityEngine;
using System;
using System.Collections;

/*
public class PlayerCharacter_TransitioningZ : PlayerCharacterFSM_IState
{
    public PlayerCharacter_TransitioningZ(PlayerCharacterFSM controller) : base(controller) { }
    
    protected override void OnStartState()
    {
        if (IsGrounded)
        {
            FSM.animation["JumpingDownLeft"].time = 0.0f;
            FSM.animation["JumpingDownRight"].time = 0.0f;
            FSM.animation["JumpingDownLeft"].speed = 1.5f;
            FSM.animation["JumpingDownRight"].speed =  1.5f;
            if (Direction.x < 0)
                FSM.animation.CrossFade("JumpingDownLeft");
            else if (Direction.x > 0)
                FSM.animation.CrossFade("JumpingDownRight");
        }
        else
            FSM.animation.CrossFade("JumpLanding");
        HorizontalSpeed = 0;
    }
    

    protected override Enum OnUpdate()
    {
        PlayerCharacterStates nextState = PlayerCharacterStates.PlayerCharacter_TransitioningZ;

        // Pass-through Movement?

        // Determine next state
        if (!FSM.CanTransitionZ || Duration > FSM.ZTransitioningDuration)
            nextState = PlayerCharacterStates.PlayerCharacter_Idle;

        return nextState;
    }
}
 */