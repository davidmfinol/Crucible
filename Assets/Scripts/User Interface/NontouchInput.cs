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
	
	// TODO: REMOVE THIS
	private PlayerCharacterArsenal _arsenal;
	private int currentWeapon = 0;


	void Start()
	{
		_input = GameManager.Player.GetComponent<CharacterInput>();
		_arsenal = GameManager.Player.GetComponent<PlayerCharacterArsenal>();
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

			// Cycle through weapons
			if(Input.GetKeyDown(KeyCode.Joystick1Button4))
			{
				currentWeapon++;
				if(currentWeapon > 2)
					currentWeapon = 0;
				UpdateWeapon();
			}
			else if(Input.GetKeyDown(KeyCode.Joystick1Button5))
			{
				currentWeapon--;
				if(currentWeapon < 0)
					currentWeapon = 2;
				UpdateWeapon();
			}
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

            // Cycle through weapons
            if(Input.GetKeyDown(KeyCode.Q))
            {
                currentWeapon++;
                if(currentWeapon > 2)
                    currentWeapon = 0;
                UpdateWeapon();
            }
            else if(Input.GetKeyDown(KeyCode.E))
            {
                currentWeapon--;
                if(currentWeapon < 0)
                    currentWeapon = 2;
                UpdateWeapon();
            }
		}
	}
	// TODO: MOVE THIS
	private void UpdateWeapon()
	{
		if (currentWeapon == 0)
			_arsenal.Weapon = _arsenal.PipePrefab;
		else if (currentWeapon == 1)
			_arsenal.Weapon = _arsenal.MinePrefab;
		else if (currentWeapon == 2)
			_arsenal.Weapon = _arsenal.GravityGunPrefab;

	}
}
