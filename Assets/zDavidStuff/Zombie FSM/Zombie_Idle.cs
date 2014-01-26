using UnityEngine;
using System;
using System.Collections;

/*
public class Enemy_Idle : EnemyFSM_IState
{
    public Enemy_Idle(EnemyFSM controller) : base(controller) { }

    public override void StartState()
    {
        base.StartState();
        FSM.animation.wrapMode = WrapMode.Loop;
        FSM.animation.CrossFade("Idle");
        if(FSM.EnemyAudioSource != null)
            FSM.EnemyAudioSource.PlayIdle();
        if(Left ^ Right)
            Direction = Right ? Vector3.right : Vector3.left;
        HorizontalSpeed = 0;
        VerticalSpeed = GroundVerticalSpeed;
    }

    protected override Enum OnUpdate()
    {
        EnemyStates nextState = EnemyStates.Enemy_Idle;

        if (!IsGrounded)
            nextState = EnemyStates.Enemy_Falling;
        else if (!FSM.AwareOfPlayer && FSM.PlayerIsInNoticeRange())
            nextState = EnemyStates.Enemy_Noticing;
        else if (Jump)
            nextState = EnemyStates.Enemy_Jumping;
        else if (Attack)
            nextState = EnemyStates.Enemy_Attacking;
        else if ((FSM.CanClimbPipe || FSM.CanClimbLadder) && (Up || Down))
            nextState = EnemyStates.Enemy_Climbing;
        else if ( ((Up && FSM.ZLevel != FSM.Z_Up) || (Down && FSM.ZLevel != FSM.Z_Down)) && FSM.CanTransitionZ)
            nextState = EnemyStates.Enemy_TransitioningZ;
        else if (Left || Right)
            nextState = EnemyStates.Enemy_Running;

        return nextState;
    }

}*/