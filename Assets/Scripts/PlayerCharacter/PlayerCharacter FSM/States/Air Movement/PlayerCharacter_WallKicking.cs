using UnityEngine;
using System;
using System.Collections;

public class PlayerCharacter_WallKicking : PlayerCharacterStateMachineState
{
    public PlayerCharacter_WallKicking(PlayerCharacterStateMachine controller) : base(controller) { }
    protected override void OnStartState()
    {
        VerticalSpeed = Mathf.Sqrt(2 * Controller.JumpHeight * Controller.Gravity);
    }

    protected override Enum OnUpdate()
    {
        PlayerCharacterStates nextState = PlayerCharacterStates.PlayerCharacter_WallKicking;

        // Determine movement
        float accelerationSmoothing = Controller.DoubleJumpHorizontalAcceleration * Time.deltaTime;
        HorizontalSpeed = Mathf.Lerp(HorizontalSpeed, Controller.WallKickHorizontalMaxSpeed, accelerationSmoothing);
        if (Duration > Controller.WallKickingDuration)
            VerticalSpeed = 0.0f;
        if (IsTouchingCeiling && !JumpHold)
            VerticalSpeed = GroundVerticalSpeed;

        // Determine next state
        if (IsGrounded)
            nextState = PlayerCharacterStates.PlayerCharacter_Landing;
        else if (Controller.CanHangOffObject)
        {
            if(Controller.ActiveHangTarget is ClimbableObject && (UpHold || DownHold))
                nextState = PlayerCharacterStates.PlayerCharacter_ClimbingUp;
            else
                nextState = PlayerCharacterStates.PlayerCharacter_Hanging;
        }
        else if (IsTouchingWall)
        {
            if (Duration > 0.1f)
            {
                VerticalSpeed /= 2.0f;
                nextState = PlayerCharacterStates.PlayerCharacter_Falling;
            }
            if (JumpHold)
                nextState = PlayerCharacterStates.PlayerCharacter_WallGrabbing;
        }
        /*else if (IsTouchingCeiling && JumpHold)
            nextState = PlayerCharacterStates.PlayerCharacter_CeilingIdle;*/
        else if (IsTouchingCeiling || Duration > Controller.WallKickingDuration)
        {
            nextState = PlayerCharacterStates.PlayerCharacter_Falling;
        }

        return nextState;
    }

    public override bool IsAirState()
    {
        return true;
    }
}
