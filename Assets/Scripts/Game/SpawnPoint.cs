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
            player.SpawnPoint = transform;
			ParticleSystem prevParticles = player.SpawnPoint.GetComponent<ParticleSystem>();
            if(prevParticles != null)
				prevParticles.Stop();
            ParticleSystem newParticles = GetComponent<ParticleSystem>();
			if(newParticles != null)
				newParticles.Play();
        }
    }
}
