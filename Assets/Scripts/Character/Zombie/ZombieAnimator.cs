using UnityEngine;
using System.Collections;

/// <summary>
/// Zombie animator moves the zombie.
/// </summary>
[RequireComponent(typeof(ZombieSettings))]
[RequireComponent(typeof(ZombieInput))]
[AddComponentMenu("Character/Zombie/Zombie Animator")]
public class ZombieAnimator : CharacterAnimator
{
	
	protected override void CreateStateMachine()
	{
		StateMachine[Animator.StringToHash("Base Layer.Idle")] = Idle;
		StateMachine[Animator.StringToHash("Base Layer.Running")] = Running;
		StateMachine[Animator.StringToHash("Base Layer.TakingDamage")] = TakeHit;
	}
	
	public void TakeHit(float elapsedTime)
	{
		HorizontalSpeed = 0;
		VerticalSpeed = GroundVerticalSpeed;
	}
	
	protected override void UpdateMecanimVariables ()
	{
		base.UpdateMecanimVariables ();
		MecanimAnimator.SetBool(Settings.TakeHit, true);
	}
	
	public new ZombieSettings Settings
	{
		get { return (ZombieSettings) base.Settings; }
	}
	public new ZombieInput CharInput
	{
		get { return (ZombieInput) base.CharInput; }
	}
}
