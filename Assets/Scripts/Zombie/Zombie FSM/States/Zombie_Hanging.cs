using UnityEngine;
using System;
using System.Collections;

public class Zombie_Hanging : ZombieFSM_IState
{
    public Zombie_Hanging(ZombieFSM controller) : base(controller) { }

    public override void StartState()
    {
        base.StartState();
        Controller.animation.wrapMode = WrapMode.Loop;
        Controller.animation.CrossFade("ClimbingUp");

        VerticalSpeed = 0.0f;
        if (Controller.ActiveHangTarget.DoesFaceZAxis())
        {
            HorizontalSpeed = 0.0f;
            Direction = Vector3.zero;
        }
        else
        {
            HorizontalSpeed = Controller.MaxHorizontalSpeed;
            if (Controller.IsHangTargetToRight)
                Direction = Vector3.right;
            else
                Direction = Vector3.left;
        }

    }

    protected override Enum OnUpdate()
    {
        ZombieStates nextState = ZombieStates.Zombie_Hanging;

        // Allow us to move with the target
        if (Controller.ActiveHangTarget != null)
            Controller.ActivePlatform = Controller.ActiveHangTarget.transform;

        // Determine next state
        if (Jump)
            nextState = ZombieStates.Zombie_Jumping;
        else if (Down)
            nextState = ZombieStates.Zombie_Falling;

        return nextState;
    }

    public override void ExitState()
    {
        base.ExitState();
        Controller.ActiveHangTarget = null;
    }
}
