using UnityEngine;
using System;
using System.Collections;

public class Zombie_Falling : ZombieFSM_IState
{
    public Zombie_Falling(ZombieFSM controller) : base(controller) { }

    public override void StartState()
    {
        base.StartState();
        Controller.animation.CrossFade("Falling");
        VerticalSpeed = Controller.ApplyGravity();
    }

    protected override Enum OnUpdate()
    {
        ZombieStates nextState = ZombieStates.Zombie_Falling;

        Debug.Log("Spent a frame falling");

        // Determine movement
        float targetRunSpeed = 0;
        if (Left ^ Right)
            targetRunSpeed = Right ? Direction.x * Controller.MaxHorizontalSpeed : -Direction.x * Controller.MaxHorizontalSpeed;
        HorizontalSpeed = Controller.ApplyRunning(targetRunSpeed);
        VerticalSpeed = Controller.ApplyGravity();

        // Determine next state
        if (IsGrounded)
            nextState = ZombieStates.Zombie_Landing;

        return nextState;
    }

}