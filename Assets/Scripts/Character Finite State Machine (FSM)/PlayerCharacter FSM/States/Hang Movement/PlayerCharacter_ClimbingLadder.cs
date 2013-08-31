using UnityEngine;
using System;
using System.Collections;

public class PlayerCharacter_ClimbingLadder : PlayerCharacterFSM_IState
{
    public PlayerCharacter_ClimbingLadder(PlayerCharacterFSM controller) : base(controller) { }

    protected override void OnStartState()
    {
        FSM.animation["Climbing"].time = 0;
        FSM.animation.CrossFade("Climbing");
        HorizontalSpeed = 0.0f;
        VerticalSpeed = 0.0f;
    }

    protected override Enum OnUpdate()
    {
        PlayerCharacterStates nextState = PlayerCharacterStates.PlayerCharacter_ClimbingLadder;

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

        // Determine vertical movement
        if (UpHold && !DownHold)
            VerticalSpeed = FSM.LadderClimbingSpeed;
        else if (DownHold && !UpHold)
            VerticalSpeed = -FSM.LadderClimbingSpeed;
        else
            VerticalSpeed = 0.0f;

        // Determine the bounds of the object we are climbing
        bool insideLeft = FSM.transform.position.x - FSM.collider.bounds.extents.x >
                FSM.ActiveHangTarget.transform.position.x - FSM.ActiveHangTarget.collider.bounds.extents.x;
        bool insideRight = FSM.transform.position.x + FSM.collider.bounds.extents.x <
              FSM.ActiveHangTarget.transform.position.x + FSM.ActiveHangTarget.collider.bounds.extents.x;

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
        if (FSM.CanHangOffObject)
            nextState = PlayerCharacterStates.PlayerCharacter_Hanging;
        else if (JumpDown)
            nextState = PlayerCharacterStates.PlayerCharacter_Jumping;
        else if ((LeftHold || RightHold || DownHold) && IsGrounded)
            nextState = PlayerCharacterStates.PlayerCharacter_Idle;

        return nextState;
    }

    public override bool IsWallHangState()
    {
        return true;
    }
}
