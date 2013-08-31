using UnityEngine;
using System;
using System.Collections;

public class PlayerCharacter_ClimbingLedge : PlayerCharacterFSM_IState
{
    private Ledge _ledge; 

    public PlayerCharacter_ClimbingLedge(PlayerCharacterFSM controller) : base(controller) { }

    protected override void OnStartState()
    {
        FSM.animation["JumpingDownLeft"].time = 0;
        FSM.animation.CrossFade("JumpingDownLeft");
        if (FSM.ActiveHangTarget.DoesFaceZAxis())
        {
            HorizontalSpeed = 0.0f;
            VerticalSpeed = FSM.LedgeClimbingSpeed;
        }
        else if (FSM.ActiveHangTarget.DoesFaceXAxis())
        {
            HorizontalSpeed = FSM.LedgeClimbingSpeed;
            VerticalSpeed = FSM.LedgeClimbingSpeed;
        }
        _ledge = (Ledge) FSM.ActiveHangTarget;
    }

    protected override Enum OnUpdate()
    {
        PlayerCharacterStates nextState = PlayerCharacterStates.PlayerCharacter_ClimbingLedge;

        // Check first that we are still holding on to something
        if (FSM.ActiveHangTarget == null)
            return PlayerCharacterStates.PlayerCharacter_Falling;

        // Determine movement
        if (FSM.transform.position.y > _ledge.transform.position.y + _ledge.collider.bounds.extents.y + FSM.Height / 2)
            VerticalSpeed = GroundVerticalSpeed;

        // Determine next state
        if ( (!(FSM.ActiveHangTarget is Ledge) && VerticalSpeed == GroundVerticalSpeed) || Duration >= FSM.LedgeClimbingDuration)
            nextState = PlayerCharacterStates.PlayerCharacter_Idle;

        return nextState;
    }

    public override bool IsWallHangState()
    {
        return true;
    }
}
