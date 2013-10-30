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
	public Transform UpTouchPadPrefab;
	public Transform DownTouchPadPrefab;
	private Transform _controls;
	private Joystick _upTouchPad;
	private Joystick _downTouchPad;
	
	void Start()
	{
#if UNITY_ANDROID
		_controls = (new GameObject("Mobile Device Controls")).transform;
		_upTouchPad = ((Transform) Instantiate(UpTouchPadPrefab)).GetComponent<Joystick>();
		_upTouchPad.transform.parent = _controls;
		_downTouchPad = ((Transform) Instantiate(DownTouchPadPrefab)).GetComponent<Joystick>();
		_downTouchPad.transform.parent = _controls;
#endif
	}
	
	protected override void UpdateInput()
	{		
#if UNITY_ANDROID
		_up = _upTouchPad.IsFingerDown();
		_down = _downTouchPad.IsFingerDown();		
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
}
