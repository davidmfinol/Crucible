using UnityEngine;
using System.Collections.Generic;

public class Zone : MonoBehaviour
{
    public bool IsInverse = false;

    void OnTriggerEnter (Collider other)
    {
        float z = transform.position.z;
        CharacterStateMachineBase character = other.GetComponent<CharacterStateMachineBase>();
        if (character != null)
        {
            if (!IsInverse)
            {
                if (character.ZLevel > z)
                    character.Z_Down = z;
                else if (character.ZLevel < z)
                    character.Z_Up = z;
            }
            else
            {
                if (character.transform.position.y < transform.position.y) // reaching the zone from below
                    character.Z_Up = z;
                else // coming down to the zone from above
                    character.Z_Down = z;
            }
            character.Zones.Add(z);
        }
    }

    void OnTriggerExit(Collider other)
    {
        float z = transform.position.z;
        CharacterStateMachineBase character = other.GetComponent<CharacterStateMachineBase>();
        if (character != null)
        {
            if (character.Z_Down == z)
                character.Z_Down = character.ZLevel;
            if (character.Z_Up == z)
                character.Z_Up = character.ZLevel;
            character.Zones.Remove(z);
        }
    }
}
