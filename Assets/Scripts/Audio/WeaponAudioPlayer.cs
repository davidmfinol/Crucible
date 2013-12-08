using UnityEngine;
using System.Collections;

/// <summary>
/// Weapon audio player provides an interface for a player's weapon to produce sound.
/// </summary>
[AddComponentMenu("Audio/Weapon Audio Player")]
public class WeaponAudioPlayer : AudioPlayer
{
	// TODO: DELETE THIS CLASS, SINCE ALL THE FUNCTIONALITY CAN BE HANDLED BY PARENT
    public AudioClipGroup WeaponSoundEffects;

    public override void Play(int attackID = -1)
    {
        audio.clip = WeaponSoundEffects.Clips[attackID];
        audio.Play();
    }
}
