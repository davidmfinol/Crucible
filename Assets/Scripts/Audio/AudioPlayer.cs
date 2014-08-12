using UnityEngine;
using System.Collections.Generic;

/// <summary>
/// Audio player is this game's wrapper class for AudioSource.
/// It works with our system to set up a uniform audio control scheme.
/// See the AudioManager Class.
/// </summary>
[RequireComponent(typeof(AudioSource))]
[AddComponentMenu("Audio/Audio Player")]
public class AudioPlayer : MonoBehaviour
{
    // TODO: public AudioManager.AudioTypes Type;
    // TODO: add subtitle requirement for each sound public Subtitle[] AssociatedSubtitles;

    // Rolloff settings
    [SerializeField]
    private AudioRolloffMode
        rolloffMode = AudioRolloffMode.Linear;
    [SerializeField]
    private float
        maxDistance = 100;
    [SerializeField]
    private float
        minDistance = 1;
    
    //Audiosource switching to not clip sounds
    private AudioSource[] _audios;
    private int _audioIndex;
    
    void Start()
    {
        _audios = GetComponents<AudioSource>();
        foreach (AudioSource audioSource in _audios) {
            audioSource.rolloffMode = rolloffMode;
            audioSource.maxDistance = maxDistance;
            audioSource.minDistance = minDistance;
        }
        
        OnStart();
        
    }
    
    protected virtual void OnStart()
    {
        // Child classes may override to do things on Start()
    }
    
    public void Play(AudioClip clip, float volume)
    {
        Audio.clip = clip;
        Audio.volume = volume;
        Audio.loop = false;
        Audio.Play();
        
        AudioIndex = AudioIndex + 1;
        
    }
    
    public void PlayLoop(AudioClip clip, float volume)
    {
        Audio.clip = clip;
        Audio.volume = volume;
        Audio.loop = true;
        Audio.Play();
        
        AudioIndex = AudioIndex + 1;
        
    }
    
    public bool IsPlaying(AudioClip clip)
    {
        foreach (AudioSource audioSource in Audios) {
            if (audioSource.clip == clip && audioSource.isPlaying) {
                return true;
            }
        }
        return false;
        
    }
    
    public void DelayedStop()
    {
        for (int i = 0; i < Audios.Length; i++) {
            Audios [i].loop = false;
        }
        
    }
    
    public void Stop()
    {
        for (int i = 0; i < Audios.Length; i++) {
            Audios [i].Stop();
        }
        
    }
    
    public AudioRolloffMode RolloffMode {
        get { return rolloffMode; }
        set {
            rolloffMode = value;
            foreach (AudioSource audioSource in Audios) {
                audioSource.rolloffMode = rolloffMode;
            }
        }
    }
    
    public float MaxDistance {
        get { return maxDistance; }
        set {
            maxDistance = value;
            foreach (AudioSource audioSource in Audios) {
                audioSource.maxDistance = maxDistance;
            }
        }
    }
    
    public float MinDistance {
        get { return minDistance; }
        set {
            minDistance = value;
            foreach (AudioSource audioSource in Audios) {
                audioSource.minDistance = minDistance;
            }
        }
    }
    
    protected AudioSource[] Audios {
        get {
            if (_audios == null) {
                _audios = GetComponents<AudioSource>();
            }
            return _audios;
        }
    }
    
    protected int AudioIndex {
        get { return _audioIndex; }
        set { _audioIndex = value % _audios.Length; }
    }
    
    public AudioSource Audio {
        get { return Audios [AudioIndex]; }
    }
}
