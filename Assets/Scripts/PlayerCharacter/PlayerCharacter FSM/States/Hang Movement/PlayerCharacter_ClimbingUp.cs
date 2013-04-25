using UnityEngine;
using System;
using System.Collections;

public class PlayerCharacter_ClimbingUp : PlayerCharacterStateMachineState
{
    public PlayerCharacter_ClimbingUp(PlayerCharacterStateMachine controller) : base(controller) { }

    protected override void OnStartState()
    {
        HorizontalSpeed = 0.0F;
        VerticalSpeed = 0.0f;
        Direction = new Vector3(0.0f, Direction.y, 0.0f);
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

        // Determine vertical movement
        if (UpHold && !DownHold)
            VerticalSpeed = Controller.LadderClimbingSpeed;
        else if (DownHold && !UpHold)
            VerticalSpeed = -Controller.LadderClimbingSpeed;
        else
            VerticalSpeed = 0.0f;

        // Determine horizontal movement
        if (LeftHold && !RightHold && Controller.ActiveHangTarget!= null &&
                Controller.transform.position.x - Controller.collider.bounds.extents.x > 
                Controller.ActiveHangTarget.transform.position.x - Controller.ActiveHangTarget.collider.bounds.extents.x)
            HorizontalSpeed = -Controller.LadderStrafingSpeed;
        else if (RightHold && !LeftHold && Controller.ActiveHangTarget != null &&
              Controller.transform.position.x + Controller.collider.bounds.extents.x < 
              Controller.ActiveHangTarget.transform.position.x + Controller.ActiveHangTarget.collider.bounds.extents.x)
            HorizontalSpeed = Controller.LadderStrafingSpeed;
        else
            HorizontalSpeed = 0.0f;
        //TODO: WHEN PRESSING LEFT AND RIGHT, IT SHOULD MAKE YOU DROP IF YOU WOULD PASS THE BOUNDS

        // Determine next state
        if (JumpDown)
            nextState = PlayerCharacterStates.PlayerCharacter_Jumping;
        else if(!(Controller.CanClimbObject))
            nextState = PlayerCharacterStates.PlayerCharacter_Falling;

        return nextState;
    }

    public override bool IsWallHangState()
    {
        return true;
    }
}
