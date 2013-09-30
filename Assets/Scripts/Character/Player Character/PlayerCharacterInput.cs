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
	private Joystick _attack1TouchPad;
	public Transform MoveTouchPadPrefab;
	public Transform JumpTouchPadPrefab;
	public Transform Attack1TouchPadPrefab;
	
	void Start()
	{
#if UNITY_ANDROID
		_moveTouchPad = ((Transform) Instantiate(MoveTouchPadPrefab)).GetComponent<Joystick>();
		_jumpTouchPad = ((Transform) Instantiate(JumpTouchPadPrefab)).GetComponent<Joystick>();
		_attack1TouchPad = ((Transform) Instantiate(Attack1TouchPadPrefab)).GetComponent<Joystick>();
#endif
	}
	
	void Update()
	{
#if UNITY_ANDROID
		_verticalInput = _moveTouchPad.position.y;
		_horizontalInput = _moveTouchPad.position.x;
		_jump = _jumpTouchPad.IsFingerDown();
		_attack1 = _attack1TouchPad.IsFingerDown();
		//_attack2 = Input.GetButton("Secondary");
#endif
		
#if UNITY_STANDALONE
		_verticalInput = Input.GetAxis("Vertical");
		_horizontalInput = Input.GetAxis("Horizontal");
		_jump = Input.GetButton("Jump");
		_attack1 = Input.GetButton("Primary");
		_attack2 = Input.GetButton("Secondary");
#endif		
		
#if UNITY_EDITOR
		_verticalInput = Input.GetAxis("Vertical");
		_horizontalInput = Input.GetAxis("Horizontal");
		_jump = Input.GetButton("Jump");
		_attack1 = Input.GetButton("Primary");
		_attack2 = Input.GetButton("Secondary");
#endif	
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
