using UnityEngine;
using System.Collections;

[AddComponentMenu ("Audio/Tutorial Audio Player")]
public class TutorialAudioPlayer : AudioPlayer
{
    public AudioClip DoorSlam;
    public AudioClip DoorOpen;
    public AudioClip OlympusFalling;
	public AudioClip FanSpinning;
	public AudioClip FanStopping;
    
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
