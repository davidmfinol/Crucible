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
    // Note that this will be divided by the speed ratio of the character to determine the real repath
	public float RepathRate; // = 0.75f;

	// Toggles for the different sensory inputs of the enemy ai
	public bool CanSee; // = true; 
	public bool CanHear; // = true;

    // How long before the enemy forgets that it saw the player
	public float VisionMemory; // = 1.0f

	// If the enemy is farther than this distance, deactivate it
	public float MaxActiveDistance; // = 100.0f;

    // The ratio (0, 1] of how fast the enemy character moves in different modes
    public float WanderSpeedRatio; // = 0.2f;
    public float SearchSpeedRatio; // = 0.7f;
    public float ChaseSpeedRatio; // = 1.0f;

}
