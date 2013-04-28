using UnityEngine;
using System;
using System.Collections;

public class Zombie_Falling : CharacterStateMachineState
{
    public Zombie_Falling(ZombieStateMachine controller) : base(controller) { }

    public override void StartState()
    {
        base.StartState();
        Controller.animation.CrossFade("Falling");
    }

    protected override Enum OnUpdate()
    {
        ZombieStates nextState = ZombieStates.Zombie_Falling;

        VerticalSpeed = Controller.ApplyGravity();

        if (IsGrounded)
            nextState = ZombieStates.Zombie_Landing;

        return nextState;
    }

}