using UnityEngine;
using System;
using System.Collections;

public class PlayerCharacter_TransitioningZ : PlayerCharacterStateMachineState
{
    public PlayerCharacter_TransitioningZ(PlayerCharacterStateMachine controller) : base(controller) { }
    
    protected override void OnStartState()
    {
        if (IsGrounded)
        {
            Controller.animation["JumpingDownLeft"].wrapMode = WrapMode.Once;
            Controller.animation["JumpingDownRight"].wrapMode = WrapMode.Once;
            if (Direction.x < 0)
                Controller.animation.CrossFade("JumpingDownLeft");
            else if (Direction.x > 0)
                Controller.animation.CrossFade("JumpingDownRight");
        }
        else
            Controller.animation.CrossFade("JumpLanding");
    }
    

    protected override Enum OnUpdate()
    {
        PlayerCharacterStates nextState = PlayerCharacterStates.PlayerCharacter_TransitioningZ;

        // Pass-through Movement?

        // Determine next state
        if (!Controller.CanTransitionZ || Duration > Controller.ZTransitioningDuration)
            nextState = PlayerCharacterStates.PlayerCharacter_Idle;

        return nextState;
    }
}
