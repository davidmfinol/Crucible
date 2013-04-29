using UnityEngine;
using System;
using System.Collections;

public class Zombie_TakingDamage : CharacterStateMachineState
{
    public Zombie_TakingDamage(ZombieStateMachine controller) : base(controller) { }

    public override void StartState()
    {
        base.StartState();
        Controller.animation["TakingDamage"].wrapMode = WrapMode.Once;
        Controller.animation["TakingDamage"].speed = 2.0f;
        Controller.animation.CrossFade("TakingDamage");
        VerticalSpeed = GroundVerticalSpeed;
    }

    protected override Enum OnUpdate()
    {
        ZombieStates nextState = ZombieStates.Zombie_TakingDamage;

        if (!IsGrounded)
            nextState = ZombieStates.Zombie_Falling;
        else if (!Controller.animation.IsPlaying("TakingDamage"))
            nextState = ZombieStates.Zombie_Idle;

        return nextState;
    }

}