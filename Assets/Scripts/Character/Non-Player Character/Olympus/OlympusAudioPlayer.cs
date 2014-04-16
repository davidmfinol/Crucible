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
    public AudioClip Jumping;
	public AudioClip Idling;

	//Audiosource switching to not clip sounds
	private int _currentAudio;
	private AudioSource[] _audios;
	
	void Start ()
	{
		_currentAudio = 0;
		_audios = GetComponents<AudioSource> ();
		
	}
	
	public override void Play (AudioClip audio, float volume)
	{
		//Switches between audio sources to avoid clipping the sounds
		_audios [_currentAudio].clip = audio;
		_audios [_currentAudio].volume = volume;
		_audios [_currentAudio].Play ();
		
		_currentAudio++;
		_currentAudio = _currentAudio % 2;
		
	}

}
