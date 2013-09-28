using UnityEngine;
using System.Collections;

/// <summary>
/// Player character input stores the buttons that the player presses so that the PlayerCharacterAnimator can move correspondingly.
/// </summary>
[AddComponentMenu("Character/Player Character/Player Character Input")]
public class PlayerCharacterInput : CharacterInput
{
	private float _verticalInput;
	private float _horizontalInput;
	private bool _jump;
	private bool _attack1;
	private bool _attack2;
	
	private Joystick _moveTouchPad;
	private Joystick _jumpTouchPad;
	public Transform MoveTouchPad;
	public Transform JumpTouchPad;
	
	void Start()
	{
	
		_moveTouchPad = ((Transform) Instantiate(MoveTouchPad)).GetComponent<Joystick>();
		_jumpTouchPad = ((Transform) Instantiate(JumpTouchPad)).GetComponent<Joystick>();
	}
	
	void Update()
	{
		Debug.Log("_moveTouchPad: " + _moveTouchPad.position);
		_verticalInput = _moveTouchPad.position.y; //Input.GetAxis("Vertical");
		
		_horizontalInput = _moveTouchPad.position.x; //Input.GetAxis("Horizontal");
		_jump = _jumpTouchPad.IsFingerDown(); // Input.GetButton("Jump");
		_attack1 = Input.GetButton("Primary");
		_attack2 = Input.GetButton("Secondary");
	}
	
	public override float VerticalInput
	{
		get { return _verticalInput; }
	}
	public override float HorizontalInput
	{
		get { return _horizontalInput; }
	}
	public override bool Jump
	{
		get { return _jump; }
	}
	public override bool Attack1
	{
		get { return _attack1; }
	}
	public override bool Attack2
	{
		get { return _attack2; }
	}
}
