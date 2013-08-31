using UnityEngine;
using System.Collections;

/// <summary>
/// Climbable object defines an object that a character can climb up.
/// </summary>
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
