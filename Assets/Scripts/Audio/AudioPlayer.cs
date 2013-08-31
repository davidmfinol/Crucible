using UnityEngine;
using System.Collections;

/// <summary>
/// Audio player is this game's wrapper class for AudioSource.
/// It works with our system to set up a uniform audio control scheme.
/// See the AudioManager Class.
/// </summary>
[RequireComponent(typeof(AudioSource))]
[AddComponentMenu("Audio/Audio Player")]
public class AudioPlayer : MonoBehaviour
{
    public AudioManager.AudioTypes type;

    // TODO: MAKE SETTINGS OF AUDIOSOURCE MATCH TYPE IN AudioManager.AudioTypes type

    public virtual void Play()
    {
        audio.Play();
    }
}
