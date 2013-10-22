using UnityEngine;
using System.Collections;

/// <summary>
/// Spawn point defines a location where in the scene the player can (re)spawn.
/// </summary>
[RequireComponent(typeof(Collider))]
[AddComponentMenu("Game/Spawn Point")]
public class SpawnPoint : MonoBehaviour 
{
	// We can update the player's defined spawnpoint if it collides with this object
    void OnTriggerEnter(Collider other)
    {
        PlayerCharacterSettings player = other.GetComponent<PlayerCharacterSettings>();
        if (player != null)
        {
			// At the least, we will set the new spawnpoint
            player.SpawnPoint = transform;
			
			// We can also add support for particles that may be attached to the spawnpoints
			ParticleSystem prevParticles = player.SpawnPoint.GetComponent<ParticleSystem>();
            if(prevParticles != null)
				prevParticles.Stop();
            ParticleSystem newParticles = GetComponent<ParticleSystem>();
			if(newParticles != null)
				newParticles.Play();
        }
    }
}
