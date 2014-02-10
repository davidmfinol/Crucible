using UnityEngine;
using System.Collections;

/// <summary>
/// Character input stores the input for a character, while providing helper properties for accessing the input.
/// By default, this returns empty input; this class should be extended with overrides for the input properties.
/// Furthermore, child classes can override the UpdateInput() method for input processing.
/// Used by CharacterAnimator.cs
/// </summary>
[AddComponentMenu("Character/Character Input (Empty)")]
public class CharacterInput : MonoBehaviour
{
	private bool _leftLast = false;
	private bool _rightLast = false;
	private bool _upLast = false;
	private bool _downLast = false;
	private bool _interactionLast = false;
	private bool _jumpLast = false;
	private bool _jumpLeftLast = false;
	private bool _jumpRightLast = false;
	private bool _attackLeftLast = false;
	private bool _attackRightLast = false;
	private bool _pickupLast = false;
	
	void FixedUpdate()
	{
		_leftLast = Left;
		_rightLast = Right;
		_upLast = Up;
		_downLast = Down;
		_interactionLast = Interaction;
		_jumpLast = JumpActive;
		_jumpLeftLast = JumpLeft;
		_jumpRightLast = JumpRight;
		_attackLeftLast = AttackLeft;
		_attackRightLast = AttackRight;
		_pickupLast = Pickup;
		
		UpdateInput();
	}
	protected virtual void UpdateInput()
	{
		// No input by default
		// Child subclasses should override this method to have their input updated on Update()
	}


	public virtual float Horizontal
	{
		get { return 0; } 
		set {}
	}
	public virtual float Vertical
	{
		get { return 0; }
		set {}
	}
	public virtual bool Interaction
	{
		get { return false; }
		set {}
	}
	public virtual Vector2 Jump
	{
		get { return Vector2.zero; }
		set {}
	}
	public virtual float Attack
	{
		get { return 0; }
		set {}
	}
	public virtual bool Pickup
	{
		get { return false; }
		set {}
	}


	public bool Left
	{
		get { return Horizontal < -0.1; }
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
		get { return Horizontal > 0.1; }
	}
	public bool RightPressed
	{
		get { return !_rightLast && Right; }
	}
	public bool RightReleased
	{
		get { return _rightLast && !Right; }
	}
	public bool Up
	{
		get { return Vertical > 0.1; }
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
		get { return Vertical < -0.1; }
	}
	public bool DownPressed
	{
		get { return !_downLast && Down; }
	}
	public bool DownReleased
	{
		get { return _downLast && !Down; }
	}
	public bool InteractionPressed
	{
		get { return !_interactionLast && Interaction; }
	}
	public bool InteractionReleased
	{
		get { return _interactionLast && !Interaction; }
	}
	public bool JumpActive
	{
		get { return Jump.y >= 0.1; }
	}
	public bool JumpPressed
	{
		get { return !_jumpLast && JumpActive; }
	}
	public bool JumpReleased
	{
		get { return _jumpLast && JumpActive; }
	}
	public bool JumpLeft
	{
		get { return Jump.x < -0.1 && JumpActive; }
	}
	public bool JumpLeftPressed
	{
		get { return !_jumpLeftLast && JumpLeft; }
	}
	public bool JumpLeftReleased
	{
		get { return _jumpLeftLast && !JumpLeft; }
	}
	public bool JumpRight
	{
		get { return Jump.x > 0.1 && JumpActive; }
	}
	public bool JumpRightPressed
	{
		get { return !_jumpRightLast && JumpRight; }
	}
	public bool JumpRightReleased
	{
		get { return _jumpRightLast && !JumpRight; }
	}
	public bool AttackLeft
	{
		get { return Attack < -0.1; }
	}
	public bool AttackLeftPressed
	{
		get { return !_attackLeftLast && AttackLeft; }
	}
	public bool AttackJumpLeftReleased
	{
		get { return _attackLeftLast && !AttackLeft; }
	}
	public bool AttackRight
	{
		get { return Attack > 0.1; }
	}
	public bool AttackRightPressed
	{
		get { return !_attackRightLast && AttackRight; }
	}
	public bool AttackRightReleased
	{
		get { return _attackRightLast && !AttackRight; }
    }
    public bool PickupPressed
    {
        get { return !_pickupLast && Pickup; }
    }
    public bool PickupReleased
    {
        get { return _pickupLast && !Pickup; }
    }
}
