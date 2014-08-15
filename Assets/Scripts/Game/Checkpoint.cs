using UnityEngine;
using System.Collections;

/// <summary>
/// Checkpoint defines a location where in the scene that the player can save and (re)spawn.
/// </summary>
[RequireComponent(typeof(Collider))]
[AddComponentMenu("Game/Checkpoint")]
public class Checkpoint : MonoBehaviour
{
    public enum CheckpointLocation : int
    {
        Sewer_Start = 0,
        Sewer_BeforeBabyBot,
        Sewer_AfterBabyBot,
        Sewer_AfterRopes,
        Sewer_AfterDoor,

        Commercial_BottomCenter = 50,
        Commercial_MidRight,
        Commercial_TopCenter,
        Commercial_TopRight,
        Commercial_MidLeft,
        Commercial_BottomLeft,
        
        OCourse_Left = 100,
        OCourse_Central,
        OCourse_Right,
        OCourse_ToAnvilPark,
        OCourse_Start,

        AnvilPark_Upper = 150,
        AnvilPark_Lower,
    }
    ;

    public CheckpointLocation Location;

    // When the player reaches the checkpoint, do the appropriate logic
    void OnTriggerEnter(Collider other)
    {
        // Only the player can trigger this event
        if (!other.CompareTag("Player") || GameManager.Player.IsDead) {
            return;
        }

        // If enemies around are around, don't allow checkpoint
        if ((GameManager.AI.EnemiesChasing != 0) || (GameManager.AI.EnemiesSearching != 0) ||
            GameManager.AI.EnemiesWithin(30.0f)) {
            return;
        }

        // We have support for particles that may be attached to the checkpoints
        ParticleSystem prevParticles = GameManager.LastCheckPoint.GetComponentInChildren<ParticleSystem>();
        if (prevParticles != null) {
            prevParticles.Stop();
        }
        ParticleSystem newParticles = GetComponentInChildren<ParticleSystem>();
        if (newParticles != null) {
            newParticles.Play();
        }

        // Set the new spawnpoint
        GameManager.LastCheckPoint = transform;
        
        // Save the game at checkpoints
        GameManager.SaveGameState(Application.loadedLevelName, Location);
        GameManager.SaveLevelState(Application.loadedLevelName);

    }

    // TODO: ON DRAW GIZMOS, SHOW WHERE THESE INVISBLE CHECKPOINTS ARE?

}
