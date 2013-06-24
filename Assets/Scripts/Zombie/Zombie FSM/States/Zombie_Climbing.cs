using UnityEngine;
using System;
using System.Collections;

public class Zombie_Climbing : ZombieFSM_IState
{
    public Zombie_Climbing(ZombieFSM controller) : base(controller) { }

    public override void StartState()
    {
        base.StartState();
        Controller.animation.CrossFade("ClimbingUp");
        Controller.ZombieAudioSource.PlayRunning();
    }

    protected override Enum OnUpdate()
    {
        ZombieStates nextState = ZombieStates.Zombie_Climbing;

        // TODO:

        return nextState;
    }

}