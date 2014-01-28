using UnityEngine;
using System;
using System.Collections;

/*
public class Enemy_Landing : EnemyFSM_IState
{
    public Enemy_Landing(EnemyFSM controller) : base(controller) { }

    public override void StartState()
    {
        base.StartState();
        FSM.animation["JumpLanding"].speed = 10; //TODO: MAYBE A BETTER WAY?
        FSM.animation["JumpLanding"].wrapMode = WrapMode.Once;
        FSM.animation.CrossFade("JumpLanding");
        HorizontalSpeed = 0;
        VerticalSpeed = GroundVerticalSpeed;
    }

    protected override Enum OnUpdate()
    {
        EnemyStates nextState = EnemyStates.Enemy_Landing;

        if (!IsGrounded)
            nextState = EnemyStates.Enemy_Falling;
        else if (Duration > FSM.LandingDuration)
            nextState = EnemyStates.Enemy_Idle;

        return nextState;
    }

}*/