using UnityEngine;
using System.Collections;

/// <summary>
///  Enemy AI settings holds the AI parameters for an enemy.
/// </summary>
[AddComponentMenu("Artificial Intelligence/Enemy AI Settings")]
public class EnemyAISettings : MonoBehaviour
{
    // If the enemy is farther than this distance, deactivate it
    public float MaxActiveDistance;// = 50.0f;
    
    // How many seconds between every calculation of a new path
    // Note that this will be divided by the speed ratio of the character to determine the real repath time
    public float RepathRate;// = 0.75f;
    
    // The ratio (0, 1] of how fast the enemy character moves in different modes
    public float WanderSpeedRatio;// = 0.1f;
    public float SearchSpeedRatio;// = 0.5f;
    public float ChaseSpeedRatio;// = 1.0f;
    
    // Allows the enemy character to be a little farther away from the target and then repathing
    public float TargetLeniency;// = 0.1f;
    
    // used to override wandering functionality
    public bool ShouldWander;// = true;

    // Settings for how the AI wanders
    public float WanderTime;// = 15.0f;
    public float IdleTime;// = 5.0f;
    
    // Toggles for the different sensory inputs of the enemy ai
    public bool CanHear;// = true;
    public bool CanSee;// = true;
    
    // How close the enemy must be to succesfully visually inspect a sound source
    public float SoundInspectionRange;// = 1.0f;

    // How long before the enemy forgets that it saw the player
    public float VisionMemory;// = 3.0f;

    // How far away is the opponent before the enemy starts charging up its attack?
    public float AttackRange;// = 20.0f;

}
