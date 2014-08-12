using UnityEngine;
using System.Collections;

/// <summary>
/// Story trigger sends a message upwards it's containing gameobject to commence a specific story event.
/// </summary>
[RequireComponent(typeof(Collider))]
[AddComponentMenu("Story Events/Story Trigger")]
public class StoryTrigger : MonoBehaviour
{
    // Identifies which story even is triggered.
    public string Message;

    void OnTriggerEnter(Collider other)
    {
        CharacterAnimator player = other.GetComponent<CharacterAnimator>();
        if (other.CompareTag("Player") && player != null && !player.IsDead) {
            SendMessageUpwards(Message);
        }

    }

}
