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
    public enum AudioTypes
    {
        SPEECH,
        EFFECT,
        MUSIC,
        AREA,
        INTERFACE
    }

    // TODO

	public bool Ready
	{
		get { return true; }
	}
}
