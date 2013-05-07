using UnityEngine;
using System.Collections.Generic;

// This script must be attached to an object that a player can hang off
public class HangableObject : MonoBehaviour
{
    public bool MultiZone = true;

    public virtual void OnTriggerStay(Collider other)
    {
        PlayerCharacterStateMachine character = other.GetComponent<PlayerCharacterStateMachine>();
        if (character != null && !character.HasReleasedHangableObject && character.ZLevel == transform.position.z)
                character.ActiveHangTarget = this;
    }

    public virtual void OnTriggerExit(Collider other)
    {
        PlayerCharacterStateMachine character = other.GetComponent<PlayerCharacterStateMachine>();
        if (character != null && character.ActiveHangTarget == this)
            character.ActiveHangTarget = null;
    }

    public virtual void OnCollisionStay(Collision collision)
    {
        PlayerCharacterStateMachine character = collision.gameObject.GetComponent<PlayerCharacterStateMachine>();
        if (character != null && !character.HasReleasedHangableObject && character.ZLevel == transform.position.z)
            character.ActiveHangTarget = this;
    }

    public virtual void OnCollisionExit(Collision collision)
    {
        PlayerCharacterStateMachine character = collision.gameObject.GetComponent<PlayerCharacterStateMachine>();
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
