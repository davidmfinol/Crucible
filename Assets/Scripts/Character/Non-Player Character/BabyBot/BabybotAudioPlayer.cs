using UnityEngine;
using System.Collections;

/// <summary>
/// Babybot audio player plays the sound effect that a babybot character makes.
/// </summary>
[AddComponentMenu ("Audio/BabyBot Audio")]
public class BabybotAudioPlayer : AudioPlayer
{
    public AudioClip Giggle;
    public AudioClip Jump;
    public AudioClip SlowAwake;
    public AudioClip SlowAwake2;
    public AudioClip FastAwake;
    public AudioClip AlmostAwake;
    public AudioClip Running;
    public AudioClip Landing;
	public AudioClip Snoring;

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
