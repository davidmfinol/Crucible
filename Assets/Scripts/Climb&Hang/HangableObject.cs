using UnityEngine;
using System.Collections.Generic;

// This script must be attached to an object that a player can hang off
public class HangableObject : MonoBehaviour
{
    public bool MultiZone = true;

    public virtual void OnTriggerStay(Collider other)
    {
        PlayerCharacterFSM character = other.GetComponent<PlayerCharacterFSM>();
        if (character != null && character.PreviousHangTarget != this && character.ZLevel == transform.position.z)
                character.ActiveHangTarget = this;
    }

    public virtual void OnTriggerExit(Collider other)
    {
        PlayerCharacterFSM character = other.GetComponent<PlayerCharacterFSM>();
        if (character != null && character.ActiveHangTarget == this)
            character.ActiveHangTarget = null;
    }

    public virtual void OnCollisionStay(Collision collision)
    {
        PlayerCharacterFSM character = collision.gameObject.GetComponent<PlayerCharacterFSM>();
        if (character != null && character.PreviousHangTarget != this && character.ZLevel == transform.position.z)
            character.ActiveHangTarget = this;
    }

    public virtual void OnCollisionExit(Collision collision)
    {
        PlayerCharacterFSM character = collision.gameObject.GetComponent<PlayerCharacterFSM>();
        if (character != null && character.ActiveHangTarget == this)
            character.ActiveHangTarget = null;
    }

    public virtual bool IsMultiZone()
    {
        return MultiZone;
    }
    public virtual bool IsSingleZone()
    {
        return !MultiZone;
    }
}
