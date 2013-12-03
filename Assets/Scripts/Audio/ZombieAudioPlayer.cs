using UnityEngine;
using System.Collections;

/// <summary>
/// Zombie audio player extends AudioPlayer to provide the Zombie an interface to play sounds effects.
/// </summary>
[AddComponentMenu("Audio/Zombie Audio Player")]
public class ZombieAudioPlayer : AudioPlayer
{
    public AudioClipGroup AttackAudio;
    public AudioClipGroup DeathAudio;
    public AudioClipGroup IdleAudio;
    public AudioClipGroup NoticeAudio;
    public AudioClipGroup RunningAudio;
	
	private bool _isIdling = false; //FIXME: MAKE IT SO THESE VARIABLES AREN'T NECESSSARY
	private bool _isRunning = false; //FIXME: MAKE IT SO THESE VARIABLES AREN'T NECESSARY

    private System.Random _random = new System.Random();
	
	void Start()
	{
		GameManager.Audio.Zombies.Add(this);
	}

    public override void Play(int number = -1)
    {
        PlayIdle();
    }

    public void PlayAttack()
    {
		_isIdling = false;
		_isRunning = false;
        int clipNumber = _random.Next(0, AttackAudio.Clips.Length);
		audio.loop = false;
        audio.clip = AttackAudio.Clips[clipNumber];
        audio.Play();
    }

    public void PlayDeath()
    {
		_isIdling = false;
		_isRunning = false;
        int clipNumber = _random.Next(0, DeathAudio.Clips.Length);
		audio.loop = false;
        audio.clip = DeathAudio.Clips[clipNumber];
        audio.Play();
    }

    public void PlayIdle()
    {
		if(_isIdling)
			return;
		
		_isIdling = true;
		_isRunning = false;
		
        int clipNumber = _random.Next(0, IdleAudio.Clips.Length);
		audio.loop = true;
        audio.clip = IdleAudio.Clips[clipNumber];
        audio.Play();
    }

    public void PlayNotice()
    {
		_isIdling = false;
		_isRunning = false;
        int clipNumber = _random.Next(0, NoticeAudio.Clips.Length);
		audio.loop = false;
        audio.clip = NoticeAudio.Clips[clipNumber];
        audio.Play();
    }

    public void PlayRunning()
    {
		if(_isRunning)
			return;
		
		_isRunning = true;
		_isIdling = false;
		
        int clipNumber = _random.Next(0, RunningAudio.Clips.Length);
		audio.loop = true;
        audio.clip = RunningAudio.Clips[clipNumber];
        audio.Play();
    }
}
