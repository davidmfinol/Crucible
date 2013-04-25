using UnityEngine;
using System.Collections.Generic;

// This script must be attached to an object that a player can hang off
public class HangableObject : MonoBehaviour
{
    public bool vertical = true;

    public virtual void OnTriggerStay(Collider other)
    {
        PlayerCharacterStateMachine character = other.GetComponent<PlayerCharacterStateMachine>();
        if (character != null && character.transform != transform.parent && !character.HasReleasedHangableObject && character.CurrentState.Equals(PlayerCharacterStates.PlayerCharacter_Falling))
        {
            if(IsHorizontal() && ((character.Direction.x > 0  && character.transform.position.x < transform.position.x) || (character.Direction.x < 0  && character.transform.position.x > transform.position.x)) )
                character.ActiveHangTarget = this;
            else if(IsVertical()  && character.transform.position.y < transform.position.y)
                character.ActiveHangTarget = this;
        }
    }

    public virtual bool IsVertical()
    {
        return vertical;
    }
    public virtual bool IsHorizontal()
    {
        return !vertical;
    }
}
