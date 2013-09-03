using UnityEngine;
using System.Collections.Generic;

/// <summary>
/// Transition zone defines an area in which a character can move between Zones.
/// </summary>
public class TransitionZone : MonoBehaviour
{
	// Whether this transistion is only used for AI calculation. This overrides the next two options.
	public bool AIOnly = false;
    // Whether the character must be above the floor of this transition zone in order to be able to transition
    public bool UsesFloorCheck = true;
    // Whether the character must be below the ceiling of this transition zone in order to be able to transition
    public bool UsesCeilingCheck = false;

    public void OnTriggerEnter(Collider other)
    {
		if(AIOnly)
			return;
		
        CharacterFiniteStateMachineBase character = other.GetComponent<CharacterFiniteStateMachineBase>();
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
	
    public void OnTriggerStay(Collider other)
    {
		if(AIOnly)
			return;
		
        Zone zone = GetComponent<Zone>();
        if (zone != null)
            zone.OnTriggerEnter(other);
        CharacterFiniteStateMachineBase character = other.GetComponent<CharacterFiniteStateMachineBase>();
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

    public void OnTriggerExit(Collider other)
    {
		if(AIOnly)
			return;
		
        CharacterFiniteStateMachineBase character = other.GetComponent<CharacterFiniteStateMachineBase>();
        if (character != null)
            character.CanTransitionZ = false;
    }
}
