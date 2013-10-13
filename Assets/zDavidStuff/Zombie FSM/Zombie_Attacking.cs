using UnityEngine;
using System;
using System.Collections;

/*
public class Zombie_Attacking : ZombieFSM_IState
{
    public Zombie_Attacking(ZombieFSM controller) : base(controller) { }

    public override void StartState()
    {
        base.StartState();
        FSM.animation["Attacking"].wrapMode = WrapMode.Once;
        FSM.animation.CrossFade("Attacking");
        FSM.ZombieAudioSource.PlayAttack();
        // Direction does not change while attacking
        VerticalSpeed = GroundVerticalSpeed;
    }

    protected override Enum OnUpdate()
    {
        ZombieStates nextState = ZombieStates.Zombie_Attacking;

        // Do movement
        float targetSpeed = ((ZombieFSM)FSM).MaxHorizontalSpeed/2;
        if (FSM.animation["Attacking"].time > 0.2 && FSM.animation["Attacking"].time < 0.7)
            targetSpeed = ((ZombieFSM)FSM).MaxHorizontalSpeed;
        float accelerationSmoothing = ((ZombieFSM)FSM).HorizontalAcceleration * Time.deltaTime;
        HorizontalSpeed = Mathf.Lerp(HorizontalSpeed, targetSpeed, accelerationSmoothing);

        // Determine next state
        if (!IsGrounded)
            nextState = ZombieStates.Zombie_Falling;
        else if (Duration > FSM.AttackDuration)
        {
            if (Attack)
                nextState = ZombieStates.Zombie_Attacking;
            else if (Left || Right)
                nextState = ZombieStates.Zombie_Running;
            else
                nextState = ZombieStates.Zombie_Idle;
        }

        return nextState;
    }
}*/