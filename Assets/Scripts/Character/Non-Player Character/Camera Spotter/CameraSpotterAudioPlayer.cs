using UnityEngine;
using System.Collections;

/// <summary>
/// Camera spotter audio player plays the sound effect for the camera spotter enemy type.
/// </summary>
[AddComponentMenu ("Audio/Sound Effects/Camera Spotter Audio Player")]
public class CameraSpotterAudioPlayer : AudioPlayer
{
    public AudioClip Moving;
    public float MovingVolume = 1.0f;

    public AudioClip Still;
    public float StillVolume = 1.0f;

    public AudioClip Rotating;
    public float RotatingVolume = 1.0f;
    
}
