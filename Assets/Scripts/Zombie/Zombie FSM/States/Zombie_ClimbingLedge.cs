using UnityEngine;
using System.Collections;
using System;

public class Zombie_ClimbingLedge : ZombieFSM_IState
{
    private Ledge _ledge; 
	
    public Zombie_ClimbingLedge(ZombieFSM controller) : base(controller) { }

    public override void StartState()
    {
		base.StartState();
        Controller.animation.CrossFade("Jumping");
        if (Controller.ActiveHangTarget.DoesFaceZAxis())
        {
            HorizontalSpeed = 0.0f;
            VerticalSpeed = Controller.LedgeClimbingSpeed;
        }
        else if (Controller.ActiveHangTarget.DoesFaceXAxis())
        {
            HorizontalSpeed = Controller.LedgeClimbingSpeed;
            VerticalSpeed = Controller.LedgeClimbingSpeed;
        }
        _ledge = (Ledge) Controller.ActiveHangTarget;
    }

    protected override Enum OnUpdate()
    {
        ZombieStates nextState = ZombieStates.Zombie_ClimbingLedge;

        // Check first that we are still holding on to something
        if (Controller.ActiveHangTarget == null)
            return ZombieStates.Zombie_Falling;

        // Determine movement
        if (Controller.transform.position.y > _ledge.transform.position.y + _ledge.collider.bounds.extents.y + Controller.Height / 2)
            VerticalSpeed = GroundVerticalSpeed;

        // Determine next state
        if ( (!(Controller.ActiveHangTarget is Ledge) && VerticalSpeed == GroundVerticalSpeed) || Duration >= Controller.LedgeClimbingDuration)
            nextState = ZombieStates.Zombie_Idle;

        return nextState;
    }
}
