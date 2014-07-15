using UnityEngine;
using System.Collections;

/// <summary>
/// Babybot audio player plays the sound effect that a babybot character makes.
/// </summary>
[AddComponentMenu ("Audio/Sound Effects/BabyBot Audio Player")]
public class BabybotAudioPlayer : AudioPlayer
{
    public AudioClip Giggle;
    public AudioClip Jump;
    public AudioClip SlowAwake;
    public AudioClip SlowAwake2;
    public AudioClip FastAwake;
    public AudioClip AlmostAwake;
    public AudioClip Running;
	public AudioClip Snoring;

}
