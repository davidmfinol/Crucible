using UnityEngine;
using System.Collections.Generic;

// This script must be attached to an object that a player can hang off
public class HangableObject : MonoBehaviour
{
    public bool MultiZone = true;

    public virtual void OnTriggerStay(Collider other)
    {
        PlayerCharacterStateMachine character = other.GetComponent<PlayerCharacterStateMachine>();
        if (character != null && character.transform != transform.parent && !character.HasReleasedHangableObject)
                character.ActiveHangTarget = this;
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
