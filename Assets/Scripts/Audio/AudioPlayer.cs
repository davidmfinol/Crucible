using UnityEngine;
using System.Collections;

[RequireComponent(typeof(AudioSource))]
public class AudioPlayer : MonoBehaviour
{
    public AudioSettings.AudioTypes type;

    // TODO: MAKE SETTINGS OF AUDIOSOURCE MATCH TYPE IN AUDIOSETTINGS

    public virtual void Play()
    {
        audio.Play();
    }
}
