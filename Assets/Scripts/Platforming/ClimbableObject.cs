using UnityEngine;
using System.Collections;

// This script must be attached to an object that a character can climb up
public class ClimbableObject : HangableObject
{
    public override void OnTriggerEnter(Collider other)
    {
        CharacterFiniteStateMachineBase character = other.GetComponent<CharacterFiniteStateMachineBase>();
        if (character != null)
            character.AddHangTarget(this);
    }

    public override void OnTriggerExit(Collider other)
    {
        CharacterFiniteStateMachineBase character = other.GetComponent<CharacterFiniteStateMachineBase>();
        if (character != null)
            character.RemoveHangTarget(this);
    }
}
