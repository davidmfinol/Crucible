using UnityEngine;
using System.Collections;

/// <summary>
/// Character input stores the input for a character.
/// By default, this returns no input; this class should be extended with overrides for the input properties.
/// Used by CharacterAnimator.cs
/// </summary>
[AddComponentMenu("Character/Character Input (Empty)")]
public class CharacterInput : MonoBehaviour
{
	// TODO: GET RID OF ATTACK2 AND MAKE JUMP AND ATTACK VECTORS
	private bool _upLast = false;
	private bool _downLast = false;
	private bool _leftLast = false;
	private bool _rightLast = false;
	private bool _jumpLast = false;
	private bool _attack1Last = false;
	private bool _attack2Last = false;
	
	
	void Update()
	{
		_upLast = Up;
		_downLast = Down;
		_leftLast = Left;
		_rightLast = Right;
		_jumpLast = Jump;
		_attack1Last = Attack1;
		_attack2Last = Attack2;
		
		UpdateInput();
	}
	
	
	protected virtual void UpdateInput()
	{
		// No input by default
		// Child subclasses should override this method to have their input updated on Update()
	}
	
	public virtual float VerticalInput
	{
		get { return 0; }
		set {}
	}
	public virtual float HorizontalInput
	{
		get { return 0; } 
		set {}
	}
	public virtual bool Jump
	{
		get { return false; }
		set {}
	}
	public virtual bool Attack1
	{
		get { return false; }
		set {}
	}
	public virtual bool Attack2
	{
		get { return false; }
		set {}
	}
	public bool Up
	{
		get { return VerticalInput > 0.1; }
	}
	public bool UpPressed
	{
		get { return !_upLast && Up; }
	}
	public bool UpReleased
	{
		get { return _upLast && !Up; }
	}
	public bool Down
	{
		get { return VerticalInput < -0.1; }
	}
	public bool DownPressed
	{
		get { return !_downLast && Down; }
	}
	public bool DownReleased
	{
		get { return _downLast && !Down; }
	}
	public bool Left
	{
		get { return HorizontalInput < -0.1; }
	}
	public bool LeftPressed
	{
		get { return !_leftLast && Left; }
	}
	public bool LeftReleased
	{
		get { return _leftLast && !Left; }
	}
	public bool Right
	{
		get { return HorizontalInput > 0.1; }
	}
	public bool RightPressed
	{
		get { return !_rightLast && Right; }
	}
	public bool RightReleased
	{
		get { return _rightLast && !Right; }
	}
	public bool JumpPressed
	{
		get { return !_jumpLast && Jump; }
	}
	public bool JumpReleased
	{
		get { return _jumpLast && !Jump; }
	}
	public bool Attack1Pressed
	{
		get { return !_attack1Last && Attack1; }
	}
	public bool Attack1Released
	{
		get { return _attack1Last && !Attack1; }
	}
	public bool Attack2Pressed
	{
		get { return !_attack2Last && Attack2; }
	}
	public bool Attack2Released
	{
		get { return _attack2Last && !Attack2; }
	}
}
