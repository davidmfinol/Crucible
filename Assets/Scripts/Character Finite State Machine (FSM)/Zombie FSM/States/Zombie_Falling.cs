using UnityEngine;
using System;
using System.Collections;

public class Zombie_Falling : ZombieFSM_IState
{
    public Zombie_Falling(ZombieFSM controller) : base(controller) { }

    public override void StartState()
    {
        base.StartState();
        FSM.animation.wrapMode = WrapMode.Loop;
        FSM.animation.CrossFade("Falling");
        VerticalSpeed = FSM.ApplyGravity();
    }

    protected override Enum OnUpdate()
    {
        ZombieStates nextState = ZombieStates.Zombie_Falling;

        // Determine movement
        float targetRunSpeed = 0;
        if (Left ^ Right)
            targetRunSpeed = Right ? Direction.x * FSM.MaxHorizontalSpeed : -Direction.x * FSM.MaxHorizontalSpeed;
        HorizontalSpeed = FSM.ApplyRunning(targetRunSpeed);
        VerticalSpeed = FSM.ApplyGravity();

        // Determine next state
        if (IsGrounded)
            nextState = ZombieStates.Zombie_Landing;
        else if (FSM.CanHangOffObject && Up)
            nextState = ZombieStates.Zombie_Hanging;
        else if (FSM.CanClimbPipe || FSM.CanClimbLadder)
            nextState = ZombieStates.Zombie_Climbing;

        return nextState;
    }

}