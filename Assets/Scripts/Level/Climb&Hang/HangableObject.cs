using UnityEngine;
using System.Collections.Generic;

// This script must be attached to an object that a player can hang off
public class HangableObject : MonoBehaviour
{
    public bool FacesZAxis = true;

    public virtual void OnTriggerStay(Collider other)
    {
        CharacterFiniteStateMachineBase character = other.GetComponent<CharacterFiniteStateMachineBase>();
        if (character != null && character.PreviousHangTarget != this && character.ZLevel == transform.position.z)
                character.ActiveHangTarget = this;
    }

    public virtual void OnTriggerExit(Collider other)
    {
        CharacterFiniteStateMachineBase character = other.GetComponent<CharacterFiniteStateMachineBase>();
        if (character != null && character.ActiveHangTarget == this)
            character.ActiveHangTarget = null;
    }

    public virtual void OnCollisionStay(Collision collision)
    {
        CharacterFiniteStateMachineBase character = collision.gameObject.GetComponent<CharacterFiniteStateMachineBase>();
        if (character != null && character.PreviousHangTarget != this && character.ZLevel == transform.position.z)
            character.ActiveHangTarget = this;
    }

    public virtual void OnCollisionExit(Collision collision)
    {
        CharacterFiniteStateMachineBase character = collision.gameObject.GetComponent<CharacterFiniteStateMachineBase>();
        if (character != null && character.ActiveHangTarget == this)
            character.ActiveHangTarget = null;
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
