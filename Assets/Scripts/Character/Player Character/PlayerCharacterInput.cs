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
	private bool _up;
	private bool _down;		
	
	private Joystick _moveTouchPad;
	private Joystick _jumpTouchPad;
	private Joystick _attack1TouchPad;
	private Joystick _upTouchPad;
	private Joystick _downTouchPad;	
	public Transform MoveTouchPadPrefab;
	public Transform JumpTouchPadPrefab;
	public Transform Attack1TouchPadPrefab;
	public Transform UpTouchPadPrefab;
	public Transform DownTouchPadPrefab;	
	
	void Start()
	{
#if UNITY_ANDROID
		_moveTouchPad = ((Transform) Instantiate(MoveTouchPadPrefab)).GetComponent<Joystick>();
		_jumpTouchPad = ((Transform) Instantiate(JumpTouchPadPrefab)).GetComponent<Joystick>();
		_attack1TouchPad = ((Transform) Instantiate(Attack1TouchPadPrefab)).GetComponent<Joystick>();
		_upTouchPad = ((Transform) Instantiate(UpTouchPadPrefab)).GetComponent<Joystick>();
		_downTouchPad = ((Transform) Instantiate(DownTouchPadPrefab)).GetComponent<Joystick>();
#endif
	}
	
	protected override void UpdateInput()
	{		
#if UNITY_ANDROID
		//_verticalInput = _moveTouchPad.position.y;
		_horizontalInput = _moveTouchPad.position.x;
		_jump = _jumpTouchPad.IsFingerDown();
		_attack1 = _attack1TouchPad.IsFingerDown();
		_up = _upTouchPad.IsFingerDown();
		_down = _downTouchPad.IsFingerDown();		
		// attack2 = Input.GetButton("Secondary");
#endif

#if UNITY_EDITOR
		_verticalInput = Input.GetAxis("Vertical");
		_horizontalInput = Input.GetAxis("Horizontal");
		_jump = Input.GetButton("Jump");
		_attack1 = Input.GetButton("Primary");
		_attack2 = Input.GetButton("Secondary");
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
		get {
		#if UNITY_EDITOR		
		return _verticalInput;
		#endif	
			
		#if UNITY_ANDROID	
			if(_up)
				return 1;
			else if(_down)
				return -1;	
			else
				return 0;
		#endif
		}	
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
