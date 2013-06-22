using UnityEngine;
using System.Collections;

public class ZombieAudioSource : AudioPlayer
{
    public AudioClipGroup AttackAudio;
    public AudioClipGroup DeathAudio;
    public AudioClipGroup IdleAudio;
    public AudioClipGroup NoticeAudio;
    public AudioClipGroup RunningAudio;

    public void Play(ZombieFSM_IState state)
    {
        //if(
    }
}
