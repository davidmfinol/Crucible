using UnityEngine;
using System;
using System.Collections;

/*
public class PlayerCharacter_Hanging : PlayerCharacterFSM_IState
{
    // whether the player continues holding to the ActiveHangTarget after this state
    // for example, you continue holding the ledge if you enter the ledge climbing state
    private bool _continueHolding;

    public PlayerCharacter_Hanging(PlayerCharacterFSM controller) : base(controller) { }

    protected override void OnStartState()
    {
        _continueHolding = false;

        FSM.animation["Hanging"].time = 0;
        FSM.animation["HangingPipe"].time = 0;
        FSM.animation["Hanging"].wrapMode = WrapMode.Once;
        FSM.animation.CrossFade("HangingPipe");

        HasDoubleJumped = false;
        VerticalSpeed = 0.0f;
        if (FSM.ActiveHangTarget.DoesFaceZAxis())
        {
            HorizontalSpeed = 0.0f;
            Direction = Vector3.zero;
        }
        else
        {
            HorizontalSpeed = FSM.LedgeClimbingSpeed;
            if (FSM.IsHangTargetToRight)
                Direction = Vector3.right;
            else
                Direction = Vector3.left;
        }

        //snap to correct location
        /*
        if(Controller.ActiveHangTarget.DoesFaceZAxis())
        {
            Controller.transform.position = new Vector3(Controller.transform.position.x, Controller.ActiveHangTarget.transform.position.y - Controller.collider.bounds.extents.x, Controller.transform.position.z);
        }
        else if (Controller.ActiveHangTarget.DoesFaceXAxis())
        {
            if(Direction.x != 0)
            {
                int directional = (Direction.x > 0) ? 1 : -1;
                float correctX = Controller.ActiveHangTarget.transform.position.x - (directional * Controller.collider.bounds.extents.x);
                Controller.transform.position = new Vector3(correctX, Controller.ActiveHangTarget.transform.position.y, Controller.transform.position.z);
            }
        }
          * */
 //   }

/*
    protected override Enum OnUpdate()
    {
        PlayerCharacterStates nextState = PlayerCharacterStates.PlayerCharacter_Hanging;

        if (!FSM.animation.IsPlaying("Hanging") && !FSM.animation.IsPlaying("HanginLoop"))
            FSM.animation.CrossFade("HanginLoop");

        // Allow us to move with the target
        if (FSM.ActiveHangTarget != null)
            FSM.ActivePlatform = FSM.ActiveHangTarget.transform;

        // Determine next state
        if (FSM.ActiveHangTarget is Ledge && (UpDown || ForwardDown))
        {
            _continueHolding = true;
            nextState = PlayerCharacterStates.PlayerCharacter_ClimbingLedge;
        }
        else if (JumpDown)
            nextState = PlayerCharacterStates.PlayerCharacter_Jumping;
        else if (DownDown || FSM.ActiveHangTarget == null)
            nextState = PlayerCharacterStates.PlayerCharacter_Falling;

        return nextState;
    }
	
	/*
    protected override void OnExitState()
    {
        if (!_continueHolding)
            Controller.DropHangTarget();
    }
	*/

/*
    public override bool IsWallHangState()
    {
        return true;
    }
}
*/