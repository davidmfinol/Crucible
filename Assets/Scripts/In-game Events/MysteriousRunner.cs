using UnityEngine;
using System.Collections;

/// <summary>
/// Mysterious runner is the runner you see at the start of the game that teaches you the motions.
/// </summary>
[AddComponentMenu("In-game Events/Mysterious Runner")]
public class MysteriousRunner : MonoBehaviour
{
	public bool IsFirst;

	private CharacterAnimator _controller;
	private bool _hasTurnedYet;


	void Start ()
	{
		_controller = GetComponent<CharacterAnimator> ();
		if(IsFirst)
			_controller.CharInput.UpdateInputMethod = ShowWallJump1;
		else
			_controller.CharInput.UpdateInputMethod = ShowWallJump2;
		_hasTurnedYet = false;
	}

	public void ShowWallJump1 ()
	{
		if (!_hasTurnedYet)
			_controller.CharInput.Horizontal = Vector3.left.x;
		else
			_controller.CharInput.Horizontal = Vector3.right.x;

	}
	
	public void ShowWallJump2 ()
	{
		// TODO
	}
}
