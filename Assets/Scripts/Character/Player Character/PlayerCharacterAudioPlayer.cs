using UnityEngine;
using System.Collections;

/// <summary>
/// Player character audio player plays the sounds that the player character makes.
/// </summary>
[AddComponentMenu ("Audio/PlayerCharacter Audio")]
public class PlayerCharacterAudioPlayer : AudioPlayer
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
    public AudioClip Landing;

	//Weapon Sounds
	public AudioClip SparkplugCharge;
	public AudioClip SparkplugHit;
	public AudioClip SparkplugBeep;

}

