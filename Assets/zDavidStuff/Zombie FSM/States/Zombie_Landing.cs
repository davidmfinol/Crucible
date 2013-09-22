using UnityEngine;
using System;
using System.Collections;

/*
public class Zombie_Landing : ZombieFSM_IState
{
    public Zombie_Landing(ZombieFSM controller) : base(controller) { }

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
        ZombieStates nextState = ZombieStates.Zombie_Landing;

        if (!IsGrounded)
            nextState = ZombieStates.Zombie_Falling;
        else if (Duration > FSM.LandingDuration)
            nextState = ZombieStates.Zombie_Idle;

        return nextState;
    }

}*/