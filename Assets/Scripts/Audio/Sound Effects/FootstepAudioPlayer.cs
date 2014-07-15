using UnityEngine;
using System.Collections;

/// <summary>
/// Footstep audio player plays the sounds that comes from characters' feet.
/// </summary>
[AddComponentMenu("Audio/Sound Effects/Footstep Audio Player")]
public class FootstepAudioPlayer : AudioPlayer
{
    public float DecayTime = 1;
    private float _existTime = 0;
    public AudioClip[] Footsteps;
    public AudioClip Landing;

    void Update ()
    {
        _existTime += Time.deltaTime;
        if (_existTime > DecayTime)
            Destroy (this.gameObject);

    }

    public void PlayRandomFootstep ()
    {
        if (Footsteps.Length == 0)
            Debug.LogWarning ("Trying to play footsteps but none set for " + gameObject);
        int index = (int)Random.Range (0, Footsteps.Length);

        Play (Footsteps [index], 1.0f);

    }

    public void PlayLanding ()
    {
        Play(Landing, 1.0f);

    }
}
