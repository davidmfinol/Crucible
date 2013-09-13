using UnityEngine;

/// <summary>
/// Character settings stores variables about how this character moves, along with the hashes for the animator.
/// Used by CharacterAnimator.cs
/// </summary>
[AddComponentMenu("CharacterAnimator/Settings")]
public class CharacterSettings : MonoBehaviour
{
    // How fast the character runs
    public float MaxHorizontalSpeed = 16.0f;

    // How fast the character accelerates
    public float HorizontalAcceleration = 6.0f;

    // How high the character jumps
    public float JumpHeight = 5.0f;
	
    // Rate of change of vertical fall speed
    public float Gravity = 40.0f;

    // Maximum fall speed
    public float MaxFallSpeed = 20.0f;
	
    // How fast the character rotates
    public float RotationSmoothing = 3.0f;

    // How fast the character moves across the Z-Axis
    public float ZLerp = 10.0f;
	
	// How fast the character climbs ledges
	public float LedgeClimbingSpeed = 7.5f;
	
	// How close the character has to be to the top of a ledge to grab onto it
	public float LedgeLeniency = 0.3f;
}
