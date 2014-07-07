using UnityEngine;
using System.Collections;

/// <summary>
/// Tutorial audio player plays the audio for the door and fan objects in the tutorial part of the sewer.
/// </summary>
[AddComponentMenu ("Audio/Tutorial Audio Player")]
public class TutorialAudioPlayer : AudioPlayer
{
    public AudioClip DoorSlam;
    public AudioClip DoorOpen;
    public AudioClip OlympusFalling;
	public AudioClip FanSpinning;
	public AudioClip FanStopping;

}
