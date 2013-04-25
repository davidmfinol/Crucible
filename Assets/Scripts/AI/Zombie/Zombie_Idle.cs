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
        VerticalSpeed = GroundVerticalSpeed;
        Direction = new Vector3(1, 0, 0);
    }

    protected override Enum OnUpdate()
    {
        ZombieStates nextState = ZombieStates.Zombie_Idle;

        HorizontalSpeed = 0;

        if (!IsGrounded)
            nextState = ZombieStates.Zombie_Falling;
        else if (Duration > 5)
            nextState = ZombieStates.Zombie_Moving;

        return nextState;
    }

}