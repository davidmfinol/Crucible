using UnityEngine;
using System;
using System.Collections;

/*
public class Enemy_TakingDamage : EnemyFSM_IState
{
    public Enemy_TakingDamage(EnemyFSM controller) : base(controller) { }

    public override void StartState()
    {
        base.StartState();
        FSM.animation["TakingDamage"].wrapMode = WrapMode.Once;
        FSM.animation["TakingDamage"].speed = 2.0f;
        FSM.animation.Stop();
        FSM.animation.Play("TakingDamage");
        FSM.EnemyAudioSource.PlayAttack();
        VerticalSpeed = GroundVerticalSpeed;
    }

    protected override Enum OnUpdate()
    {
        EnemyStates nextState = EnemyStates.Enemy_TakingDamage;

        HorizontalSpeed = -1;
        VerticalSpeed = FSM.ApplyGravity();
        if (IsGrounded)
            VerticalSpeed = GroundVerticalSpeed;

        if (!IsGrounded)
            nextState = EnemyStates.Enemy_Falling;
        else if (!FSM.animation.IsPlaying("TakingDamage"))
            nextState = EnemyStates.Enemy_Idle;

        return nextState;
    }

}
*/