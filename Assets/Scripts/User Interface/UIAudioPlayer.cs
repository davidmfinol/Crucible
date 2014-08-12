using UnityEngine;
using System.Collections;

/// <summary>
/// Player character audio player plays the sounds that the player character makes.
/// </summary>
[AddComponentMenu ("Audio/User Interface/UI Audio Player")]
public class UIAudioPlayer : AudioPlayer
{
    // TODO: ORGANIZE THIS
    public AudioClip MenuUp;
    public AudioClip MenuDown;
    public AudioClip SelectItem;
    public AudioClip DropoffItem;
    public AudioClip Crafting;
    public AudioClip CraftingZipper;
    public AudioClip NotACombination;

}
