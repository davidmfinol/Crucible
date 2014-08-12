using UnityEngine;
using System.Collections;

/// <summary>
/// Olympus audio player plays the sounds that an Olympus character makes.
/// </summary>
[AddComponentMenu("Audio/Sound Effects/Olympus Audio Player")]
public class OlympusAudioPlayer : AudioPlayer
{
    // TODO: ORGANIZE THIS 
    public AudioClip Idling;
    public float IdlingVolume = 1.0f;
    public AudioClip Noticing;
    public float NoticingVolume = 1.0f;
    public AudioClip Searching;
    public float SearchingVolume = 1.0f;
    public AudioClip FinishedSearching;
    public float FinishedSearchingVolume = 1.0f;
    public AudioClip Chasing;
    public float ChasingVolume = 1.0f;
    public AudioClip[] Footsteps;
    public float FootstepsVolume = 1.0f;
    public AudioClip Jumping;
    public float JumpingVolume = 1.0f;
    public AudioClip Landing;
    public float LandingVolume = 1.0f;
    public AudioClip Attacking;
    public float AttackingVolume = 1.0f;

}
