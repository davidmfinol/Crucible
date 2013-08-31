using UnityEngine;
using System;
using System.Collections;

public class Zombie_TakingDamage : ZombieFSM_IState
{
    public Zombie_TakingDamage(ZombieFSM controller) : base(controller) { }

    public override void StartState()
    {
        base.StartState();
        FSM.animation["TakingDamage"].wrapMode = WrapMode.Once;
        FSM.animation["TakingDamage"].speed = 2.0f;
        FSM.animation.Stop();
        FSM.animation.Play("TakingDamage");
        FSM.ZombieAudioSource.PlayAttack();
        VerticalSpeed = GroundVerticalSpeed;
    }

    protected override Enum OnUpdate()
    {
        ZombieStates nextState = ZombieStates.Zombie_TakingDamage;

        HorizontalSpeed = -1;
        VerticalSpeed = FSM.ApplyGravity();
        if (IsGrounded)
            VerticalSpeed = GroundVerticalSpeed;

        if (!IsGrounded)
            nextState = ZombieStates.Zombie_Falling;
        else if (!FSM.animation.IsPlaying("TakingDamage"))
            nextState = ZombieStates.Zombie_Idle;

        return nextState;
    }

}