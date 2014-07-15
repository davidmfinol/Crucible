using UnityEngine;
using System.Collections;

/// <summary>
/// Newman audio player plays the sounds that the player character makes.
/// </summary>
[AddComponentMenu ("Audio/Sound Effects/Newman Audio Player")]
public class NewmanAudioPlayer : AudioPlayer
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

	//Weapon Sounds
	public AudioClip SparkplugCharge;
	public AudioClip SparkplugHit;
	public AudioClip SparkplugBeep;

}

