using UnityEngine;
using System;
using System.Collections;

public class PlayerCharacter_WallGrabbing : PlayerCharacterStateMachineState
{
    public PlayerCharacter_WallGrabbing(PlayerCharacterStateMachine controller) : base(controller) { }

    protected override void OnStartState()
    {
        if (Controller.ActivePlatform != null)
        {
            HorizontalSpeed = GroundVerticalSpeed;
            VerticalSpeed = 0.0f;
            if (Controller.transform.position.x > Controller.ActivePlatform.position.x)
                Direction = Vector3.right;
            else
                Direction = Vector3.left;
        }
    }

    protected override Enum OnUpdate()
    {
        PlayerCharacterStates nextState = PlayerCharacterStates.PlayerCharacter_WallGrabbing;

        // No movement 

        // Determine next state
        if (!IsTouchingWall)
            nextState = PlayerCharacterStates.PlayerCharacter_Falling;
        else if (JumpUp)
            nextState = PlayerCharacterStates.PlayerCharacter_WallKicking;

        return nextState;
    }

    public override bool IsWallHangState()
    {
        return true;
    }
}
