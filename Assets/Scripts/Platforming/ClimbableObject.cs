using UnityEngine;
using System.Collections;

/// <summary>
/// Climbable object defines an object that a character can climb up.
/// Climbable object must be further specified (i.e. extended by ladder, pipe).
/// </summary>
public abstract class ClimbableObject : HangableObject
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
