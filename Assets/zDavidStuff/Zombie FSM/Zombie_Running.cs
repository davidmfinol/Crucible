using UnityEngine;
using System;
using System.Collections;

/*
public class Enemy_Running : EnemyFSM_IState
{
    public Enemy_Running(EnemyFSM controller) : base(controller) { }

    public override void StartState()
    {
        base.StartState();
        FSM.animation.CrossFade("Run");
        FSM.EnemyAudioSource.PlayRunning();
        VerticalSpeed = GroundVerticalSpeed;
    }

    protected override Enum OnUpdate()
    {
        EnemyStates nextState = EnemyStates.Enemy_Running;

        // Determine movement
        HorizontalSpeed = FSM.ApplyRunning(FSM.MaxHorizontalSpeed);

        // Determine next state
        if (!IsGrounded)
            nextState = EnemyStates.Enemy_Falling;
        else if (Attack)
            nextState = EnemyStates.Enemy_Attacking;
        else if (Jump)
            nextState = EnemyStates.Enemy_Jumping;
        else if (((Up && FSM.ZLevel != FSM.Z_Up) || (Down && FSM.ZLevel != FSM.Z_Down)) && FSM.CanTransitionZ)
            nextState = EnemyStates.Enemy_TransitioningZ;
        else if ((Direction.x > 0 && !Right) || (Direction.x < 0 && !Left))
            nextState = EnemyStates.Enemy_Idle;

        return nextState;
    }
}
 */