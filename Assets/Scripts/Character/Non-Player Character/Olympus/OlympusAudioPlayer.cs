using UnityEngine;
using System.Collections;

/// <summary>
/// Olympus audio player plays the sounds that an Olympus character makes.
/// </summary>
[AddComponentMenu("Audio/Sound Effects/Olympus Audio Player")]
public class OlympusAudioPlayer : AudioPlayer
{
    public AudioClip Idling;
    public AudioClip Noticing;
    public AudioClip Searching;
    public AudioClip FinishedSearching;
    public AudioClip Chasing;
    public AudioClip Jumping;
    public AudioClip Attacking;

}
