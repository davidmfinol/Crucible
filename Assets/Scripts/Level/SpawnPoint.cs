using UnityEngine;
using System.Collections;

[RequireComponent(typeof(ParticleSystem))]
// This script must be attached to a game object to tell Unity where a player spawns
public class SpawnPoint : MonoBehaviour 
{
    void OnTriggerEnter(Collider other)
    {
        PlayerCharacterFSM character = other.GetComponent<PlayerCharacterFSM>();
        if (character != null)
        {
            character.SpawnPoint.GetComponent<ParticleSystem>().Stop();
            character.SpawnPoint = transform;
            GetComponent<ParticleSystem>().Play();
        }
    }
}
