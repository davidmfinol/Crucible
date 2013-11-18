using UnityEngine;
using System.Collections;

/// <summary>
/// Next Level Interact moves the player to a different scene when the player enters it's collider and presses up.
/// </summary>
[RequireComponent(typeof(Collider))]
[AddComponentMenu("Game/Next Level Interact")]
public class NextLevelInteract : MonoBehaviour
{
	public string NextLevelName;
	private bool pressingUp;
	void Update()
	{
		pressingUp = Input.GetKey(KeyCode.UpArrow);
	}
    
	void OnTriggerStay(Collider other)
    {
        PlayerCharacterAnimator player = other.GetComponent<PlayerCharacterAnimator>();
        if (player != null && pressingUp)
			Application.LoadLevel(NextLevelName);
    }
	
	
}