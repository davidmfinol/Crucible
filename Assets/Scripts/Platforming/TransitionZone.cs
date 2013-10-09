using UnityEngine;
using System.Collections.Generic;

/// <summary>
/// Transition zone defines an area in which a character can move between Zones.
/// </summary>
[RequireComponent(typeof(Collider))]
[AddComponentMenu("Platforming/Transition Zone")]
public class TransitionZone : MonoBehaviour
{
	// Whether this transistion is only used for AI calculation. This overrides the next two options.
	public bool AIOnly = false;
    // Whether the character must be above the floor of this transition zone in order to be able to transition
    public bool UsesFloorCheck = true;
    // Whether the character must be below the ceiling of this transition zone in order to be able to transition
    public bool UsesCeilingCheck = false;

    void OnTriggerEnter(Collider other)
    {
		if(AIOnly)
			return;
		
        CharacterAnimator character = other.GetComponent<CharacterAnimator>();
        if (character != null)
        {
            bool transit = false;
            if (UsesFloorCheck)
                transit = transit || (character.collider.bounds.center.y - character.Height / 2 >= collider.bounds.min.y);
            else if (UsesCeilingCheck) 
                transit = transit || (character.collider.bounds.center.y + character.Height/2 <= collider.bounds.max.y);
            character.CanTransitionZ = transit;
        }
    }
	
    void OnTriggerStay(Collider other)
    {
		if(AIOnly)
			return;
		
        CharacterAnimator character = other.GetComponent<CharacterAnimator>();
        if (character != null)
        {
            bool transit = false;
            if (UsesFloorCheck)
                transit = transit || (character.collider.bounds.center.y - character.Height / 2 >= collider.bounds.min.y);
            else if (UsesCeilingCheck)
                transit = transit || (character.collider.bounds.center.y + character.Height / 2 <= collider.bounds.max.y);
            character.CanTransitionZ = transit;
        }
    }

    void OnTriggerExit(Collider other)
    {
		if(AIOnly)
			return;
		
        CharacterAnimator character = other.GetComponent<CharacterAnimator>();
        if (character != null)
            character.CanTransitionZ = false;
    }
}