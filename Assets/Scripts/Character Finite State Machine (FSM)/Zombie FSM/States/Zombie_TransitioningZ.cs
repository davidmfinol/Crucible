using UnityEngine;
using System;
using System.Collections;

public class Zombie_TransitioningZ : ZombieFSM_IState
{

    public Zombie_TransitioningZ(ZombieFSM controller) : base(controller) { }

    public override void StartState()
    {
        base.StartState();
        if (Up ^ Down)
            FSM.ZLevel = Up ? FSM.Z_Up : FSM.Z_Down;
    }

    protected override Enum OnUpdate()
    {
        ZombieStates nextState = ZombieStates.Zombie_TransitioningZ;

        if (Duration > 1)
            nextState = ZombieStates.Zombie_Idle;

        return nextState;
    }
}