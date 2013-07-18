using UnityEngine;
using System;
using System.Collections;

public class Zombie_Jumping : ZombieFSM_IState
{
    public Zombie_Jumping(ZombieFSM controller) : base(controller) { }

    public override void StartState()
    {
        base.StartState();
        Controller.animation.wrapMode = WrapMode.Loop;
        Controller.animation.CrossFade("Jumping");
        VerticalSpeed = Mathf.Sqrt(2 * Controller.JumpHeight * Controller.Gravity);
    }

    protected override Enum OnUpdate()
    {
        ZombieStates nextState = ZombieStates.Zombie_Jumping;

        // Determine movement
        float targetRunSpeed = 0;
        if (Left ^ Right)
            targetRunSpeed = Right ? Direction.x * Controller.MaxHorizontalSpeed : -Direction.x * Controller.MaxHorizontalSpeed;
        HorizontalSpeed = Controller.ApplyRunning(targetRunSpeed);
        VerticalSpeed = Controller.ApplyGravity();

        // Determine next state
        if (Duration > 0 && IsGrounded)
            nextState = ZombieStates.Zombie_Landing;
        else if (VerticalSpeed < 0)
            nextState = ZombieStates.Zombie_Falling;
        else if (Controller.CanHangOffObject)
            nextState = ZombieStates.Zombie_Hanging;
        else if (Controller.CanClimbPipe || Controller.CanClimbLadder)
            nextState = ZombieStates.Zombie_Climbing;

        return nextState;
    }

}