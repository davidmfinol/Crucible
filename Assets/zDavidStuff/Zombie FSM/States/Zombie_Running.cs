using UnityEngine;
using System;
using System.Collections;

/*
public class Zombie_Running : ZombieFSM_IState
{
    public Zombie_Running(ZombieFSM controller) : base(controller) { }

    public override void StartState()
    {
        base.StartState();
        FSM.animation.CrossFade("Run");
        FSM.ZombieAudioSource.PlayRunning();
        VerticalSpeed = GroundVerticalSpeed;
    }

    protected override Enum OnUpdate()
    {
        ZombieStates nextState = ZombieStates.Zombie_Running;

        // Determine movement
        HorizontalSpeed = FSM.ApplyRunning(FSM.MaxHorizontalSpeed);

        // Determine next state
        if (!IsGrounded)
            nextState = ZombieStates.Zombie_Falling;
        else if (Attack)
            nextState = ZombieStates.Zombie_Attacking;
        else if (Jump)
            nextState = ZombieStates.Zombie_Jumping;
        else if (((Up && FSM.ZLevel != FSM.Z_Up) || (Down && FSM.ZLevel != FSM.Z_Down)) && FSM.CanTransitionZ)
            nextState = ZombieStates.Zombie_TransitioningZ;
        else if ((Direction.x > 0 && !Right) || (Direction.x < 0 && !Left))
            nextState = ZombieStates.Zombie_Idle;

        return nextState;
    }
}
 */