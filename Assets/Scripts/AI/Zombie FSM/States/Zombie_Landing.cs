using UnityEngine;
using System;
using System.Collections;

public class Zombie_Landing : CharacterFiniteStateMachineState
{
    public Zombie_Landing(ZombieFSM controller) : base(controller) { }

    public override void StartState()
    {
        base.StartState();
        Controller.animation["JumpLanding"].wrapMode = WrapMode.Once;
        Controller.animation.CrossFade("JumpLanding");
        VerticalSpeed = GroundVerticalSpeed;
    }

    protected override Enum OnUpdate()
    {
        ZombieStates nextState = ZombieStates.Zombie_Landing;

        if (!IsGrounded)
            nextState = ZombieStates.Zombie_Falling;
        else if (!Controller.animation.IsPlaying("JumpLanding"))
            nextState = ZombieStates.Zombie_Idle;

        return nextState;
    }

}