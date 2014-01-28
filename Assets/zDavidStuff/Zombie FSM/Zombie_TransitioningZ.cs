using UnityEngine;
using System;
using System.Collections;

/*
public class Enemy_TransitioningZ : EnemyFSM_IState
{

    public Enemy_TransitioningZ(EnemyFSM controller) : base(controller) { }

    public override void StartState()
    {
        base.StartState();
        if (Up ^ Down)
            FSM.ZLevel = Up ? FSM.Z_Up : FSM.Z_Down;
    }

    protected override Enum OnUpdate()
    {
        EnemyStates nextState = EnemyStates.Enemy_TransitioningZ;

        if (Duration > 1)
            nextState = EnemyStates.Enemy_Idle;

        return nextState;
    }
}*/