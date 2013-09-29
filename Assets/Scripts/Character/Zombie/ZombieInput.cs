using UnityEngine;
using System.Collections;

/// <summary>
/// Zombie input does the AI for the zombie.
/// </summary>
[AddComponentMenu("Character/Zombie/Zombie Input")]
public class ZombieInput : CharacterInput
{
	private bool _isRunningRight = false;
	private float _time = 0;
	
	
	//TODO: INTEGRATE AI AFTER THE STATE MACHINE IS SET UP
	void Update()
	{
		_time += Time.deltaTime;
		if(_time > 1)
		{
			//_isRunningRight = !_isRunningRight;
			_isRunningRight = false;
			_time = 0;
		}
	}
	
	public override float HorizontalInput
	{
		get { return _isRunningRight ? 1.0f : 0.0f; }
	}
	
	public override bool Attack1
	{
		get { return false; }
	}
}
