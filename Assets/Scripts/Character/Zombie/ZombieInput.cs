using UnityEngine;
using System.Collections;

/// <summary>
/// Zombie input does the AI for the zombie.
/// </summary>
[AddComponentMenu("Character/Zombie/Zombie Input")]
public class ZombieInput : CharacterInput
{
	private bool _isRunningRight;
	
	void Update()
	{
		_isRunningRight = false;
	}
	
	public override float HorizontalInput
	{
		get { return _isRunningRight ? 1.0f : 0.0f; }
	}
}
