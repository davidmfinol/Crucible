using UnityEngine;
using System;
using System.Collections;

public class Zombie_TransitioningZ : CharacterStateMachineState
{

    public Zombie_TransitioningZ(ZombieStateMachine controller) : base(controller) { }

    public override void StartState()
    {
    }

    protected override Enum OnUpdate()
    {
        ZombieStates nextState = ZombieStates.Zombie_TransitioningZ;

        return nextState;
    }
}