using UnityEngine;
using System;
using System.Collections;

public class Zombie_Hanging : ZombieFSM_IState
{
    private bool _continueHolding;
	
    public Zombie_Hanging(ZombieFSM controller) : base(controller) { }

    public override void StartState()
    {
        base.StartState();
        _continueHolding = false;
        FSM.animation.wrapMode = WrapMode.Loop;
        FSM.animation.CrossFade("ClimbingUp");

        VerticalSpeed = 0.0f;
        if (FSM.ActiveHangTarget.DoesFaceZAxis())
        {
            HorizontalSpeed = 0.0f;
            Direction = Vector3.zero;
        }
        else
        {
            HorizontalSpeed = FSM.MaxHorizontalSpeed;
            if (FSM.IsHangTargetToRight)
                Direction = Vector3.right;
            else
                Direction = Vector3.left;
        }

    }

    protected override Enum OnUpdate()
    {
        ZombieStates nextState = ZombieStates.Zombie_Hanging;

        // Allow us to move with the target
        if (FSM.ActiveHangTarget != null)
            FSM.ActivePlatform = FSM.ActiveHangTarget.transform;

        // Determine next state
        if (FSM.ActiveHangTarget is Ledge && (Up || Right || Left))
        {
            _continueHolding = true;
            nextState = ZombieStates.Zombie_ClimbingLedge;
        }
        else if (Jump)
            nextState = ZombieStates.Zombie_Jumping;
        else if (Down)
            nextState = ZombieStates.Zombie_Falling;

        return nextState;
    }

    public override void ExitState()
    {
        base.ExitState();
        if (!_continueHolding)
            FSM.DropHangTarget();
    }
}
