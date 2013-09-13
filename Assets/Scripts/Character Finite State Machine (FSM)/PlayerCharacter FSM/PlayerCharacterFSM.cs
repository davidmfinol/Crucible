using UnityEngine;
using System;

/*
/// <summary>
/// Player character FSM controls the player character.
/// </summary>
public class PlayerCharacterFSM : CharacterFiniteStateMachineBase
{
    // Where will the player respawn?
    public Transform SpawnPoint;

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
    public float LedgeClimbingDuration = 0.7f;

    // How fast does the character climb up a ledge?
    public float LedgeClimbingSpeed = 7.5f;

    // How fast does the character climb a ladder?
    public float LadderClimbingSpeed = 5.0f;

    // How fast does the character move sideways on a ladder?
    public float LadderStrafingSpeed = 5.0f;

    // How long does it take the character to move between Z-levels?
    public float ZTransitioningDuration = 0.7f;

    // Player's Weapon Arsenal!
    public Transform Whip;
	public Transform Mine;
    public Transform Weapon;

    // How far the player fell
    private float _fallHeight = 0;

    public bool HasPackage = false;

    public void Spawn()
    {
        gameObject.GetComponentInChildren<HeartBox>().HitPoints = gameObject.GetComponentInChildren<HeartBox>().MaxHitPoints;
        transform.position = SpawnPoint.position;
        CurrentState = GetDefaultState();
        ZLevel = transform.position.z;
        Z_Down = ZLevel;
        Z_Up = ZLevel;
    }

    public override void OnDeath()
    {
        Application.LoadLevel("DeathScreen");
    }

    public override void OnControllerColliderHit(ControllerColliderHit hit)
    {
        base.OnControllerColliderHit(hit);

        // We can pick up items
        if (hit.gameObject.tag == "Item")
        {
            HasPackage = true; // TODO: seperate script for inventory
            Destroy(hit.gameObject);
        }
    }

    // Properties
    public bool HasDoubleJumped
    {
        get { return _hasDoubleJumped; }
        set { _hasDoubleJumped = value; }
    }

    public float FallHeight
    {
        get { return _fallHeight; }
        set { _fallHeight = value; }
    }

}
*/