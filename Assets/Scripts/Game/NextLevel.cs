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

    public bool RequiresUp = false;

    public Transform LoadingScreen;
	
    void OnTriggerStay(Collider other)
    {
        CharacterAnimator player = other.GetComponent<CharacterAnimator>();
        if (player != null && (!RequiresUp || player.CharInput.Up))
        {
            // TODO: OBJECT POOLING
            Instantiate(LoadingScreen);
            Application.LoadLevel(NextLevelName);
        }
    }	
}