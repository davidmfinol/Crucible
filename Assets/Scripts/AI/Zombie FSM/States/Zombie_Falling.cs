using UnityEngine;
using System;
using System.Collections;

public class Zombie_Falling : CharacterFiniteStateMachineState
{
    public Zombie_Falling(ZombieFSM controller) : base(controller) { }

    public override void StartState()
    {
        base.StartState();
        Controller.animation.CrossFade("Falling");
        VerticalSpeed = Controller.ApplyGravity();
    }

    protected override Enum OnUpdate()
    {
        ZombieStates nextState = ZombieStates.Zombie_Falling;

        // Determine movement
        VerticalSpeed = Controller.ApplyGravity();

        // Determine next state
        if (IsGrounded)
            nextState = ZombieStates.Zombie_Landing;

        return nextState;
    }

}