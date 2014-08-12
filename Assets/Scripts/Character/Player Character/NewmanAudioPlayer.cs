using UnityEngine;
using System.Collections;

/// <summary>
/// Newman audio player plays the sounds that the player character makes.
/// </summary>
[AddComponentMenu ("Audio/Sound Effects/Newman Audio Player")]
public class NewmanAudioPlayer : AudioPlayer
{
    // Running sounds
    public AudioClip[] Running;
    public float RunningVolume = 1.0f;
    
    // Footstep sounds
    public AudioClip[] Footsteps;
    public float FootstepsVolume = 1.0f;
    
    // Backflip sound
    public AudioClip Backflip;
    public float BackflipVolume = 1.0f;
    
    // Jump sound
    public AudioClip Jump;
    public float JumpVolume = 1.0f;
    
    // Landing sound
    public AudioClip Landing;
    public float LandingVolume = 1.0f;
    
    // Landroll sound
    public AudioClip LandRoll;
    public float LandRollingVolume = 1.0f;
    
    // Wallgrab sounds
    public AudioClip WallGrab;
    public float WallGrabVolume = 1.0f;
    
    // Walljump sound
    public AudioClip WallJump;
    public float WallJumpVolume = 1.0f;
    
    // Craft sound
    public AudioClip Craft;
    public float CraftVolume = 1.0f;

    // ItemPickup sound
    public AudioClip ItemPickup;
    public float ItemPickupVolume = 1.0f;
    
    // Hit sound
    public AudioClip Hit;
    public float HitVolume = 1.0f;
    
    // Death sound
    public AudioClip Death;
    public float DeathVolume = 1.0f;

    // Sparkplug Sounds
    public AudioClip SparkplugCharge;
    public float SparkplugChargeVolume = 1.0f;
    public AudioClip SparkplugBeep;
    public float SparkplugBeepVolume = 1.0f;
    public AudioClip SparkplugHit;
    public float SparkplugHitVolume = 1.0f;

}

