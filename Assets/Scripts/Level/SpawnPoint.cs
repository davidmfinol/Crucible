using UnityEngine;
using System.Collections;

/// <summary>
/// Spawn point defines a location where in the scene a player can (re)spawn.
/// </summary>
[RequireComponent(typeof(ParticleSystem))]
public class SpawnPoint : MonoBehaviour 
{
	// We can update the player's defined spawnpoint if it collides with this object
    public void OnTriggerEnter(Collider other)
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
