using UnityEngine;
using System.Collections;

// This script must be attached to an object that a character can climb up
public class ClimbableObject : HangableObject
{
    public override void OnTriggerStay(Collider other)
    {
        PlayerCharacterFSM character = other.GetComponent<PlayerCharacterFSM>();
        if (character != null && character.ZLevel == transform.position.z)
            character.ActiveHangTarget = this;
    }

    public override void OnTriggerExit(Collider other)
    {
        PlayerCharacterFSM character = other.GetComponent<PlayerCharacterFSM>();
        if (character != null && character.ActiveHangTarget == this)
            character.ActiveHangTarget = null;
    }
}
