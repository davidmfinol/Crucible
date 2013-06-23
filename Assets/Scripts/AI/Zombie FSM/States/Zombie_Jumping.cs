using UnityEngine;
using System;
using System.Collections;

public class Zombie_Jumping : ZombieFSM_IState
{
    public Zombie_Jumping(ZombieFSM controller) : base(controller) { }

    public override void StartState()
    {
        base.StartState();
        Controller.animation.CrossFade("Jumping");
        VerticalSpeed = Mathf.Sqrt(2 * ((ZombieFSM)Controller).JumpHeight * Controller.Gravity);
    }

    protected override Enum OnUpdate()
    {
        ZombieStates nextState = ZombieStates.Zombie_Jumping;

        // Determine movement
        VerticalSpeed = Controller.ApplyGravity();

        // Determine next state
        if (IsGrounded)
            nextState = ZombieStates.Zombie_Landing;
        else if (VerticalSpeed < 0)
            nextState = ZombieStates.Zombie_Falling;

        return nextState;
    }

}