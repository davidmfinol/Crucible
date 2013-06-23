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
        Controller.ZombieAudioSource.PlayIdle();
        Direction = LevelAttributes.Instance.Player.transform.position.x > Controller.transform.position.x ? Vector3.right : Vector3.left;
        HorizontalSpeed = 0;
        VerticalSpeed = GroundVerticalSpeed;
    }

    protected override Enum OnUpdate()
    {
        ZombieStates nextState = ZombieStates.Zombie_Idle;

        if (!IsGrounded)
            nextState = ZombieStates.Zombie_Falling;
        else if (Controller.PlayerIsInRange())
            nextState = ZombieStates.Zombie_Noticing;
        else
            nextState = ZombieStates.Zombie_Running;

        return nextState;
    }

}