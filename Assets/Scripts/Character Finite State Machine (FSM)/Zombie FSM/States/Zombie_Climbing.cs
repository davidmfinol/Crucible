using UnityEngine;
using System;
using System.Collections;

public class Zombie_Climbing : ZombieFSM_IState
{
    public Zombie_Climbing(ZombieFSM controller) : base(controller) { }

    public override void StartState()
    {
        base.StartState();
        FSM.animation.wrapMode = WrapMode.Loop;
        FSM.animation.CrossFade("ClimbingUp");
        FSM.ZombieAudioSource.PlayRunning();

        HorizontalSpeed = 0.0f;
        VerticalSpeed = 0.0f;
    }

    protected override Enum OnUpdate()
    {
        ZombieStates nextState = ZombieStates.Zombie_Climbing;

        // First, this special state handles Z-stuff
        if (Down && FSM.CanTransitionZ)
            FSM.ZLevel = FSM.Z_Down;
        else if (Up && FSM.CanTransitionZ)
            FSM.ZLevel = FSM.Z_Up;
        if (Mathf.Abs(FSM.transform.position.z - FSM.ZLevel) > 0.1)
            VerticalSpeed = 0.0f;

        // Then check that we are still on a climbable object
        if (FSM.ActiveHangTarget == null)
            return ZombieStates.Zombie_TransitioningZ;

        // We face forward while climbing
        Direction = Vector3.zero;

        // Determine the bounds of the object(s) we are climbing
		bool insideDown = false;
		bool insideUp = false;
		bool insideLeft = false;
		bool insideRight = false;
		foreach(HangableObject obj in FSM.HangQueue)
		{
	        insideDown = insideDown || FSM.transform.position.y - FSM.collider.bounds.extents.y >
	                obj.transform.position.y - obj.collider.bounds.extents.y;
	        insideUp = insideUp || FSM.transform.position.y + FSM.collider.bounds.extents.y <
	              obj.transform.position.y + obj.collider.bounds.extents.y;
	        insideLeft = insideLeft || FSM.transform.position.x - FSM.collider.bounds.extents.x >
	                obj.transform.position.x - obj.collider.bounds.extents.x;
	        insideRight = insideRight || FSM.transform.position.x + FSM.collider.bounds.extents.x <
	              obj.transform.position.x + obj.collider.bounds.extents.x;
		}

        // Determine vertical movement
        if (Up && !Down && insideUp)
            VerticalSpeed = FSM.MaxHorizontalSpeed;
        else if (Down && !Up && insideDown)
            VerticalSpeed = -FSM.MaxHorizontalSpeed;
        else
            VerticalSpeed = 0.0f;

        // Determine horizontal movement
        if (Left && !Right && insideLeft)
            HorizontalSpeed = -FSM.MaxHorizontalSpeed;
        else if (Right && !Left && insideRight)
            HorizontalSpeed = FSM.MaxHorizontalSpeed;
        else
            HorizontalSpeed = 0.0f;

        // Determine next state
        if ((Left || Right || Down) && IsGrounded)
            nextState = ZombieStates.Zombie_Idle;
        else if (FSM.CanHangOffObject)
            nextState = ZombieStates.Zombie_Hanging;
        else if (Jump || (!(insideUp && insideDown && insideLeft && insideRight)))
            nextState = ZombieStates.Zombie_Jumping;

        return nextState;
    }

}