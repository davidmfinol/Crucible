using UnityEngine;
using System.Collections;

/// <summary>
/// Ragdoll audio player plays audio on ragdoll.
/// </summary>
[RequireComponent(typeof(Rigidbody))]
[AddComponentMenu("Audio/Sound Effects/Ragdoll Audio Player")]
public class RagdollAudioPlayer : AudioPlayer
{
    public AudioClip Hit;
    public float HitVolume = 1.0f;

    void OnCollisionEnter(Collision collision)
    {
        if (collision.relativeVelocity.magnitude > 10) {
            Play(Hit, HitVolume);
        }
        
    }

}
