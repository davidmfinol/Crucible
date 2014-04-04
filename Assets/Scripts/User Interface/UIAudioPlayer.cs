using UnityEngine;
using System.Collections;

/// <summary>
/// Player character audio player plays the sounds that the player character makes.
/// </summary>
[AddComponentMenu ("Audio/UI Audio")]
public class UIAudioPlayer : AudioPlayer
{
    public AudioClip MenuUp;
    public AudioClip MenuDown;
    public AudioClip SelectItem;
    public AudioClip DropoffItem;
    public AudioClip Crafting;
    public AudioClip NotACombination;

}
