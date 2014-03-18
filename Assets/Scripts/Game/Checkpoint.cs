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
		Checkpoint_LeftOCourse,
		Checkpoint_CentralOCourse,
		Checkpoint_RightOCourse,
		Checkpoint_OCourseToAnvilPark,
		Checkpoint_OcourseStart,
		Checkpoint_UpperAnvilPark,
		Checkpoint_LowerAnvilPark,
        Checkpoint_SewerStart,
        Checkpoint_SewerTop
	
	};

	public CheckpointLocation Location;
	public string Caption;
	public Color Color;

	private CheckpointFader _checkpointFader;


	void Start()
    {
		_checkpointFader = GameManager.UI.GetComponent<CheckpointFader> ();
	}

	// When the player reaches the checkpoint, do the appropriate logic
    void OnTriggerEnter(Collider other)
    {
        if (other.CompareTag("Player") && !GameManager.Player.IsDead () && (GameManager.AI.EnemiesChasing == 0) )
        {
			// We have support for particles that may be attached to the checkpoints
			ParticleSystem prevParticles = GameManager.Instance.LastCheckPoint.GetComponentInChildren<ParticleSystem>();
            if(prevParticles != null)
				prevParticles.Stop();
            ParticleSystem newParticles = GetComponentInChildren<ParticleSystem>();
			if(newParticles != null)
				newParticles.Play();

            
            // At the least, we will set the new spawnpoint
            GameManager.Instance.LastCheckPoint = transform;
			
			// Save the game at checkpoints
			Debug.Log ("Saved game state");
			GameManager.SaveGameState (Location);
			Debug.Log ("Saved level state " + Application.loadedLevelName);
			GameManager.SaveLevelState(Application.loadedLevelName);

			_checkpointFader.StartFading(Caption, Color);

        }
    }

}
