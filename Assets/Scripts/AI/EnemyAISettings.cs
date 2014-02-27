using UnityEngine;
using System.Collections;

/// <summary>
///  Enemy AI settings holds the AI parameters for an enemy.
/// </summary>
[AddComponentMenu("AI/Enemy AI Settings")]
public class EnemyAISettings : MonoBehaviour
{
    // How far away can an opponent be and still be in range of a Enemy's attack?
	public float AttackRange; // = 3.0f;

    // How far away the Enemy can notice and become aware of the player
	public float AwarenessRange; // = 25.0f;
	
	// How many seconds between every calculation of a new path
	public float RepathTime; // = 0.75f;

	// If we're close enough to our end target, stop moving
	public float StopRange; // = 2.0f;

	// Toggles for the different sensory inputs of the enemy ai
	public bool CanSee; // = true; 
	public bool CanHear; // = true;

    // how long before the enemy forgets that it saw the player
	public float VisionMemory; // = 1.0f

    // how close the enemy must be to succesfully visually inspect a sound source
    public float SoundInspectionRange; // = 1.0f;
    
    // Used by A* to calculate graph
    public static float MaxJump = 9.0f; // jumpheight + capsulecollider.height/2
    public static float MaxSpeed = 12.0f;
    public static float MaxGravity = 40.0f;
	

    /// <summary>
    /// Returns whether a Enemy can jump from one position to another
    /// </summary>
    /// <param name="a">the starting position of the Enemy</param>
    /// <param name="b">the ending position the Enemy is considering</param>
    /// <returns></returns>
    public static bool CanJump(Vector3 a, Vector3 b)
    {
        float xDist = Mathf.Abs(b.x - a.x);
        float yDist = b.y - a.y;
        float yVel = Mathf.Sqrt(2 * MaxJump * MaxGravity);
        float t = yVel / MaxGravity;
        float yMax = MaxJump;
        if (xDist > MaxSpeed * t)
        {
            t = xDist / MaxSpeed;
            yMax = (yVel * t) + ((-MaxGravity * t * t) / 2);
        }
        return yDist < yMax;
    }
}
