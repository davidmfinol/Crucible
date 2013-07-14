using UnityEngine;
using System.Collections;

public class AudioManager : MonoBehaviour
{
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
        // set them up correctly
    }
}
