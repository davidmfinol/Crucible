using UnityEngine;
using System;
using System.Collections;

public class PlayerCharacter_ClimbingLedge : PlayerCharacterStateMachineState
{
    public PlayerCharacter_ClimbingLedge(PlayerCharacterStateMachine controller) : base(controller) { }

    protected override void OnStartState()
    {
        Controller.animation["JumpingDownLeft"].wrapMode = WrapMode.Once;
        Controller.animation.CrossFade("JumpingDownLeft");
        if (Controller.ActiveHangTarget.IsVertical())
        {
            HorizontalSpeed = 0.0f;
            VerticalSpeed = Controller.LedgeClimbingSpeed;
        }
        else if (Controller.ActiveHangTarget.IsHorizontal())
        {
            HorizontalSpeed = Controller.LedgeClimbingSpeed;
            VerticalSpeed = 0.0f;
        }
    }

    protected override Enum OnUpdate()
    {
        PlayerCharacterStates nextState = PlayerCharacterStates.PlayerCharacter_ClimbingLedge;

        // Check first that we are still on a ledge
        if (Controller.ActiveHangTarget == null || !(Controller.ActiveHangTarget is Ledge))
            return PlayerCharacterStates.PlayerCharacter_Falling;

        // Determine movement
        if (Controller.transform.position.y > Controller.ActiveHangTarget.transform.position.y + Controller.ActiveHangTarget.collider.bounds.extents.y + Controller.Height / 2 )
            VerticalSpeed = GroundVerticalSpeed;

        // Determine next state
        if (Duration >= Controller.LedgeClimbingDuration)
            nextState = PlayerCharacterStates.PlayerCharacter_Idle;

        return nextState;
    }

    protected override void OnExitState()
    {
        Controller.ReleaseHangableObject();
    }

    public override bool IsWallHangState()
    {
        return true;
    }
}
