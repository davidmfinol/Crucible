using UnityEngine;
using System.Collections;

/// <summary>
/// Player character input stores the buttons that the player presses so that the PlayerCharacterAnimator can move correspondingly.
/// </summary>
[AddComponentMenu("Character/Player Character/Player Character Input")]
public class PlayerCharacterInput : CharacterInput
{
	// Keep track of what the player has input into the game
	private float _verticalInput;
	private float _horizontalInput;
	private bool _jump;
	private bool _attack1;
	private bool _attack2;
	private bool _interaction;

	// run modifier
	private bool _shift;
	
	protected override void UpdateInput()
	{
#if UNITY_EDITOR
		_verticalInput = Input.GetAxis("Vertical");
		_horizontalInput = Input.GetAxis("Horizontal");
		_jump = Input.GetButton("Jump");
		_attack1 = Input.GetButton("Primary");
		_attack2 = Input.GetButton("Secondary");
		_interaction = Input.GetButton("Interaction");
		_shift = Input.GetKey( KeyCode.LeftShift );
#endif		
		
#if UNITY_STANDALONE
		_verticalInput = Input.GetAxis("Vertical");
		_horizontalInput = Input.GetAxis("Horizontal");
		_jump = Input.GetButton("Jump");
		_attack1 = Input.GetButton("Primary");
		_attack2 = Input.GetButton("Secondary");
#endif		
	}
	
	public override float VerticalInput
	{
		get
		{
			float vIn = base.VerticalInput;

#if UNITY_EDITOR		
			vIn = _verticalInput;
#endif	
					
#if UNITY_STANDALONE
			vIn = _verticalInput;
#endif
			return vIn;
		}	
	}
	public override float HorizontalInput
	{
		get
		{ 
			if( _shift)
			{
				return _horizontalInput / 3.0f;
			} else {
				return _horizontalInput;
			}
		}
		set { _horizontalInput = value; }
	}
	public override bool Jump
	{
		get { return _jump; }
		set {_jump = value; }
	}
	public override bool Attack1
	{
		get { return _attack1; }
		set { _attack1 = value; }
	}
	public override bool Attack2
	{
		get { return _attack2; }
		set { _attack2 = value; }
	}
	public override bool Interaction
	{
		get { return _interaction; }
		set { _interaction = value; } 
	}
}
