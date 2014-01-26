using UnityEngine;
using System;
using System.Collections;

/*
public class Enemy_Noticing : EnemyFSM_IState
{
    public Enemy_Noticing (EnemyFSM controller) : base(controller) { }

    public override void StartState()
    {
        base.StartState();
        FSM.animation["JumpFall"].wrapMode = WrapMode.Once;
        FSM.animation.CrossFade("JumpFall");
        FSM.EnemyAudioSource.PlayNotice();
        FSM.AwareOfPlayer = true;
        HorizontalSpeed = 0;
        VerticalSpeed = GroundVerticalSpeed;
    }

    protected override Enum OnUpdate()
    {
        EnemyStates nextState = EnemyStates.Enemy_Noticing;

        // Determine next state
        if (!IsGrounded)
            nextState = EnemyStates.Enemy_Falling;
        else if (!FSM.animation.IsPlaying("JumpFall"))
            nextState = EnemyStates.Enemy_Idle;

        return nextState;
    }
}*/