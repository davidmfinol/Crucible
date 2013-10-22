using UnityEngine;
using System.Collections;

/// <summary>
/// Next Level moves the player to a different scene when the player enters it's collider.
/// </summary>
[RequireComponent(typeof(Collider))]
[AddComponentMenu("Game/Next Level")]
public class NextLevel : MonoBehaviour
{
	public string NextLevelName;
	
    void OnTriggerEnter(Collider other)
    {
        PlayerCharacterAnimator player = other.GetComponent<PlayerCharacterAnimator>();
        if (player != null)
            Application.LoadLevel(NextLevelName);
    }
}