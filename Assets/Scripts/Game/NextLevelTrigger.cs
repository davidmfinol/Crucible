using UnityEngine;
using System.Collections;
using UnityEngine.SceneManagement;

/// <summary>
/// Next Level trigger moves the player to a different scene when the player enters it's collider.
/// </summary>
[RequireComponent(typeof(Collider))]
[AddComponentMenu("Game/Next Level Trigger")]
public class NextLevelTrigger : MonoBehaviour
{
    public string NextLevelName;
    public Checkpoint.CheckpointLocation NextCheckpoint;

    void OnTriggerEnter(Collider other)
    {
        CharacterAnimator player = other.GetComponent<CharacterAnimator>();
        if (other.CompareTag("Player") && player != null && !player.IsDead) {
            Instantiate(Resources.Load("Prefabs/User Interface/Loading Screen")); // NOTE: WE DON'T USE THE OBJECT POOL, SINCE WE ONLY NEED THE 1
            GameManager.SaveLevelState(SceneManager.GetActiveScene().name);
            GameManager.SaveGameState(NextLevelName, NextCheckpoint);
            SceneManager.LoadScene(NextLevelName);
        }

    }
}