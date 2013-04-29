using UnityEngine;
using System;
using System.Collections;

public class PlayerCharacter_Running : PlayerCharacterStateMachineState
{
    public PlayerCharacter_Running(PlayerCharacterStateMachine controller) : base(controller) { }

    protected override void OnStartState()
    {
        Controller.animation["Running"].time = 0;
        Controller.animation["Running"].speed = 1.5f;
        Controller.animation.CrossFade("Running");
    }

    protected override Enum OnUpdate()
    {
        PlayerCharacterStates nextState = PlayerCharacterStates.PlayerCharacter_Running;

        // Determine movement
        float accelerationSmoothing = Controller.GroundHorizontalAcceleration * Time.deltaTime;
        HorizontalSpeed = Mathf.Lerp(HorizontalSpeed, Controller.MaxRunSpeed, accelerationSmoothing);

        // Determine next state
        if(Input.GetButton("Primary"))
        {
            nextState = PlayerCharacterStates.PlayerCharacter_Attacking;
        }
        if (!IsGrounded)
            nextState = PlayerCharacterStates.PlayerCharacter_Falling;
        else if (Controller.CanClimbObject && (UpHold || DownHold))
            nextState = PlayerCharacterStates.PlayerCharacter_ClimbingUp;
        else if (JumpDown)
            nextState = PlayerCharacterStates.PlayerCharacter_Jumping;
        else if (IsPlayerInputZero(RawHorizontalInput) || (Direction.x * RawHorizontalInput < 0))
            nextState = PlayerCharacterStates.PlayerCharacter_Skidding;
        else if (ShouldTransitionZ_Down)
        {
            Controller.ZLevel = Controller.Z_Down;
            VerticalSpeed = GroundVerticalSpeed;
            nextState = PlayerCharacterStates.PlayerCharacter_TransitioningZ;
        }
        else if (ShouldTransitionZ_Up)
        {
            Controller.ZLevel = Controller.Z_Up;
            VerticalSpeed = 0;
            nextState = PlayerCharacterStates.PlayerCharacter_TransitioningZ;
        }

        return nextState;
    }

    public override bool IsGroundState()
    {
        return true;
    }

}
