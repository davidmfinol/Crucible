using UnityEngine;
using System.Collections;

/// <summary>
/// Enemy audio player extends AudioPlayer to provide the Enemy an interface to play sounds effects.
/// </summary>
[AddComponentMenu("Audio/Enemy Audio Player")]
public class EnemyAudioPlayer : AudioPlayer
{
    public AudioClipGroup AttackAudio;
    public AudioClipGroup DeathAudio;
    public AudioClipGroup IdleAudio;
    public AudioClipGroup NoticeAudio;
    public AudioClipGroup RunningAudio;
	
	private bool _isIdling = false; //FIXME: MAKE IT SO THESE VARIABLES AREN'T NECESSSARY
	private bool _isRunning = false; //FIXME: MAKE IT SO THESE VARIABLES AREN'T NECESSARY

	// FIXME: Always use unity random instead of system random
    private System.Random _random = new System.Random();
	
	void Start()
	{
		GameManager.Audio.Enemies.Add(this);
	}

    public override void Play(int number = -1)
    {
        PlayIdle();
    }

    public void PlayAttack()
    {
		if (AttackAudio.Clips == null || AttackAudio.Clips.Length == 0)
			return;

		_isIdling = false;
		_isRunning = false;

        int clipNumber = _random.Next(0, AttackAudio.Clips.Length);
		audio.loop = false;
        audio.clip = AttackAudio.Clips[clipNumber];
        audio.Play();
    }

    public void PlayDeath()
	{
		if (DeathAudio.Clips == null || DeathAudio.Clips.Length == 0)
			return;

		_isIdling = false;
		_isRunning = false;

        int clipNumber = _random.Next(0, DeathAudio.Clips.Length);
		audio.loop = false;
        audio.clip = DeathAudio.Clips[clipNumber];
        audio.Play();
    }

    public void PlayIdle()
    {
		if(_isIdling || IdleAudio.Clips == null || IdleAudio.Clips.Length == 0)
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
		if (NoticeAudio.Clips == null || NoticeAudio.Clips.Length == 0)
			return;

		_isIdling = false;
		_isRunning = false;

        int clipNumber = _random.Next(0, NoticeAudio.Clips.Length);
		audio.loop = false;
        audio.clip = NoticeAudio.Clips[clipNumber];
        audio.Play();
    }

    public void PlayRunning()
    {
		if(_isRunning || RunningAudio.Clips == null || RunningAudio.Clips.Length == 0)
			return;
		
		_isRunning = true;
		_isIdling = false;
		
        int clipNumber = _random.Next(0, RunningAudio.Clips.Length);
		audio.loop = true;
        audio.clip = RunningAudio.Clips[clipNumber];
        audio.Play();
    }
}
