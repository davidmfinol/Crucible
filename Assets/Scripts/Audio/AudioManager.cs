using UnityEngine;
using System.Collections.Generic;

/// <summary>
/// Audio manager is the central controller for all audio sources in a scene.
/// </summary>
[RequireComponent(typeof(DynamicMusicPlayer))]
[AddComponentMenu("Audio/Audio Manager")]
public class AudioManager : MonoBehaviour
{
	private List<ZombieAudioPlayer> _zombies;

    void Awake()
    {
		_zombies = new List<ZombieAudioPlayer>();
    }
	
	public List<ZombieAudioPlayer> Zombies
	{
		get { return _zombies; }
	}
	
    public enum AudioTypes
    {
        SPEECH,
        EFFECT,
        MUSIC,
        ZONE,
        INTERFACE
    }
}
