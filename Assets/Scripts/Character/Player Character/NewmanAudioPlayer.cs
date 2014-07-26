using UnityEngine;
using System.Collections;

/// <summary>
/// Newman audio player plays the sounds that the player character makes.
/// </summary>
[AddComponentMenu ("Audio/Sound Effects/Newman Audio Player")]
public class NewmanAudioPlayer : AudioPlayer
{
    public AudioClip[] Running;
    public float RunningVolume = 1.0f;

    public AudioClip[] Footsteps;
    public float FootstepsVolume = 1.0f;

    public AudioClip Jump;
    public float JumpVolume = 1.0f;
    
    public AudioClip Backflip;
    public float BackflipVolume = 1.0f;
    
    public AudioClip WallGrab;
    public float WallGrabVolume = 1.0f;
    
    public AudioClip WallJump;
    public float WallJumpVolume = 1.0f;

    public AudioClip Landing;
    public float LandingVolume = 1.0f;
    
    public AudioClip Rolling;
    public float RollingVolume = 1.0f;

    public AudioClip Hit;
    public float HitVolume = 1.0f;

    public AudioClip ItemPickup;
    public float ItemPickupVolume = 1.0f;

    public AudioClip Craft;
    public float CraftVolume = 1.0f;

    public AudioClip Death;
    public float DeathVolume = 1.0f;

	//Weapon Sounds
    public AudioClip SparkplugCharge;
    public float SparkplugChargeVolume = 1.0f;

    public AudioClip SparkplugHit;
    public float SparkplugHitVolume = 1.0f;

    public AudioClip SparkplugBeep;
    public float SparkplugBeepVolume = 1.0f;

}

