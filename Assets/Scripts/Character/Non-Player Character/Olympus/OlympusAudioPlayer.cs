using UnityEngine;
using System.Collections;

/// <summary>
/// Olympus audio player plays the sounds that an Olympus character makes.
/// </summary>
[AddComponentMenu("Audio/Olympus Audio Player")]
public class OlympusAudioPlayer : AudioPlayer
{
	public AudioClip Noticing;
	public AudioClip Searching;
	public AudioClip Attacking;
	public AudioClip FinishedSearching;
	public AudioClip Chasing;
	public AudioClip Landing;
}
