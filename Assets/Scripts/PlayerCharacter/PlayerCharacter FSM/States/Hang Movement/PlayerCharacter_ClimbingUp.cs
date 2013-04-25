using UnityEngine;
using System;
using System.Collections;

public class PlayerCharacter_ClimbingUp : PlayerCharacterStateMachineState
{
    public PlayerCharacter_ClimbingUp(PlayerCharacterStateMachine controller) : base(controller) { }

    protected override void OnStartState()
    {
        Controller.animation.CrossFade("Climbing");
        HorizontalSpeed = 0.0F;
        VerticalSpeed = 0.0f;
    }

    protected override Enum OnUpdate()
    {
        PlayerCharacterStates nextState = PlayerCharacterStates.PlayerCharacter_ClimbingUp;

        // Check first that we are still on a climbable object
        if (Controller.ActiveHangTarget == null)
            return PlayerCharacterStates.PlayerCharacter_Falling;
        if (!(Controller.ActiveHangTarget is ClimbableObject))
        {
            if (Controller.ActiveHangTarget is Ledge)
                return nextState = PlayerCharacterStates.PlayerCharacter_ClimbingLedge;
        }

        // Handle Z-stuff
        if (DownHold && Controller.CanTransitionZ)
            Controller.ZLevel = Controller.Z_Down;
        else if (UpHold && Controller.CanTransitionZ)
            Controller.ZLevel = Controller.Z_Up;

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
        if (LeftHold && !RightHold && Controller.ActiveHangTarget != null)
        {
            HorizontalSpeed = -Controller.LadderStrafingSpeed;
            if (!insideLeft)
            {
                Direction = new Vector3(-1, Direction.y, Direction.z);
                return PlayerCharacterStates.PlayerCharacter_Falling;
            }
        }
        else if (RightHold && !LeftHold && Controller.ActiveHangTarget != null)
        {
            HorizontalSpeed = Controller.LadderStrafingSpeed;
            if (!insideRight)
            {
                Direction = new Vector3(1, Direction.y, Direction.z);
                return PlayerCharacterStates.PlayerCharacter_Falling;
            }
        }
        else
            HorizontalSpeed = 0.0f;

        Controller.animation["Climbing"].speed = VerticalSpeed / Controller.LadderClimbingSpeed;

        if (Mathf.Abs(Controller.transform.position.z - Controller.ZLevel) > 0.1)
            VerticalSpeed = -GroundVerticalSpeed;

        // Determine next state
        if (Controller.CanHangOffObject)
            nextState = PlayerCharacterStates.PlayerCharacter_Hanging;
        else if (JumpDown)
            nextState = PlayerCharacterStates.PlayerCharacter_Jumping;
        else if (!(Controller.CanClimbObject))
            nextState = PlayerCharacterStates.PlayerCharacter_Falling;

        return nextState;
    }

    public override bool IsWallHangState()
    {
        return true;
    }
}
