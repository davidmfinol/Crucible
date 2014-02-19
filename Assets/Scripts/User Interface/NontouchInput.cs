using UnityEngine;
using System.Collections;

/// <summary>
/// Nontouch input interprets player input for non-touch devices.
/// </summary>
[AddComponentMenu("User Interface/Non-touch Input")]
public class NontouchInput : MonoBehaviour
{
	// Analog modifier for keyboard
	private bool _shift = false;
	
	// Where we store the input
	private CharacterInput _input;


	void Start()
	{
		_input = GameManager.Player.GetComponent<CharacterInput>();
#if UNITY_EDITOR || UNITY_STANDALONE || UNITY_WEB 
		_input.UpdateInputMethod = UpdateInput;
#endif
	}

	public void UpdateInput()
	{

		if(Input.GetJoystickNames().Length > 0 && Input.GetJoystickNames()[0] == "Controller (XBOX 360 For Windows)")
		{
			_input.Attack = 0;
			_input.Pickup = false;

			_input.Interaction = Input.GetKey(KeyCode.Joystick1Button0);
			_input.Vertical = Input.GetAxis ("Left Stick V");
			_input.Horizontal = Input.GetAxis("Left Stick H");
			_input.Jump = new Vector2(Input.GetAxis ("Right Stick H"),-Input.GetAxis("Right Stick V"));
			if(Input.GetKey(KeyCode.Joystick1Button1))
				_input.Jump = new Vector2(1,1);
			else if(Input.GetKey(KeyCode.Joystick1Button2))
				_input.Jump = new Vector2(-1,1);
			else if(Input.GetKey(KeyCode.Joystick1Button3))
				_input.Jump = new Vector2(0,1);
			if(Input.GetAxis("Triggers") > 0.5)
				_input.Attack = -1;
			else if(Input.GetAxis("Triggers") < -0.5)
				_input.Attack = 1;

		}
		else 
		{
			_shift = Input.GetButton("Shift");
			float horizontal = Input.GetAxis ("Horizontal");
			_input.Horizontal = _shift ? horizontal * 0.3f : horizontal;
			_input.Vertical = Input.GetAxis("Vertical");
			_input.Interaction = Input.GetButton("Interaction");
			_input.Jump = new Vector2(Input.GetAxis("JumpX"), Input.GetAxis("JumpY"));
			_input.Attack = Input.GetAxis("Attack");
			_input.Pickup = Input.GetButton ("Pickup");
		}
	}
}
