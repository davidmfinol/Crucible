using UnityEngine;
using System.Collections;

[RequireComponent(typeof(AudioSource))]
[AddComponentMenu("Audio/Audio Player")]
public class AudioPlayer : MonoBehaviour
{
    public AudioSettings.AudioTypes type;

    // TODO: MAKE SETTINGS OF AUDIOSOURCE MATCH TYPE IN AUDIOSETTINGS

    public virtual void Play()
    {
        audio.Play();
    }
}
