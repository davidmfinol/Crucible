using UnityEngine;
using System;
using System.Collections;

public class Zombie_Idle : CharacterStateMachineState
{
    public Zombie_Idle(ZombieStateMachine controller) : base(controller) { }

    public override void StartState()
    {
        base.StartState();
        Controller.animation.CrossFade("Idle");
        Direction = Vector3.right;
        HorizontalSpeed = 0;
        VerticalSpeed = GroundVerticalSpeed;
    }

    protected override Enum OnUpdate()
    {
        ZombieStates nextState = ZombieStates.Zombie_Idle;

        if (!IsGrounded)
            nextState = ZombieStates.Zombie_Falling;
        else if (Duration > 5)
            nextState = ZombieStates.Zombie_Running;

        return nextState;
    }

}