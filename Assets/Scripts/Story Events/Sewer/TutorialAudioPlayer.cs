using UnityEngine;
using System.Collections;

/// <summary>
/// Tutorial audio player plays the audio for the door and fan objects in the tutorial part of the sewer.
/// </summary>
[AddComponentMenu ("Audio/Area/Tutorial Audio Player")]
public class TutorialAudioPlayer : AudioPlayer
{
    public AudioClip DoorSlam;
    public float DoorSlamVolume = 1.0f;

    public AudioClip DoorOpen;
    public float DoorOpenVolume = 1.0f;

    public AudioClip OlympusFalling;
    public float OlympusFallingVolume = 1.0f;

    public AudioClip FanSpinning;
    public float FanSpinningVolume = 1.0f;

    public AudioClip FanStopping;
    public float FanStoppingVolume = 1.0f;

}
