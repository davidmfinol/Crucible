using UnityEngine;
using System;
using System.Collections;

public class Zombie_TransitioningZ : ZombieFSM_IState
{

    public Zombie_TransitioningZ(ZombieFSM controller) : base(controller) { }

    public override void StartState()
    {
        //TODO:
    }

    protected override Enum OnUpdate()
    {
        ZombieStates nextState = ZombieStates.Zombie_TransitioningZ;

        //TODO:
        return nextState;
    }
}