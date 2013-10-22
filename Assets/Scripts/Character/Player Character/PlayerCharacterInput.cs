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
	private bool _up;
	private bool _down;		
	
	// Support for controls on a mobile device
	public Transform MoveTouchPadPrefab;
	public Transform JumpTouchPadPrefab;
	public Transform Attack1TouchPadPrefab;
	public Transform UpTouchPadPrefab;
	public Transform DownTouchPadPrefab;
	private Transform _controls;
	private Joystick _moveTouchPad;
	private Joystick _jumpTouchPad;
	private Joystick _attack1TouchPad;
	private Joystick _upTouchPad;
	private Joystick _downTouchPad;
	
	void Start()
	{
#if UNITY_ANDROID
		_controls = (new GameObject()).transform;
		_moveTouchPad = ((Transform) Instantiate(MoveTouchPadPrefab)).GetComponent<Joystick>();
		_moveTouchPad.transform.parent = _controls;
		_jumpTouchPad = ((Transform) Instantiate(JumpTouchPadPrefab)).GetComponent<Joystick>();
		_jumpTouchPad.transform.parent = _controls;
		_attack1TouchPad = ((Transform) Instantiate(Attack1TouchPadPrefab)).GetComponent<Joystick>();
		_attack1TouchPad.transform.parent = _controls;
		_upTouchPad = ((Transform) Instantiate(UpTouchPadPrefab)).GetComponent<Joystick>();
		_upTouchPad.transform.parent = _controls;
		_downTouchPad = ((Transform) Instantiate(DownTouchPadPrefab)).GetComponent<Joystick>();
		_downTouchPad.transform.parent = _controls;
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
		get
		{
			float vIn = base.VerticalInput;
#if UNITY_ANDROID	
			if(_up)
				vIn = 1;
			else if(_down)
				vIn = -1;	
			else
				vIn = 0;
#endif

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
