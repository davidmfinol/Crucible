using UnityEngine;
using System.Collections;

/// <summary>
/// Audio clip group represents a collection of audio clips that are somehow used together.
/// See corresponding AudioManager/AudioPlayer for how the audio clips are used.
/// </summary>
[AddComponentMenu("Audio/Audio Clip Group")]
public class AudioClipGroup : MonoBehaviour
{
    public AudioClip[] Clips;
}
