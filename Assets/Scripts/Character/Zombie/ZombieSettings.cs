using UnityEngine;
using System.Collections;

/// <summary>
/// Zombie settings holds the modifiable parameters for a zombie.
/// </summary>
[AddComponentMenu("Character/Zombie/Zombie Settings")]
public class ZombieSettings : CharacterSettings
{
    // How far away can an opponent be and still be in range of a zombie's attack?
    public float AttackRange = 5.0f;

    // How far away the zombie can notice and become aware of the player
    public float AwarenessRange = 100.0f;
	
	// A* Settings
	public float RepathTime = 0.75f; // How many seconds between every calculation of a new path
	
	// Used by A* to calculate graph
    public static float MaxJump = 9.0f; // jumpheight + capsulecollider.height/2
    public static float MaxSpeed = 16.0f;
    public static float MaxGravity = 40.0f;
	
	
    /// <summary>
    /// Returns whether a zombie can jump from one position to another
    /// </summary>
    /// <param name="a">the starting position of the zombie</param>
    /// <param name="b">the ending position the zombie is considering</param>
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
