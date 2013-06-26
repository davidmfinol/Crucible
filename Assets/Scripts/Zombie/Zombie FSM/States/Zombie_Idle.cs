using UnityEngine;
using System;
using System.Collections;

public class Zombie_Idle : ZombieFSM_IState
{
    public Zombie_Idle(ZombieFSM controller) : base(controller) { }

    public override void StartState()
    {
        base.StartState();
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

        Debug.Log("Spent a frame idling");

        if (!IsGrounded)
            nextState = ZombieStates.Zombie_Falling;
        else if (Controller.PlayerIsInNoticeRange())
            nextState = ZombieStates.Zombie_Noticing;
        else if (Jump)
            nextState = ZombieStates.Zombie_Jumping;
        else if ((Up || Down) && Controller.CanTransitionZ)
            nextState = ZombieStates.Zombie_TransitioningZ;
        else if(Left || Right)
            nextState = ZombieStates.Zombie_Running;

        return nextState;
    }

}