using UnityEngine;
using System.Collections;

/// <summary>
/// Checkpoint defines a location where in the scene that the player can save and (re)spawn.
/// </summary>
[RequireComponent(typeof(Collider))]
[AddComponentMenu("Game/Checkpoint")]
public class Checkpoint : MonoBehaviour 
{
	public enum CheckpointLocation
	{
		Checkpoint_UpperOCourse,
		Checkpoint_LowerOCourse,
		Checkpoint_UpperArea
		
	};

	public CheckpointLocation loc;
	public string caption;
	public Color col;


	// When the player reaches the checkpoint, do the appropriate logic
    void OnTriggerEnter(Collider other)
    {
		PlayerCharacterInventory player = other.GetComponent<PlayerCharacterInventory>();
        if (other.CompareTag("Player") && player != null)
        {
			// At the least, we will set the new spawnpoint
            player.SpawnPoint = transform;
			
			// We can also add support for particles that may be attached to the checkpoints
			ParticleSystem prevParticles = player.SpawnPoint.GetComponent<ParticleSystem>();
            if(prevParticles != null)
				prevParticles.Stop();
            ParticleSystem newParticles = GetComponent<ParticleSystem>();
			if(newParticles != null)
				newParticles.Play();
			
			// Save the game at checkpoints
			GameManager.SaveLevelState(Application.loadedLevelName);
			GameManager.SaveGameState (loc);
        }
    }

}
