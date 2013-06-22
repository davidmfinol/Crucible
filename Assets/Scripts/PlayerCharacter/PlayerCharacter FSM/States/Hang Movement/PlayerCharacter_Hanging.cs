using UnityEngine;
using System;
using System.Collections;

public class PlayerCharacter_Hanging : PlayerCharacterFSM_IState
{
    // whether the player continues holding to the ActiveHangTarget after this state
    // for example, you continue holding the ledge if you enter the ledge climbing state
    private bool _continueHolding;

    public PlayerCharacter_Hanging(PlayerCharacterFSM controller) : base(controller) { }

    protected override void OnStartState()
    {
        _continueHolding = false;

        Controller.animation["Hanging"].time = 0;
        Controller.animation["HangingPipe"].time = 0;
        Controller.animation["Hanging"].wrapMode = WrapMode.Once;
        Controller.animation.CrossFade("HangingPipe");

        Controller.ActivePlatform = Controller.ActiveHangTarget.transform;
        Controller.ActiveGlobalPlatformPoint = Controller.transform.position;
        Controller.ActiveLocalPlatformPoint = Controller.ActivePlatform.InverseTransformPoint(Controller.transform.position);

        HasDoubleJumped = false;
        VerticalSpeed = 0.0f;
        if (Controller.ActiveHangTarget.IsMultiZone())
        {
            HorizontalSpeed = 0.0f;
            Direction = Vector3.zero;
        }
        else
        {
            HorizontalSpeed = Controller.LedgeClimbingSpeed;
            if (Controller.IsHangTargetToRight)
                Direction = Vector3.right;
            else
                Direction = Vector3.left;
        }

        //snap to correct location
        /*
        if(Controller.ActiveHangTarget.IsMultiZone())
        {
            Controller.transform.position = new Vector3(Controller.transform.position.x, Controller.ActiveHangTarget.transform.position.y - Controller.collider.bounds.extents.x, Controller.transform.position.z);
        }
        else if (Controller.ActiveHangTarget.IsSingleZone())
        {
            if(Direction.x != 0)
            {
                int directional = (Direction.x > 0) ? 1 : -1;
                float correctX = Controller.ActiveHangTarget.transform.position.x - (directional * Controller.collider.bounds.extents.x);
                Controller.transform.position = new Vector3(correctX, Controller.ActiveHangTarget.transform.position.y, Controller.transform.position.z);
            }
        }
          * */
    }

    protected override Enum OnUpdate()
    {
        PlayerCharacterStates nextState = PlayerCharacterStates.PlayerCharacter_Hanging;

        if (!Controller.animation.IsPlaying("Hanging") && !Controller.animation.IsPlaying("HanginLoop"))
            Controller.animation.CrossFade("HanginLoop");

        // Determine next state
        Debug.Log(Controller.ActiveHangTarget);
        if (Controller.ActiveHangTarget is Ledge && (UpDown || ForwardDown))
        {
            Debug.Log("Should hold");
            _continueHolding = true;
            nextState = PlayerCharacterStates.PlayerCharacter_ClimbingLedge;
        }
        else if (JumpDown)
            nextState = PlayerCharacterStates.PlayerCharacter_Jumping;
        else if (DownDown || RightDown || LeftDown)
            nextState = PlayerCharacterStates.PlayerCharacter_Falling;

        Debug.Log(nextState);
        return nextState;
    }

    protected override void OnExitState()
    {
        if (!_continueHolding)
        {
            Debug.Log("Not holding");
            Controller.PreviousHangTarget = Controller.ActiveHangTarget;
            Controller.ActiveHangTarget = null;
        }
    }

    public override bool IsWallHangState()
    {
        return true;
    }
}
