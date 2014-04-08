using UnityEngine;
using System.Collections;

/// <summary>
/// Stealth kill trigger defines the area in which the player can get behind a robot and do a stealthkill on it.
/// </summary>
[RequireComponent(typeof(BoxCollider))]
[AddComponentMenu("Health/Stealth Kill Trigger")]
public class StealthKillTrigger : MonoBehaviour
{
    EnemyAI _ai;

    void Start()
    {
        _ai = transform.parent.GetComponent<EnemyAI> ();
    }

    void OnTriggerEnter(Collider other)
    {
        PlayerCharacterAnimator player = other.GetComponent<PlayerCharacterAnimator> ();
        if (player != null && _ai != null && _ai.Awareness == EnemyAI.AwarenessLevel.Unaware)
            player.StealthKillable = _ai.Animator;
    }

    void OnTriggerExit(Collider other)
    {
        PlayerCharacterAnimator player = other.GetComponent<PlayerCharacterAnimator> ();
        if (player != null)
            player.StealthKillable = null;
    }

}
