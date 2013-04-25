using UnityEngine;
using System.Collections.Generic;

public class TransitionZone : MonoBehaviour
{
    public bool IsRegular = true;
    public bool IsInverse = false;

    void OnTriggerEnter(Collider other)
    {
        CharacterStateMachineBase character = other.GetComponent<CharacterStateMachineBase>();
        if (character != null)
        {
            bool transit = false;
            if (IsRegular)
                transit = transit || (character.collider.bounds.center.y - character.Height / 2 >= collider.bounds.min.y);
            else if (IsInverse) 
                transit = transit || (character.collider.bounds.center.y + character.Height/2 <= collider.bounds.max.y);
            character.CanTransitionZ = transit;
        }
    }

    void OnTriggerStay(Collider other)
    {
        CharacterStateMachineBase character = other.GetComponent<CharacterStateMachineBase>();
        if (character != null)
        {
            bool transit = false;
            if (IsRegular)
                transit = transit || (character.collider.bounds.center.y - character.Height / 2 >= collider.bounds.min.y);
            else if (IsInverse)
                transit = transit || (character.collider.bounds.center.y + character.Height / 2 <= collider.bounds.max.y);
            character.CanTransitionZ = transit;
        }
    }

    void OnTriggerExit(Collider other)
    {
        CharacterStateMachineBase character = other.GetComponent<CharacterStateMachineBase>();
        if (character != null)
            character.CanTransitionZ = false;
    }
}
