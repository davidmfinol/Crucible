using UnityEngine;
using System.Collections;

/// <summary>
/// Exit moves the player to a different scene.
/// </summary>
[RequireComponent(typeof(Collider))]
[AddComponentMenu("Game/Exit")]
public class Exit : MonoBehaviour
{
	public string NextLevel;
	
    void OnTriggerEnter(Collider other)
    {
        PlayerCharacterAnimator player = other.GetComponent<PlayerCharacterAnimator>();
        if (player != null)
            Application.LoadLevel(NextLevel);
    }
}