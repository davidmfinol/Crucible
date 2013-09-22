using UnityEngine;
using System.Collections.Generic;

/// <summary>
/// Zone refers to a "Z Zone", effectively defining a 2D plane aligned to a z-axis value in which characters move.
/// </summary>
[RequireComponent(typeof(Collider))]
[AddComponentMenu("Platforming/Zone")]
public class Zone : MonoBehaviour
{
	// If inverse, pressing up means you go down in ZLevel
    public bool IsInverse = false;

    public void OnTriggerEnter (Collider other)
    {
        CharacterAnimator character = other.GetComponent<CharacterAnimator>();
        if (character != null)
        {
            if (!IsInverse)
            {
                if (character.DesiredZ > transform.position.z)
                    character.Z_Lower = this;
                else if (character.DesiredZ < transform.position.z)
                    character.Z_Higher = this;
            }
            else
            {
                if (character.transform.position.y < transform.position.y) // reaching the zone from below
                    character.Z_Higher = this;
                else // coming down to the zone from above
                    character.Z_Lower = this;
            }
            character.Zones.Add(this);
        }
    }

    void OnTriggerExit(Collider other)
    {
        CharacterAnimator character = other.GetComponent<CharacterAnimator>();
        if (character != null)
        {
            if (character.Z_Lower == this)
                character.Z_Lower = null;
            if (character.Z_Higher == this)
                character.Z_Higher = null;
            character.Zones.Remove(this);
        }
    }
}