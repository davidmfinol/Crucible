using UnityEngine;
using System;
using System.Collections;

/*
public class Enemy_Attacking : EnemyFSM_IState
{
    public Enemy_Attacking(EnemyFSM controller) : base(controller) { }

    public override void StartState()
    {
        base.StartState();
        FSM.animation["Attacking"].wrapMode = WrapMode.Once;
        FSM.animation.CrossFade("Attacking");
        FSM.EnemyAudioSource.PlayAttack();
        // Direction does not change while attacking
        VerticalSpeed = GroundVerticalSpeed;
    }

    protected override Enum OnUpdate()
    {
        EnemyStates nextState = EnemyStates.Enemy_Attacking;

        // Do movement
        float targetSpeed = ((EnemyFSM)FSM).MaxHorizontalSpeed/2;
        if (FSM.animation["Attacking"].time > 0.2 && FSM.animation["Attacking"].time < 0.7)
            targetSpeed = ((EnemyFSM)FSM).MaxHorizontalSpeed;
        float accelerationSmoothing = ((EnemyFSM)FSM).HorizontalAcceleration * Time.deltaTime;
        HorizontalSpeed = Mathf.Lerp(HorizontalSpeed, targetSpeed, accelerationSmoothing);

        // Determine next state
        if (!IsGrounded)
            nextState = EnemyStates.Enemy_Falling;
        else if (Duration > FSM.AttackDuration)
        {
            if (Attack)
                nextState = EnemyStates.Enemy_Attacking;
            else if (Left || Right)
                nextState = EnemyStates.Enemy_Running;
            else
                nextState = EnemyStates.Enemy_Idle;
        }

        return nextState;
    }
}*/