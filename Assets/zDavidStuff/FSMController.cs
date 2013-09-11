using UnityEngine;
using System.Collections;

/// <summary>
/// FSM controller works with CharacterController and Mecanim to move and animate characters.
/// </summary>
[RequireComponent(typeof(CharacterController))]
[RequireComponent(typeof(Animator))]
public class FSMController : MonoBehaviour
{
	private CharacterController _characterController;
	private Animator _animator;
	
	void Start()
	{
		_characterController = GetComponent<CharacterController>();
		_animator = GetComponent<Animator>();
	}
}
