using UnityEngine;
using System;
using System.Collections;

/*
public class Zombie_Idle : ZombieFSM_IState
{
    public Zombie_Idle(ZombieFSM controller) : base(controller) { }

    public override void StartState()
    {
        base.StartState();
        FSM.animation.wrapMode = WrapMode.Loop;
        FSM.animation.CrossFade("Idle");
        if(FSM.ZombieAudioSource != null)
            FSM.ZombieAudioSource.PlayIdle();
        if(Left ^ Right)
            Direction = Right ? Vector3.right : Vector3.left;
        HorizontalSpeed = 0;
        VerticalSpeed = GroundVerticalSpeed;
    }

    protected override Enum OnUpdate()
    {
        ZombieStates nextState = ZombieStates.Zombie_Idle;

        if (!IsGrounded)
            nextState = ZombieStates.Zombie_Falling;
        else if (!FSM.AwareOfPlayer && FSM.PlayerIsInNoticeRange())
            nextState = ZombieStates.Zombie_Noticing;
        else if (Jump)
            nextState = ZombieStates.Zombie_Jumping;
        else if (Attack)
            nextState = ZombieStates.Zombie_Attacking;
        else if ((FSM.CanClimbPipe || FSM.CanClimbLadder) && (Up || Down))
            nextState = ZombieStates.Zombie_Climbing;
        else if ( ((Up && FSM.ZLevel != FSM.Z_Up) || (Down && FSM.ZLevel != FSM.Z_Down)) && FSM.CanTransitionZ)
            nextState = ZombieStates.Zombie_TransitioningZ;
        else if (Left || Right)
            nextState = ZombieStates.Zombie_Running;

        return nextState;
    }

}*/