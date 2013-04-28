using UnityEngine;
using System;
using System.Collections;

public class Zombie_Attacking : CharacterStateMachineState
{
    public Zombie_Attacking(ZombieStateMachine controller) : base(controller) { }

    public override void StartState()
    {
        base.StartState();
        Controller.animation["Attacking"].wrapMode = WrapMode.Once;
        Controller.animation.CrossFade("Attacking");
        VerticalSpeed = GroundVerticalSpeed;
    }

    protected override Enum OnUpdate()
    {
        ZombieStates nextState = ZombieStates.Zombie_Attacking;

        // Do movement
        //TODO:

        // Determine next state
        if (!IsGrounded)
            nextState = ZombieStates.Zombie_Falling;
        else if(!Controller.animation.IsPlaying("Attacking"))
            nextState = ZombieStates.Zombie_Idle;

        return nextState;
    }

}