using UnityEngine;
using System.Collections;

[RequireComponent(typeof(AudioSource))]
public class WeaponAudioSource : AudioPlayer
{
    public AudioClipGroup WeaponSoundEffects;

    public void Play(int attackID)
    {
        audio.clip = WeaponSoundEffects.Clips[attackID];
        audio.Play();
    }
}
