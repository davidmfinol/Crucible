using UnityEngine;
using System;
using System.Collections;

/*
public class Enemy_Hanging : EnemyFSM_IState
{
    private bool _continueHolding;
	
    public Enemy_Hanging(EnemyFSM controller) : base(controller) { }

    public override void StartState()
    {
        base.StartState();
        _continueHolding = false;
        FSM.animation.wrapMode = WrapMode.Loop;
        FSM.animation.CrossFade("ClimbingUp");

        VerticalSpeed = 0.0f;
        if (FSM.ActiveHangTarget.DoesFaceZAxis())
        {
            HorizontalSpeed = 0.0f;
            Direction = Vector3.zero;
        }
        else
        {
            HorizontalSpeed = FSM.MaxHorizontalSpeed;
            if (FSM.IsHangTargetToRight)
                Direction = Vector3.right;
            else
                Direction = Vector3.left;
        }

    }

    protected override Enum OnUpdate()
    {
        EnemyStates nextState = EnemyStates.Enemy_Hanging;

        // Allow us to move with the target
        if (FSM.ActiveHangTarget != null)
            FSM.ActivePlatform = FSM.ActiveHangTarget.transform;

        // Determine next state
        if (FSM.ActiveHangTarget is Ledge && (Up || Right || Left))
        {
            _continueHolding = true;
            nextState = EnemyStates.Enemy_ClimbingLedge;
        }
        else if (Jump)
            nextState = EnemyStates.Enemy_Jumping;
        else if (Down)
            nextState = EnemyStates.Enemy_Falling;

        return nextState;
    }

    public override void ExitState()
    {
        base.ExitState();
        if (!_continueHolding)
            FSM.DropHangTarget();
    }
}
 */