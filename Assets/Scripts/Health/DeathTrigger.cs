using UnityEngine;
using System.Collections;

/// <summary>
/// Death trigger is attached to a game object that will automatically trigger an instant death.
/// </summary>
[RequireComponent(typeof(Collider))]
[AddComponentMenu("Health/Death Trigger")]
public class DeathTrigger : MonoBehaviour
{
    // Triggers death
    void OnTriggerEnter(Collider other)
    {
        CharacterAnimator animator = other.GetComponent<CharacterAnimator>();
        if (animator != null) {
            animator.OnDeath();
        }

    }

    void OnCollisionEnter(Collision collision)
    {
        OnTriggerEnter(collision.collider);

    }

    // We'll draw a gizmo in the scene view, so it can be seen
    void OnDrawGizmos()
    {
        Gizmos.DrawIcon(transform.position, "Skull and Crossbones Icon.tif");

    }
}
