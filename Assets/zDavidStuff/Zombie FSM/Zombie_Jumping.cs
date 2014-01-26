using UnityEngine;
using System;
using System.Collections;

/*
public class Enemy_Jumping : EnemyFSM_IState
{
    public Enemy_Jumping(EnemyFSM controller) : base(controller) { }

    public override void StartState()
    {
        base.StartState();
        FSM.animation.wrapMode = WrapMode.Loop;
        FSM.animation.CrossFade("Jumping");
        VerticalSpeed = Mathf.Sqrt(2 * FSM.JumpHeight * FSM.Gravity);
    }

    protected override Enum OnUpdate()
    {
        EnemyStates nextState = EnemyStates.Enemy_Jumping;
		
		// Determine direction
		if(Left && !Right)
			Direction = Vector3.left;
		else if(Right && !Left)
			Direction = Vector3.right;
		else
			Direction = Vector3.zero;

        // Determine movement
        float targetRunSpeed = 0;
        if (Left ^ Right)
            targetRunSpeed = Right ? Direction.x * FSM.MaxHorizontalSpeed : -Direction.x * FSM.MaxHorizontalSpeed;
        HorizontalSpeed = FSM.ApplyRunning(targetRunSpeed);
        VerticalSpeed = FSM.ApplyGravity();

        // Determine next state
        if (Duration > 0 && IsGrounded)
            nextState = EnemyStates.Enemy_Landing;
        else if (VerticalSpeed < 0)
            nextState = EnemyStates.Enemy_Falling;
        else if (FSM.CanHangOffObject && Up)
            nextState = EnemyStates.Enemy_Hanging;
        else if (FSM.CanClimbPipe || FSM.CanClimbLadder)
            nextState = EnemyStates.Enemy_Climbing;

        return nextState;
    }

}*/