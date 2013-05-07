using UnityEngine;
using System;
using System.Collections;

public class PlayerCharacter_Hanging : PlayerCharacterStateMachineState
{
    // whether the player continues holding to the ActiveHangTarget after this state
    private bool _continueHolding;

    public PlayerCharacter_Hanging(PlayerCharacterStateMachine controller) : base(controller) { }

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
            Direction = new Vector3(0, Direction.y, Direction.z);
        }
        else
        {
            HorizontalSpeed = Controller.LedgeClimbingSpeed;
            if (Controller.IsHangTargetToRight)
                Direction = new Vector3(1, Direction.y, Direction.z);
            else
                Direction = new Vector3(-1, Direction.y, Direction.z);
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
        if (Controller.ActiveHangTarget is Ledge && (UpDown || ForwardDown))
        {
            _continueHolding = true;
            nextState = PlayerCharacterStates.PlayerCharacter_ClimbingLedge;
        }
        else if (JumpDown)
            nextState = PlayerCharacterStates.PlayerCharacter_Jumping;
        else if (DownDown || UpDown || RightDown || LeftDown)
            nextState = PlayerCharacterStates.PlayerCharacter_Falling;

        return nextState;
    }

    protected override void OnExitState()
    {
        if(!_continueHolding)
            Controller.ReleaseHangableObject();
    }

    public override bool IsWallHangState()
    {
        return true;
    }
}
