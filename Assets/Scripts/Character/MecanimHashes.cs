﻿using UnityEngine;
using System.Collections;

/// <summary>
/// Mecanim hashes provides a central location to keep the hashes for mecanim variable names.
/// </summary>
public class MecanimHashes
{
    // Used by multiple characters
    public static readonly int IdleNum = Animator.StringToHash("IdleNum");
    public static readonly int XDirection = Animator.StringToHash("XDirection");
    public static readonly int HorizontalSpeed = Animator.StringToHash("HorizontalSpeed");
    public static readonly int VerticalSpeed = Animator.StringToHash("VerticalSpeed");
    public static readonly int IsGrounded = Animator.StringToHash("IsGrounded");
    public static readonly int Jump = Animator.StringToHash("Jump");
    public static readonly int Fall = Animator.StringToHash("Fall");
    public static readonly int Hang = Animator.StringToHash("Hang");
    public static readonly int ClimbLadder = Animator.StringToHash("ClimbLadder");
    public static readonly int ClimbLedge = Animator.StringToHash("ClimbLedge");
    public static readonly int GrabWall = Animator.StringToHash("GrabWall");
    public static readonly int Die = Animator.StringToHash("Die");

    // Used only by Newman
    public static readonly int Backflip = Animator.StringToHash("Backflip");
    public static readonly int JumpWall = Animator.StringToHash("JumpWall");
    public static readonly int ClimbRope = Animator.StringToHash("ClimbRope");
    public static readonly int SteppingDown = Animator.StringToHash("SteppingDown");
    public static readonly int StandingUp = Animator.StringToHash("StandingUp");
    public static readonly int Pickup = Animator.StringToHash("Pickup");
    public static readonly int StealthKill = Animator.StringToHash("StealthKill");
    public static readonly int ShootGun = Animator.StringToHash("ShootGun");
    public static readonly int ActivateCamo = Animator.StringToHash("ActivateCamo");
    public static readonly int PlaceMine = Animator.StringToHash("PlaceMine");
    public static readonly int Damaged = Animator.StringToHash("Damaged");
    public static readonly int Respawn = Animator.StringToHash("Respawn");
    
    // Used only by BabyBot
    public static readonly int Attack = Animator.StringToHash("Attack");

    // Used only by Olympus
    public static readonly int AttackHorizontal = Animator.StringToHash("AttackHorizontal");
    public static readonly int StealthDeath = Animator.StringToHash("StealthDeath");
    public static readonly int AcquiringTarget = Animator.StringToHash("AcquireTarget");
    public static readonly int TurnAround = Animator.StringToHash("TurnAround");
    public static readonly int AttackVertical = Animator.StringToHash("AttackVertical");
    public static readonly int Search = Animator.StringToHash("Search");

}
