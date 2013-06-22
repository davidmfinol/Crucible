using UnityEngine;
using System;
using System.Collections;

public class Zombie_TakingDamage : CharacterFiniteStateMachineState
{
    public Zombie_TakingDamage(ZombieFSM controller) : base(controller) { }

    public override void StartState()
    {
        base.StartState();
        Controller.animation["TakingDamage"].wrapMode = WrapMode.Once;
        Controller.animation["TakingDamage"].speed = 2.0f;
        Controller.animation.Stop();
        Controller.animation.Play("TakingDamage");
        VerticalSpeed = GroundVerticalSpeed;
    }

    protected override Enum OnUpdate()
    {
        ZombieStates nextState = ZombieStates.Zombie_TakingDamage;

        HorizontalSpeed = -1;
        VerticalSpeed = Controller.ApplyGravity();
        if (IsGrounded)
            VerticalSpeed = GroundVerticalSpeed;

        if (!IsGrounded)
            nextState = ZombieStates.Zombie_Falling;
        else if (!Controller.animation.IsPlaying("TakingDamage"))
            nextState = ZombieStates.Zombie_Idle;

        return nextState;
    }

}