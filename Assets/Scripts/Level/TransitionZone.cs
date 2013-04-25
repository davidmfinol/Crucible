using UnityEngine;
using System.Collections.Generic;

public class TransitionZone : MonoBehaviour
{
    public bool IsInverse = false;

    void OnTriggerEnter(Collider other)
    {
        CharacterStateMachineBase character = other.GetComponent<CharacterStateMachineBase>();
        if (character != null)
        {
            if (!IsInverse)
                character.CanTransitionZ = character.collider.bounds.center.y - character.Height/2 >= collider.bounds.min.y;
            else
                character.CanTransitionZ = character.collider.bounds.center.y + character.Height/2 <= collider.bounds.max.y;
        }
    }

    void OnTriggerStay(Collider other)
    {
        CharacterStateMachineBase character = other.GetComponent<CharacterStateMachineBase>();
        if (character != null)
        {
            if (!IsInverse)
                character.CanTransitionZ = character.collider.bounds.center.y - character.Height / 2 >= collider.bounds.min.y;
            else
                character.CanTransitionZ = character.collider.bounds.center.y + character.Height / 2 <= collider.bounds.max.y;
        }
    }

    void OnTriggerExit(Collider other)
    {
        CharacterStateMachineBase character = other.GetComponent<CharacterStateMachineBase>();
        if (character != null)
            character.CanTransitionZ = false;
    }
}
