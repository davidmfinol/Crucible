using UnityEngine;
using System;
using System.Collections;

public class Zombie_Running : ZombieFSM_IState
{
    public Zombie_Running(ZombieFSM controller) : base(controller) { }

    public override void StartState()
    {
        base.StartState();
        Controller.animation.CrossFade("Run");
        Controller.ZombieAudioSource.PlayRunning();
        VerticalSpeed = GroundVerticalSpeed;
    }

    protected override Enum OnUpdate()
    {
        ZombieStates nextState = ZombieStates.Zombie_Running;

        // Determine movement
        HorizontalSpeed = Controller.ApplyRunning(Controller.MaxHorizontalSpeed);

        // Determine next state
        if (!IsGrounded)
            nextState = ZombieStates.Zombie_Falling;
        else if ((Direction.x > 0 && !Right) || (Direction.x < 0 && !Left))
            nextState = ZombieStates.Zombie_Idle;

        return nextState;
    }
}
