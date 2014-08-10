using UnityEngine;
using System.Collections.Generic;

/// <summary>
/// Zone refers to a "Z Zone", effectively defining a 2D plane aligned to a z-axis value in which characters move.
/// The AI system makes heavy use of these zones for compartmentalizing areas.
/// </summary>
[RequireComponent(typeof(Collider))]
[AddComponentMenu("Platforming/Zone")]
public class Zone : MonoBehaviour
{
    // TODO: If inverse, pressing up means you go down in ZLevel
    public bool IsInverse = false;

    public void OnTriggerEnter(Collider other)
    {
        CharacterAnimator character = other.GetComponent<CharacterAnimator>();
        if (character != null) {
            character.Zones.Add(this);
            character.Zones.Sort(new CompareZonesByZValue());
        }

    }

    void OnTriggerExit(Collider other)
    {
        CharacterAnimator character = other.GetComponent<CharacterAnimator>();
        if (character != null) {
            character.Zones.Remove(this);
        }

    }
    
    public class CompareZonesByZValue : IComparer<Zone>
    {
        public int Compare(Zone zone1, Zone zone2)
        {
            return (int)(zone1.transform.position.z - zone2.transform.position.z);

        }

    }
    
}