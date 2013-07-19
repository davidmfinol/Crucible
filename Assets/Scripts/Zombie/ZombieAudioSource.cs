using UnityEngine;
using System.Collections;

public class ZombieAudioSource : AudioPlayer
{
    public AudioClipGroup AttackAudio;
    public AudioClipGroup DeathAudio;
    public AudioClipGroup IdleAudio;
    public AudioClipGroup NoticeAudio;
    public AudioClipGroup RunningAudio;

    private System.Random _random = new System.Random();

    public override void Play()
    {
        PlayIdle();
    }

    public void PlayAttack()
    {
        int clipNumber = _random.Next(0, AttackAudio.Clips.Length);
		audio.loop = false;
        audio.clip = AttackAudio.Clips[clipNumber];
        audio.Play();
    }

    public void PlayDeath()
    {
        int clipNumber = _random.Next(0, DeathAudio.Clips.Length);
		audio.loop = false;
        audio.clip = DeathAudio.Clips[clipNumber];
        audio.Play();
    }

    public void PlayIdle()
    {
        int clipNumber = _random.Next(0, IdleAudio.Clips.Length);
		audio.loop = true;
        audio.clip = IdleAudio.Clips[clipNumber];
        audio.Play();
    }

    public void PlayNotice()
    {
        int clipNumber = _random.Next(0, NoticeAudio.Clips.Length);
		audio.loop = false;
        audio.clip = NoticeAudio.Clips[clipNumber];
        audio.Play();
    }

    public void PlayRunning()
    {
        int clipNumber = _random.Next(0, RunningAudio.Clips.Length);
		audio.loop = true;
        audio.clip = RunningAudio.Clips[clipNumber];
        audio.Play();
    }
}
