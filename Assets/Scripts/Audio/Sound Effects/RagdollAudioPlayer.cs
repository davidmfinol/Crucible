using UnityEngine;
using System.Collections;

/// <summary>
/// Ragdoll audio player.
/// </summary>
[RequireComponent(typeof(Rigidbody))]
[RequireComponent(typeof(AudioSource))]
[AddComponentMenu("Audio/Sound Effects/Ragdoll Audio Player")]
public class RagdollAudioPlayer : AudioPlayer
{
    public AudioClip Hit;
    public float HitVolume = 1.0f;

    void OnCollisionEnter (Collision collision)
    {
        if (collision.relativeVelocity.magnitude > 10)
            Play(Hit, HitVolume);
        
    }

}
