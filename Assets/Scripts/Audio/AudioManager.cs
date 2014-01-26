using UnityEngine;
using System.Collections.Generic;

/// <summary>
/// Audio manager is the central controller for all audio sources in a scene.
/// </summary>
[RequireComponent(typeof(DynamicMusicPlayer))]
[RequireComponent(typeof(SubtitlesManager))]
[AddComponentMenu("Audio/Audio Manager")]
public class AudioManager : MonoBehaviour
{
	private List<EnemyAudioPlayer> _enemies;

    void Awake()
    {
		_enemies = new List<EnemyAudioPlayer>();
    }
	
	public List<EnemyAudioPlayer> Enemies
	{
		get { return _enemies; }
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
