using UnityEngine;
using System;
using System.Collections;

public class Zombie_TransitioningZ : CharacterFiniteStateMachineState
{

    public Zombie_TransitioningZ(ZombieFSM controller) : base(controller) { }

    public override void StartState()
    {
    }

    protected override Enum OnUpdate()
    {
        ZombieStates nextState = ZombieStates.Zombie_TransitioningZ;

        return nextState;
    }
}