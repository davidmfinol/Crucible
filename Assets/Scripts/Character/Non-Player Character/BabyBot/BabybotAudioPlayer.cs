using UnityEngine;
using System.Collections;

/// <summary>
/// Babybot audio player plays the sound effect that a babybot character makes.
/// </summary>
[AddComponentMenu ("Audio/Sound Effects/BabyBot Audio Player")]
public class BabybotAudioPlayer : AudioPlayer
{
    public AudioClip Giggle;
    public float GiggleVolume = 1.0f;

    public AudioClip Jump;
    public float JumpVolume = 1.0f;

	public AudioClip Snoring;
    public float SnoringVolume = 1.0f;

}
