using UnityEngine;
using System;
using System.Collections;

public class PlayerCharacter_ClimbingUp : PlayerCharacterStateMachineState
{
    public PlayerCharacter_ClimbingUp(PlayerCharacterStateMachine controller) : base(controller) { }

    protected override void OnStartState()
    {
        Controller.animation["Climbing"].time = 0;
        Controller.animation.CrossFade("Climbing");
        HorizontalSpeed = 0.0f;
        VerticalSpeed = 0.0f;
    }

    protected override Enum OnUpdate()
    {
        PlayerCharacterStates nextState = PlayerCharacterStates.PlayerCharacter_ClimbingUp;

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

        Direction = new Vector3(0.0f, Direction.y, 0.0f);

        // Determine vertical movement
        if (UpHold && !DownHold)
            VerticalSpeed = Controller.LadderClimbingSpeed;
        else if (DownHold && !UpHold)
            VerticalSpeed = -Controller.LadderClimbingSpeed;
        else
            VerticalSpeed = 0.0f;

        bool insideLeft = Controller.transform.position.x - Controller.collider.bounds.extents.x > 
                Controller.ActiveHangTarget.transform.position.x - Controller.ActiveHangTarget.collider.bounds.extents.x;
        bool insideRight = Controller.transform.position.x + Controller.collider.bounds.extents.x < 
              Controller.ActiveHangTarget.transform.position.x + Controller.ActiveHangTarget.collider.bounds.extents.x;

        // Determine horizontal movement
        if (LeftHold && !RightHold && Controller.ActiveHangTarget != null && insideLeft)
        {
            HorizontalSpeed = -Controller.LadderStrafingSpeed;
        }
        else if (RightHold && !LeftHold && Controller.ActiveHangTarget != null && insideRight)
        {
            HorizontalSpeed = Controller.LadderStrafingSpeed;
        }
        else
            HorizontalSpeed = 0.0f;

        // Make our character animate correctly
        Controller.animation["Climbing"].speed = VerticalSpeed / Controller.LadderClimbingSpeed;

        // Determine next state
        if (Controller.CanHangOffObject)
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
