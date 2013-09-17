using UnityEngine;

/// <summary>
/// Character settings stores variables about how this character moves.
/// Used by CharacterAnimator.cs
/// </summary>
[AddComponentMenu("Character/Settings")]
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
	
	private int _randomIdle;
	private int _horizontalSpeed;
	private int _jump;
	private int _fall;
	private int _hang;
	private int _climb;
	private int _isGrounded;
	private int _die;
	private int _attack1;
	private int _attack2;
	
	void Awake()
	{
		_randomIdle = Animator.StringToHash("RandomIdle");
		_horizontalSpeed = Animator.StringToHash("HorizontalSpeed");
		_jump = Animator.StringToHash("Jump");
		_fall = Animator.StringToHash("Fall");
		_hang = Animator.StringToHash("Hang");
		_climb = Animator.StringToHash("Climb");
		_isGrounded = Animator.StringToHash("IsGrounded");
		_die = Animator.StringToHash("Die");
		_attack1 = Animator.StringToHash("Attack1");
		_attack2 = Animator.StringToHash("Attack2");
	}

	public int Attack1
	{
		get { return this._attack1; }
	}
	public int Attack2
	{
		get { return this._attack2; }
	}
	public int Climb
	{
		get { return this._climb; }
	}
	public int Die
	{
		get { return this._die; }
	}
	public int Fall
	{
		get { return this._fall; }
	}
	public int Hang
	{
		get { return this._hang; }
	}
	public int HorizontalSpeed
	{
		get { return this._horizontalSpeed; }
	}
	public int IsGrounded
	{
		get { return this._isGrounded; }
	}
	public int Jump
	{
		get { return this._jump; }
	}
	public int RandomIdle
	{
		get { return this._randomIdle; }
	}
}
