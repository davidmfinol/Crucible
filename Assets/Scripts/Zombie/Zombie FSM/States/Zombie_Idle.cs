using UnityEngine;
using System;
using System.Collections;

public class Zombie_Idle : ZombieFSM_IState
{
    public Zombie_Idle(ZombieFSM controller) : base(controller) { }

    public override void StartState()
    {
        base.StartState();
        Controller.animation.wrapMode = WrapMode.Loop;
        Controller.animation.CrossFade("Idle");
        if(Controller.ZombieAudioSource != null)
            Controller.ZombieAudioSource.PlayIdle();
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
        else if (!Controller.AwareOfPlayer && Controller.PlayerIsInNoticeRange())
            nextState = ZombieStates.Zombie_Noticing;
        else if (Jump)
            nextState = ZombieStates.Zombie_Jumping;
        else if ( ((Up && Controller.ZLevel != Controller.Z_Up) || (Down && Controller.ZLevel != Controller.Z_Down)) && Controller.CanTransitionZ)
            nextState = ZombieStates.Zombie_TransitioningZ;
        else if ((Controller.CanClimbPipe || Controller.CanClimbLadder) && (Up || Down))
            nextState = ZombieStates.Zombie_Climbing;
        else if (Left || Right)
            nextState = ZombieStates.Zombie_Running;

        return nextState;
    }

}