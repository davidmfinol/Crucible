using UnityEngine;
using System;
using System.Collections;

public class Zombie_Climbing : CharacterStateMachineState
{
    public Zombie_Climbing(ZombieStateMachine controller) : base(controller) { }

    public override void StartState()
    {
        base.StartState();
        Controller.animation.CrossFade("ClimbingUp");
    }

    protected override Enum OnUpdate()
    {
        ZombieStates nextState = ZombieStates.Zombie_Climbing;

        // TODO:

        return nextState;
    }

}