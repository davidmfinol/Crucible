using UnityEngine;
using System.Collections;

/// <summary>
///  Enemy AI settings holds the AI parameters for an enemy.
/// </summary>
[AddComponentMenu("AI/Enemy AI Settings")]
public class EnemyAISettings : MonoBehaviour
{
    // How far away can an opponent be and still be in range of an enemy's attack?
	public float AttackRange; // = 3.0f;

    // How far away the enemy can visually see the player from
    public float AwarenessRange; // = 25.0f;
    
    // How close the enemy must be to succesfully visually inspect a sound source
    public float SoundInspectionRange; // = 1.0f;
	
	// How many seconds between every calculation of a new path
	public float RepathTime; // = 0.75f;

	// Toggles for the different sensory inputs of the enemy ai
	public bool CanSee; // = true; 
	public bool CanHear; // = true;

    // How long before the enemy forgets that it saw the player
	public float VisionMemory; // = 1.0f

	// If the enemy is farther than this distance, deactivate it
	public float MaxActiveDistance; // = 100.0f;
}
