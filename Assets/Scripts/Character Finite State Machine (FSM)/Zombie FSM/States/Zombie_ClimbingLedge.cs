using UnityEngine;
using System.Collections;
using System;

/*
public class Zombie_ClimbingLedge : ZombieFSM_IState
{
    private Ledge _ledge; 
	
    public Zombie_ClimbingLedge(ZombieFSM controller) : base(controller) { }

    public override void StartState()
    {
		base.StartState();
        FSM.animation.CrossFade("Jumping");
        if (FSM.ActiveHangTarget.DoesFaceZAxis())
        {
            HorizontalSpeed = 0.0f;
            VerticalSpeed = FSM.LedgeClimbingSpeed;
        }
        else if (FSM.ActiveHangTarget.DoesFaceXAxis())
        {
            HorizontalSpeed = FSM.LedgeClimbingSpeed;
            VerticalSpeed = FSM.LedgeClimbingSpeed;
        }
        _ledge = (Ledge) FSM.ActiveHangTarget;
    }

    protected override Enum OnUpdate()
    {
        ZombieStates nextState = ZombieStates.Zombie_ClimbingLedge;

        // Check first that we are still holding on to something
        if (FSM.ActiveHangTarget == null)
            return ZombieStates.Zombie_Falling;

        // Determine movement
        if (FSM.transform.position.y > _ledge.transform.position.y + _ledge.collider.bounds.extents.y + FSM.Height / 2)
            VerticalSpeed = GroundVerticalSpeed;

        // Determine next state
        if ( (!(FSM.ActiveHangTarget is Ledge) && VerticalSpeed == GroundVerticalSpeed) || Duration >= FSM.LedgeClimbingDuration)
            nextState = ZombieStates.Zombie_Idle;

        return nextState;
    }
}
 */