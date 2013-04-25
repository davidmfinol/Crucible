using UnityEngine;
using System;
using System.Collections;

public class PlayerCharacter_Jumping : PlayerCharacterStateMachineState
{
    private float _startHeight;

    public PlayerCharacter_Jumping(PlayerCharacterStateMachine controller) : base(controller) { }

    protected override void OnStartState()
    {
        Controller.FallHeight = -1;
        Controller.animation["Jumping"].wrapMode = WrapMode.Once;
        Controller.animation["JumpFall"].wrapMode = WrapMode.Once;
        Controller.animation["JumpLanding"].wrapMode = WrapMode.Once;
        Controller.animation.CrossFade("Jumping");
        StartHeight = Controller.transform.position.y;
        VerticalSpeed = Mathf.Sqrt(2 * Controller.JumpHeight * Controller.Gravity);
    }

    protected override Enum OnUpdate()
    {
        PlayerCharacterStates nextState = PlayerCharacterStates.PlayerCharacter_Jumping;

        // Determine movement
        if (!IsPlayerInputZero(RawHorizontalInput))
            Direction = new Vector3(RawHorizontalInput, 0, 0);

        float targetSpeed = RawHorizontalInput * Controller.MaxRunSpeed * Direction.x;
        float accelerationSmoothing = Controller.AirHorizontalAcceleration * Time.deltaTime;
        HorizontalSpeed = Mathf.Lerp(HorizontalSpeed, targetSpeed, accelerationSmoothing);
        VerticalSpeed = Controller.ApplyGravity();
        if(IsTouchingCeiling && !JumpHold)
            VerticalSpeed = GroundVerticalSpeed;

        // Determine next state
        if (Controller.CanClimbObject && (UpHold || DownHold))
            nextState = PlayerCharacterStates.PlayerCharacter_ClimbingUp;
        else if (Duration > 0 && IsGrounded)
        {
            Controller.animation.CrossFade("JumpLanding");
            nextState = PlayerCharacterStates.PlayerCharacter_Landing;
        }
        else if (Controller.transform.position.y < StartHeight)
            nextState = PlayerCharacterStates.PlayerCharacter_Falling;
        else if (IsTouchingWall && JumpHold)
            nextState = PlayerCharacterStates.PlayerCharacter_WallGrabbing;
        //else if (JumpDown /*&& Controller.transform.position.y > StartHeight + Controller.JumpHeight / 2*/)
        //{
        //    nextState = PlayerCharacterStates.PlayerCharacter_DoubleJumping;
        //}

        return nextState;
    }

    public override bool IsAirState()
    {
        return true;
    }

    // Properties
    public float StartHeight
    {
        get { return _startHeight; }
        set { _startHeight = value; }
    }
}
