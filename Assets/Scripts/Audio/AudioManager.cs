using UnityEngine;
using System.Collections;

/// <summary>
/// Audio manager is the central controller for all audio sources in a scene.
/// </summary>
[AddComponentMenu("Audio/Audio Manager")]
public class AudioManager : MonoBehaviour
{
	// TODO: ATTACH THIS TO THE GAMELEVEL PREFAB?
    public enum AudioTypes
    {
        SPEECH,
        EFFECT,
        MUSIC,
        ZONE,
        INTERFACE
    }

    private AudioPlayer[] allAudioSources;

    void Awake()
    {
        allAudioSources = FindObjectsOfType(typeof(AudioPlayer)) as AudioPlayer[];// slow....
        // TODO: set them up correctly
		// should also look up all audio sources and make sure they have a corresponding audioplayer
    }
}
