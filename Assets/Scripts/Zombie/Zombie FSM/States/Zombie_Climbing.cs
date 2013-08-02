using UnityEngine;
using System;
using System.Collections;

public class Zombie_Climbing : ZombieFSM_IState
{
    public Zombie_Climbing(ZombieFSM controller) : base(controller) { }

    public override void StartState()
    {
        base.StartState();
        Controller.animation.wrapMode = WrapMode.Loop;
        Controller.animation.CrossFade("ClimbingUp");
        Controller.ZombieAudioSource.PlayRunning();

        HorizontalSpeed = 0.0f;
        VerticalSpeed = 0.0f;
    }

    protected override Enum OnUpdate()
    {
        ZombieStates nextState = ZombieStates.Zombie_Climbing;

        // First, this special state handles Z-stuff
        if (Down && Controller.CanTransitionZ)
            Controller.ZLevel = Controller.Z_Down;
        else if (Up && Controller.CanTransitionZ)
            Controller.ZLevel = Controller.Z_Up;
        if (Mathf.Abs(Controller.transform.position.z - Controller.ZLevel) > 0.1)
            VerticalSpeed = 0.0f;

        // Then check that we are still on a climbable object
        if (Controller.ActiveHangTarget == null)
            return ZombieStates.Zombie_TransitioningZ;

        // We face forward while climbing
        Direction = Vector3.zero;

        // Determine the bounds of the object(s) we are climbing
		bool insideDown = false;
		bool insideUp = false;
		bool insideLeft = false;
		bool insideRight = false;
		foreach(HangableObject obj in Controller.HangQueue)
		{
	        insideDown = insideDown || Controller.transform.position.y - Controller.collider.bounds.extents.y >
	                obj.transform.position.y - obj.collider.bounds.extents.y;
	        insideUp = insideUp || Controller.transform.position.y + Controller.collider.bounds.extents.y <
	              obj.transform.position.y + obj.collider.bounds.extents.y;
	        insideLeft = insideLeft || Controller.transform.position.x - Controller.collider.bounds.extents.x >
	                obj.transform.position.x - obj.collider.bounds.extents.x;
	        insideRight = insideRight || Controller.transform.position.x + Controller.collider.bounds.extents.x <
	              obj.transform.position.x + obj.collider.bounds.extents.x;
		}

        // Determine vertical movement
        if (Up && !Down && Controller.ActiveHangTarget != null && insideUp)
            VerticalSpeed = Controller.MaxHorizontalSpeed;
        else if (Down && !Up && Controller.ActiveHangTarget != null && insideDown)
            VerticalSpeed = -Controller.MaxHorizontalSpeed;
        else
            VerticalSpeed = 0.0f;

        // Determine horizontal movement
        if (Left && !Right && Controller.ActiveHangTarget != null && insideLeft)
        {
            HorizontalSpeed = -Controller.MaxHorizontalSpeed;
            VerticalSpeed = 0.0f;
        }
        else if (Right && !Left && Controller.ActiveHangTarget != null && insideRight)
        {
            HorizontalSpeed = Controller.MaxHorizontalSpeed;
            VerticalSpeed = 0.0f;
        }
        else
            HorizontalSpeed = 0.0f;

        // Determine next state
        if ((Left || Right || Down) && IsGrounded)
            nextState = ZombieStates.Zombie_Idle;
        else if (Controller.CanHangOffObject)
            nextState = ZombieStates.Zombie_Hanging;
        else if (Jump || (!(insideUp && insideDown && insideLeft && insideRight)))
            nextState = ZombieStates.Zombie_Jumping;

        return nextState;
    }

}