using UnityEngine;
using System.Collections;

/// <summary>
/// Zombie settings.
/// </summary>
[AddComponentMenu("Character/Zombie/Zombie Settings")]
public class ZombieSettings : CharacterSettings
{
	private int _takeHit;
	
	protected override void Awake ()
	{
		base.Awake ();
		_takeHit = Animator.StringToHash("TakeHit");
	}
	
	public int TakeHit
	{
		get { return _takeHit; }
	}
}
