using UnityEngine;
using System.Collections;

/// <summary>
/// Wind audio player plays wind audio.
/// </summary>
[AddComponentMenu("Audio/Area/Wind Audio Player")]
public class WindAudioPlayer : AudioPlayer
{
    public AudioClip[] WindNoises;
    public float PercentCompleteToNext;
    public float MaxTimeBetweenWinds;
    public float MaxPanSpread;

    protected override void OnStart ()
    {
        foreach (AudioSource audioSource in Audios)
            audioSource.volume = 0.09f;
        StartCoroutine (DelayedWindPlay ());

    }

    void Update ()
    {
        foreach (AudioSource audioSource in Audios) {
            if (audioSource.pan >= 0)
                audioSource.pan += 0.05f * Time.deltaTime;
            else
                audioSource.pan -= 0.05f * Time.deltaTime;
        }

    }

    public IEnumerator DelayedWindPlay ()
    {
        while (true) {
            // First, decide when to play the wind
            float timeToPlay = Random.Range (0.0f, MaxTimeBetweenWinds);
            yield return new WaitForSeconds (timeToPlay);

            // Then play a random wind sound
            int windex = Random.Range (0, WindNoises.Length);
            float pan = Random.Range (-MaxPanSpread, MaxPanSpread);
            Audio.clip = WindNoises [windex];
            Audio.pan = pan;
            Audio.Play ();

            // Then wait until this wind sound is nearing completion
            float normalizedTime = ((float)Audio.timeSamples) / ((float)Audio.clip.samples);
            while (normalizedTime < PercentCompleteToNext) {
                normalizedTime = ((float)Audio.timeSamples) / ((float)Audio.clip.samples);
                yield return null;
            }

            AudioIndex = AudioIndex + 1;
        }

    }

}
