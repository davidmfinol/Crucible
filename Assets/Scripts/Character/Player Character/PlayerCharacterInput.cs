using UnityEngine;
using System.Collections;

/// <summary>
/// Player character input stores the buttons that the player presses so that the PlayerCharacterAnimator can move correspondingly.
/// </summary>
[AddComponentMenu("Character/Player Character/Player Character Input")]
public class PlayerCharacterInput : CharacterInput
{
	// Keep track of what the player has input into the game
	private float _horizontal;
	private float _vertical;
	private bool _interaction;
	private Vector2 _jump;
	private float _attack;

	// Analog modifier for keyboard
	private bool _shift;


	protected override void UpdateInput()
	{
#if ( UNITY_EDITOR || UNITY_STANDALONE )
		_horizontal = Input.GetAxis("Horizontal");
		_vertical = Input.GetAxis("Vertical");
		_interaction = Input.GetButton("Interaction");
		_jump = new Vector2(Input.GetAxis("JumpX"), Input.GetAxis("JumpY"));
		_attack = Input.GetAxis("Attack");
		_shift = Input.GetButton("Shift");
#endif
	}	


	public override float Horizontal
	{
		get { return _shift ? _horizontal * 0.3f : _horizontal; }
		set { _horizontal = Mathf.Min (value, 1); }
	}
	public override float Vertical
	{
		get { return _vertical; }
		set { _vertical = value; }
	}
	public override bool Interaction
	{
		get { return _interaction; }
		set { _interaction = value; } 
	}
	public override Vector2 Jump
	{
		get { return _jump; }
		set {_jump = value; }
	}
	public override float Attack
	{
		get { return _attack; }
		set { _attack = value; }
	}
}
