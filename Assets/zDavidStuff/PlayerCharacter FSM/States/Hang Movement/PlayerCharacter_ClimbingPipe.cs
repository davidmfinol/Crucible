using UnityEngine;
using System;
using System.Collections;

/*
public class PlayerCharacter_ClimbingPipe : PlayerCharacterFSM_IState
{

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
}
 */