using UnityEngine;
using System.Collections;

/// <summary>
/// Player character audio player plays the sounds that the player character makes.
/// </summary>
[AddComponentMenu ("Audio/PlayerCharacter Audio")]
public class PlayerCharacterAudioPlayer : AudioPlayer
{
	public AudioClip Attack;
    public AudioClip Hit;
    public AudioClip Jump;
    public AudioClip Craft;
    public AudioClip WallHit;
    public AudioClip WallKick;
    public AudioClip ItemPickup;
    public AudioClip[] Running;
    public AudioClip Flip;
    public AudioClip Landing;
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
		_audios[_currentAudio].volume = volume;
        _audios [_currentAudio].Play ();
        
        _currentAudio++;
        _currentAudio = _currentAudio % 2;

    }

}

