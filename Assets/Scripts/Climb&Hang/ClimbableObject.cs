using UnityEngine;
using System.Collections;

// This script must be attached to an object that a character can climb up
public class ClimbableObject : HangableObject
{
    public virtual void OnTriggerEnter(Collider other)
    {
        PlayerCharacterStateMachine character = other.GetComponent<PlayerCharacterStateMachine>();
        if (character != null)
            character.ActiveHangTarget = this;
    }

    public virtual void OnTriggerExit(Collider other)
    {
        PlayerCharacterStateMachine character = other.GetComponent<PlayerCharacterStateMachine>();
        if (character != null)
        {
            if(character.ActiveHangTarget == this)
                character.ActiveHangTarget = null;
        }
    }
}
