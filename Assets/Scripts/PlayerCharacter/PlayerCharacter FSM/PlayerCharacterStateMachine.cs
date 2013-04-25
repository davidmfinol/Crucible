using UnityEngine;
using System;

// PlayerCharacterStateMachine is a CharacterStateMachineBase for the character that the player controls
// See PlayerCharacterStateMachineState.cs and its subclasses in the States folder
public class PlayerCharacterStateMachine : CharacterStateMachineBase
{
    // Where will the player respawn?
    public Transform SpawnPoint;

    // Support for hanging off of objects
    private HangableObject _activeHangTarget;

    // Has the character released a ledge, so that it can't grab it again?
    private bool _hasReleasedLedge = false;

    // Has the character already jumped from mid-air?
    private bool _hasDoubleJumped = false;

    // How long does the character have to be "stepping" before running?
    public float StepDuration = 0.1f;

    // How long does the character have to be "skidding" before stopping?
    public float SkidDuration = 0.1f;

    // How long does it take the character to cancel a step?
    public float StepCancelDuration = 0.05f;

    // How long does it take the character to turn around?
    public float TurningDuration = 0.1f;

    // How long does it take the character to land?
    public float LandingDuration = 0.12f;

    // How much time are we going to spend kicking off a wall?
    public float WallKickingDuration = 0.3f;

    // Maximum horizontal run speed
    public float MaxRunSpeed = 15.0f;

    // How fast does the character change horizontal ground speeds?  Higher is faster.
    public float GroundHorizontalAcceleration = 3.0f;

    // How fast does the character change horizontal air speeds?  Higher is faster.
    public float AirHorizontalAcceleration = 3.0f;

    // How fast does the character change horizontal speed while double jumping? Higher is faster.
    public float DoubleJumpHorizontalAcceleration = 10.0f;

    // How fast does the character move horizontally while wall kicking?
    public float WallKickHorizontalMaxSpeed = 14.0f;

    // How high do we jump from the ground?
    public float JumpHeight = 4.0f;

    // How high do we double jump in the air?
    public float DoubleJumpHeight = 2.5f;

    // How long does it take the character to climb up a ledge?
    public float LedgeClimbingDuration = 1.5f;

    // How fast does the character climb up a ledge?
    public float LedgeClimbingSpeed = 7.5f;

    // How fast does the character climb a ladder?
    public float LadderClimbingSpeed = 5.0f;

    // How fast does the character move sideways on a ladder?
    public float LadderStrafingSpeed = 5.0f;

    // How long does it take the character to move between Z-levels?
    public float ZTransitioningDuration = 1.0f;

    // How far the player fell
    private float _fallHeight = 0;

    public void Spawn()
    {
        transform.position = SpawnPoint.position;
        CurrentState = GetDefaultState();
        ZLevel = transform.position.z;
        Z_Down = ZLevel;
        Z_Up = ZLevel;
    }

    public override void OnDeath()
    {
        Spawn();
    }

    public override Type GetStateEnumType()
    {
        return typeof(PlayerCharacterStates);
    }

    public override Enum GetDefaultState()
    {
        return PlayerCharacterStates.PlayerCharacter_Idle;
    }
    public void ReleaseHangableObject()
    {
        ActivePlatform = null;
        ActiveHangTarget = null;
        HasReleasedHangableObject = true;
    }

    // Properties
    public bool HasDoubleJumped
    {
        get { return _hasDoubleJumped; }
        set { _hasDoubleJumped = value; }
    }
    public bool HasReleasedHangableObject
    {
        get { return _hasReleasedLedge; }
        set { _hasReleasedLedge = value; }
    }

    public HangableObject ActiveHangTarget
    {
        get { return _activeHangTarget; }
        set { _activeHangTarget = value; }
    }
    public bool CanHangOffObject
    {
        get { return (CanHangOffObjectHorizontally || CanHangOffObjectVertically) && !(ActiveHangTarget is ClimbableObject); }
    }
    public bool CanClimbObject
    {
        get { return ActiveHangTarget != null && ActiveHangTarget is ClimbableObject && ActiveHangTarget.transform.position.z == ZLevel; } 
    }
    public bool CanHangOffObjectHorizontally
    {
        get { return ActiveHangTarget!= null && ActiveHangTarget.IsHorizontal() && ((Direction.x > 0 && IsHangTargetToRight) || (Direction.x < 0 && !IsHangTargetToRight)); }
    }
    public bool CanHangOffObjectVertically
    {
        get { return ActiveHangTarget != null &&  ActiveHangTarget.IsVertical() && !IsGrounded && IsHangTargetAbove; }
    }
    public bool IsHangTargetToRight
    {
        get { return (ActiveHangTarget != null) && transform.position.x < ActiveHangTarget.transform.position.x; }
    }
    public bool IsHangTargetAbove
    {
        get { return (ActiveHangTarget != null) && transform.position.y < ActiveHangTarget.transform.position.y; ; }
    }

    public float FallHeight
    {
        get { return _fallHeight; }
        set { _fallHeight = value; }
    }
}
