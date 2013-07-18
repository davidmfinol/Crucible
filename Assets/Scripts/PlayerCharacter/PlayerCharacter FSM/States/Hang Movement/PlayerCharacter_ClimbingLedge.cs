using UnityEngine;
using System;
using System.Collections;

public class PlayerCharacter_ClimbingLedge : PlayerCharacterFSM_IState
{
    private Ledge _ledge; 

    public PlayerCharacter_ClimbingLedge(PlayerCharacterFSM controller) : base(controller) { }

    protected override void OnStartState()
    {
        Controller.animation["JumpingDownLeft"].time = 0;
        Controller.animation.CrossFade("JumpingDownLeft");
        if (Controller.ActiveHangTarget.DoesFaceZAxis())
        {
            HorizontalSpeed = 0.0f;
            VerticalSpeed = Controller.LedgeClimbingSpeed;
        }
        else if (Controller.ActiveHangTarget.DoesFaceXAxis())
        {
            HorizontalSpeed = Controller.LedgeClimbingSpeed;
            VerticalSpeed = Controller.LedgeClimbingSpeed;
        }
        _ledge = (Ledge) Controller.ActiveHangTarget;
    }

    protected override Enum OnUpdate()
    {
        PlayerCharacterStates nextState = PlayerCharacterStates.PlayerCharacter_ClimbingLedge;

        // Check first that we are still holding on to something
        if (Controller.ActiveHangTarget == null)
            return PlayerCharacterStates.PlayerCharacter_Falling;

        // Determine movement
        if (Controller.transform.position.y > _ledge.transform.position.y + _ledge.collider.bounds.extents.y + Controller.Height / 2)
            VerticalSpeed = GroundVerticalSpeed;

        // Determine next state
        if ( (!(Controller.ActiveHangTarget is Ledge) && VerticalSpeed == GroundVerticalSpeed) || Duration >= Controller.LedgeClimbingDuration)
            nextState = PlayerCharacterStates.PlayerCharacter_Idle;

        return nextState;
    }

    public override bool IsWallHangState()
    {
        return true;
    }
}
