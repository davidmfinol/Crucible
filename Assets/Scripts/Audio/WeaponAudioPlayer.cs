using UnityEngine;
using System.Collections;

/// <summary>
/// Weapon audio player provides an interface for a player's weapon to produce sound.
/// </summary>
[AddComponentMenu("Audio/Weapon Audio Player")]
public class WeaponAudioPlayer : AudioPlayer
{
    public AudioClipGroup WeaponSoundEffects;

    public void Play(int attackID)
    {
        audio.clip = WeaponSoundEffects.Clips[attackID];
        audio.Play();
    }
}
