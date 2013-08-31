using UnityEngine;
using System;
using System.Collections;

public class PlayerCharacter_ClimbingPipe : PlayerCharacterFSM_IState
{
    public PlayerCharacter_ClimbingPipe(PlayerCharacterFSM controller) : base(controller) { }

    protected override void OnStartState()
    {
        FSM.animation["Climbing"].time = 0;
        FSM.animation.CrossFade("Climbing");
        HorizontalSpeed = 0.0f;
        VerticalSpeed = 0.0f;
    }

    protected override Enum OnUpdate()
    {
        PlayerCharacterStates nextState = PlayerCharacterStates.PlayerCharacter_ClimbingPipe;

        // First, this special state handles Z-stuff
        if (ShouldTransitionZ_Down)
            FSM.ZLevel = FSM.Z_Down;
        else if (ShouldTransitionZ_Up)
            FSM.ZLevel = FSM.Z_Up;
        if (Mathf.Abs(FSM.transform.position.z - FSM.ZLevel) > 0.1)
            VerticalSpeed = 0.0f;

        // Then check that we are still on a climbable object
        if (FSM.ActiveHangTarget == null)
            return PlayerCharacterStates.PlayerCharacter_TransitioningZ;

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
        if (UpHold && !DownHold && insideUp)
            VerticalSpeed = FSM.LadderClimbingSpeed;
        else if (DownHold && !UpHold && insideDown)
            VerticalSpeed = -FSM.LadderClimbingSpeed;
        else
            VerticalSpeed = 0.0f;

        // Determine horizontal movement
        if (LeftHold && !RightHold && FSM.ActiveHangTarget != null && insideLeft)
        {
            HorizontalSpeed = -FSM.LadderStrafingSpeed;
            VerticalSpeed = 0.0f;
        }
        else if (RightHold && !LeftHold && FSM.ActiveHangTarget != null && insideRight)
        {
            HorizontalSpeed = FSM.LadderStrafingSpeed;
            VerticalSpeed = 0.0f;
        }
        else
            HorizontalSpeed = 0.0f;

        // Make our character animate correctly
        if (HorizontalSpeed != 0.0f && !FSM.animation.IsPlaying("HangingStrafe"))
            FSM.animation.CrossFade("HangingStrafe");
        else if (VerticalSpeed != 0.0f && !FSM.animation.IsPlaying("Climbing"))
            FSM.animation.CrossFade("Climbing");

        FSM.animation["Climbing"].speed = VerticalSpeed / FSM.LadderClimbingSpeed;
        FSM.animation["HangingStrafe"].speed = 3 * HorizontalSpeed / FSM.LadderClimbingSpeed;

        // Determine next state
        if ((LeftHold || RightHold || DownHold) && IsGrounded)
            nextState = PlayerCharacterStates.PlayerCharacter_Idle;
        else if (FSM.CanHangOffObject)
            nextState = PlayerCharacterStates.PlayerCharacter_Hanging;
        else if (JumpDown)
            nextState = PlayerCharacterStates.PlayerCharacter_Jumping;
        else if (DownHold && !insideDown)
            nextState = PlayerCharacterStates.PlayerCharacter_Falling;

        return nextState;
    }

    public override bool IsWallHangState()
    {
        return true;
    }
}
