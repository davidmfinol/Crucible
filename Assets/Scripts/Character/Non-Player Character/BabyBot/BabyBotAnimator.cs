using UnityEngine;
using System.Collections.Generic;

/// <summary>
/// Baby bot animator moves/animates the Baby Bot enemy type.
/// </summary>
[AddComponentMenu("Character/Non-Player Character/BabyBot/BabyBot Animator")]
public class BabyBotAnimator : CharacterAnimator
{
	// Mecanim hashes
	private int _awakeHash;
	private int _horizontalSpeedHash;
	private int _attackHash;


	protected override void CreateStateMachine()
	{
		// First map the states
		StateMachine[Animator.StringToHash("Base Layer.Idle")] = Idle;
		StateMachine[Animator.StringToHash("Base Layer.Awake")] = Idle;
		StateMachine[Animator.StringToHash("Base Layer.Run")] = Run;
		StateMachine[Animator.StringToHash("Base Layer.Attack")] = Run;

		// Then hash the variables
		_awakeHash = Animator.StringToHash ("Awake");
		_horizontalSpeedHash = Animator.StringToHash ("HorizontalSpeed");
		_attackHash = Animator.StringToHash("Attack");
	}
	protected override void UpdateMecanimVariables ()
	{
		MecanimAnimator.SetFloat (_horizontalSpeedHash, Mathf.Abs(HorizontalSpeed));
		MecanimAnimator.SetBool (_attackHash, CharInput.AttackActive);
	}
	protected void Idle(float elapsedTime)
	{
		if (CharInput.Left || CharInput.Right)
			MecanimAnimator.SetBool (_awakeHash, true);
		HorizontalSpeed = 0;
		VerticalSpeed = GroundVerticalSpeed;
		ApplyBiDirection ();
	}
	protected void Run(float elapsedTime)
	{
		MecanimAnimator.SetBool (_awakeHash, false);
		if(!CharInput.Left && !CharInput.Right)
			HorizontalSpeed = 0;
		else
			HorizontalSpeed = Direction.x * Settings.MaxHorizontalSpeed;
		VerticalSpeed = GroundVerticalSpeed;
		ApplyBiDirection ();
	}
}
