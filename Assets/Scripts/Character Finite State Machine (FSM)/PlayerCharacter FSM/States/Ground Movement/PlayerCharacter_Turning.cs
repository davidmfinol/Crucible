using UnityEngine;
using System;
using System.Collections;

/*
public class PlayerCharacter_Turning : PlayerCharacterFSM_IState
{
    public PlayerCharacter_Turning(PlayerCharacterFSM controller) : base(controller) { }

    protected override void OnStartState()
    {
        HorizontalSpeed = -HorizontalSpeed;
        Direction = new Vector3(Input.GetAxisRaw("Horizontal"), 0, 0);
    }

    protected override Enum OnUpdate()
    {
        PlayerCharacterStates nextState = PlayerCharacterStates.PlayerCharacter_Turning;

        // Determine movement
        float accelerationSmoothing = FSM.GroundHorizontalAcceleration * Time.deltaTime;
        HorizontalSpeed = Mathf.Lerp(HorizontalSpeed, FSM.MaxRunSpeed, accelerationSmoothing);

        // Determine next state
        if (!IsGrounded)
            nextState = PlayerCharacterStates.PlayerCharacter_Falling;
        else if (Direction.x * RawHorizontalInput < 0) 
            StartState();
        else if (Duration > FSM.TurningDuration)
        {
            string latestFacePressed = buttonPressedStack.LatestFaceButton();
            if (latestFacePressed.Equals(strJump) && latestFacePressed != null)
                nextState = PlayerCharacterStates.PlayerCharacter_Jumping;
            else
                nextState = PlayerCharacterStates.PlayerCharacter_Running;
        }
        else if (IsPlayerInputZero(RawHorizontalInput))
            nextState = PlayerCharacterStates.PlayerCharacter_Idle;

        return nextState;
    }

    public override bool IsGroundState()
    {
        return true;
    }

}
 */