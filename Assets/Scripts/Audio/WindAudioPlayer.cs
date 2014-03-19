using UnityEngine;
using System.Collections;

/// <summary>
/// Wind audio player plays wind audio.
/// </summary>
[AddComponentMenu("Audio/Wind Audio Player")]
public class WindAudioPlayer : AudioPlayer
{
    public AudioClip[] WindNoises;
    public float PercentCompleteToNext;
    public float MaxTimeBetweenWinds;
    public float MaxPanSpread;
    private AudioSource[] _audios;
    private int _currentAudio;

    void Start ()
    {
        _audios = GetComponents<AudioSource> ();
        foreach (AudioSource audiosource in _audios) {
            audiosource.volume = 0.09f;
        }
        _currentAudio = 0;
        StartCoroutine ("DelayedWindPlay");

    }

    void Update ()
    {
        foreach (AudioSource audiosource in _audios) {
            if (audiosource.pan >= 0)
                audiosource.pan += 0.05f * Time.deltaTime;
            else
                audiosource.pan -= 0.05f * Time.deltaTime;
        }

    }

    IEnumerator DelayedWindPlay ()
    {
        while (true) {
            // First, decide when to play the wind
            float timeToPlay = Random.Range (0.0f, MaxTimeBetweenWinds);
            yield return new WaitForSeconds (timeToPlay);

            // Then play a random wind sound
            int windex = Random.Range (0, WindNoises.Length);
            float pan = Random.Range (-MaxPanSpread, MaxPanSpread);
            _audios [_currentAudio].clip = WindNoises [windex];
            _audios [_currentAudio].pan = pan;
            _audios [_currentAudio].Play ();

            // Then wait until this wind sound is nearing completion
            float normalizedTime = ((float)_audios [_currentAudio].timeSamples) / ((float)_audios [_currentAudio].clip.samples);
            while (normalizedTime < PercentCompleteToNext) {
                normalizedTime = ((float)_audios [_currentAudio].timeSamples) / ((float)_audios [_currentAudio].clip.samples);
                yield return null;
            }

            _currentAudio++;
            _currentAudio = _currentAudio % 2;
        }

    }

}
