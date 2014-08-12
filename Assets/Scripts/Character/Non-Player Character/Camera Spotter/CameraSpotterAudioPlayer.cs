using UnityEngine;
using System.Collections;

/// <summary>
/// Camera spotter audio player plays the sound effect for the camera spotter enemy type.
/// </summary>
[AddComponentMenu ("Audio/Sound Effects/Camera Spotter Audio Player")]
public class CameraSpotterAudioPlayer : AudioPlayer
{
    // Moving sound
    public AudioClip Moving;
    public float MovingVolume = 1.0f;

    // Still sound
    public AudioClip Still;
    public float StillVolume = 1.0f;

    // Rotating sound
    public AudioClip Rotating;
    public float RotatingVolume = 1.0f;
    
}
