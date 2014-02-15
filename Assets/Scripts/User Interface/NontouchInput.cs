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
