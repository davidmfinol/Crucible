using UnityEngine;
using System;
using System.Collections;

public class PlayerCharacter_Hanging : PlayerCharacterStateMachineState
{
    public PlayerCharacter_Hanging(PlayerCharacterStateMachine controller) : base(controller) { }

    protected override void OnStartState()
    {
        Controller.ActivePlatform = Controller.ActiveHangTarget.transform;
        Controller.ActiveGlobalPlatformPoint = Controller.transform.position;
        Controller.ActiveLocalPlatformPoint = Controller.ActivePlatform.InverseTransformPoint(Controller.transform.position);

        HasDoubleJumped = false;
        HorizontalSpeed = 0.0f;
        VerticalSpeed = 0.0f;
        Direction = new Vector3(0, Direction.y, Direction.z);

        //snap to correct location
        /*
        if(Controller.ActiveHangTarget.IsVertical())
        {
            Controller.transform.position = new Vector3(Controller.transform.position.x, Controller.ActiveHangTarget.transform.position.y - Controller.collider.bounds.extents.x, Controller.transform.position.z);
        }
        else if (Controller.ActiveHangTarget.IsHorizontal())
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

        // Determine next state
        if (Controller.ActiveHangTarget is Ledge && (UpDown || ForwardDown))
        {
            nextState = PlayerCharacterStates.PlayerCharacter_ClimbingLedge;
        }
        //else if (Controller.ActiveHangTarget is ClimbableObject && UpDown)
        //{
        //    nextState = PlayerCharacterStates.PlayerCharacter_ClimbingUp;
        //}
        else if (JumpDown)
        {
            Controller.ReleaseHangableObject();
            nextState = PlayerCharacterStates.PlayerCharacter_Jumping;
        }
        else if (DownDown || UpDown || RightDown || LeftDown)
        {
            Controller.ReleaseHangableObject();
            nextState = PlayerCharacterStates.PlayerCharacter_Falling;
        }

        return nextState;
    }

    public override bool IsWallHangState()
    {
        return true;
    }
}
