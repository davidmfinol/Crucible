using UnityEngine;
using System.Collections.Generic;

/// <summary>
/// Hangable object defines an object that a player can hang off.
/// </summary>
[RequireComponent(typeof(Collider))]
[AddComponentMenu("Platforming/Hangable Object")]
public class HangableObject : MonoBehaviour
{
    public bool FacesZAxis = true;

    public virtual void OnTriggerEnter(Collider other)
    {
        CharacterFiniteStateMachineBase character = other.GetComponent<CharacterFiniteStateMachineBase>();
        if (character != null)
            character.AddHangTarget(this);
    }

    public virtual void OnTriggerExit(Collider other)
    {
        CharacterFiniteStateMachineBase character = other.GetComponent<CharacterFiniteStateMachineBase>();
        if (character != null)
            character.RemoveHangTarget(this);
    }

    public virtual void OnCollisionEnter(Collision collision)
    {
        CharacterFiniteStateMachineBase character = collision.gameObject.GetComponent<CharacterFiniteStateMachineBase>();
        if (character != null)
            character.AddHangTarget(this);
    }

    public virtual void OnCollisionExit(Collision collision)
    {
        CharacterFiniteStateMachineBase character = collision.gameObject.GetComponent<CharacterFiniteStateMachineBase>();
        if (character != null)
            character.RemoveHangTarget(this);
    }

    public virtual bool DoesFaceZAxis()
    {
        return FacesZAxis;
    }
    public virtual bool DoesFaceXAxis()
    {
        return !FacesZAxis;
    }
}
