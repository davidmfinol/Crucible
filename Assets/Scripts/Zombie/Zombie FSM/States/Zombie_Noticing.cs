using UnityEngine;
using System;
using System.Collections;

public class Zombie_Noticing : ZombieFSM_IState
{
    public Zombie_Noticing (ZombieFSM controller) : base(controller) { }

    public override void StartState()
    {
        base.StartState();
        Controller.animation["JumpFall"].wrapMode = WrapMode.Once;
        Controller.animation.CrossFade("JumpFall");
        Controller.ZombieAudioSource.PlayNotice();
        Controller.AwareOfPlayer = true;
        HorizontalSpeed = 0;
        VerticalSpeed = GroundVerticalSpeed;
    }

    protected override Enum OnUpdate()
    {
        ZombieStates nextState = ZombieStates.Zombie_Noticing;

        // Determine next state
        if (!IsGrounded)
            nextState = ZombieStates.Zombie_Falling;
        else if (!Controller.animation.IsPlaying("JumpFall"))
            nextState = ZombieStates.Zombie_Idle;

        return nextState;
    }
}