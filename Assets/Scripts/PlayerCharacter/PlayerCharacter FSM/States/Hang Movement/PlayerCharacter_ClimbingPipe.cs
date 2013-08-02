using UnityEngine;
using System;
using System.Collections;

public class PlayerCharacter_ClimbingPipe : PlayerCharacterFSM_IState
{
    public PlayerCharacter_ClimbingPipe(PlayerCharacterFSM controller) : base(controller) { }

    protected override void OnStartState()
    {
        Controller.animation["Climbing"].time = 0;
        Controller.animation.CrossFade("Climbing");
        HorizontalSpeed = 0.0f;
        VerticalSpeed = 0.0f;
    }

    protected override Enum OnUpdate()
    {
        PlayerCharacterStates nextState = PlayerCharacterStates.PlayerCharacter_ClimbingPipe;

        // First, this special state handles Z-stuff
        if (ShouldTransitionZ_Down)
            Controller.ZLevel = Controller.Z_Down;
        else if (ShouldTransitionZ_Up)
            Controller.ZLevel = Controller.Z_Up;
        if (Mathf.Abs(Controller.transform.position.z - Controller.ZLevel) > 0.1)
            VerticalSpeed = 0.0f;

        // Then check that we are still on a climbable object
        if (Controller.ActiveHangTarget == null)
            return PlayerCharacterStates.PlayerCharacter_TransitioningZ;

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
        if (UpHold && !DownHold && insideUp)
            VerticalSpeed = Controller.LadderClimbingSpeed;
        else if (DownHold && !UpHold && insideDown)
            VerticalSpeed = -Controller.LadderClimbingSpeed;
        else
            VerticalSpeed = 0.0f;

        // Determine horizontal movement
        if (LeftHold && !RightHold && Controller.ActiveHangTarget != null && insideLeft)
        {
            HorizontalSpeed = -Controller.LadderStrafingSpeed;
            VerticalSpeed = 0.0f;
        }
        else if (RightHold && !LeftHold && Controller.ActiveHangTarget != null && insideRight)
        {
            HorizontalSpeed = Controller.LadderStrafingSpeed;
            VerticalSpeed = 0.0f;
        }
        else
            HorizontalSpeed = 0.0f;

        // Make our character animate correctly
        if (HorizontalSpeed != 0.0f && !Controller.animation.IsPlaying("HangingStrafe"))
            Controller.animation.CrossFade("HangingStrafe");
        else if (VerticalSpeed != 0.0f && !Controller.animation.IsPlaying("Climbing"))
            Controller.animation.CrossFade("Climbing");

        Controller.animation["Climbing"].speed = VerticalSpeed / Controller.LadderClimbingSpeed;
        Controller.animation["HangingStrafe"].speed = 3 * HorizontalSpeed / Controller.LadderClimbingSpeed;

        // Determine next state
        if ((LeftHold || RightHold || DownHold) && IsGrounded)
            nextState = PlayerCharacterStates.PlayerCharacter_Idle;
        else if (Controller.CanHangOffObject)
            nextState = PlayerCharacterStates.PlayerCharacter_Hanging;
        else if (JumpDown)
            nextState = PlayerCharacterStates.PlayerCharacter_Jumping;

        return nextState;
    }

    public override bool IsWallHangState()
    {
        return true;
    }
}
