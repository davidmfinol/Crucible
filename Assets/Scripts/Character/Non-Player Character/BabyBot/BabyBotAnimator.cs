using UnityEngine;
using System.Collections.Generic;

/// <summary>
/// Baby bot animator moves/animates the Baby Bot enemy type.
/// </summary>
[AddComponentMenu("Character/Non-Player Character/BabyBot/BabyBot Animator")]
public class BabyBotAnimator : CharacterAnimator
{
    // TODO: REPLACE THIS WITH SOME KIND OF POOL OF HITBOX OBJECTS
    public GameObject MeleeEvent;

	// Mecanim hashes
	private int _awakeHash;
	private int _horizontalSpeedHash;
	private int _attackHash;
	private int _isGroundedHash;
	private int _jumpHash;


	protected override void CreateStateMachine()
	{
		// First map the states
		StateMachine[Animator.StringToHash("Base Layer.Idle")] = Idle;
		StateMachine[Animator.StringToHash("Base Layer.Awake")] = Idle;
		StateMachine[Animator.StringToHash("Base Layer.Run")] = Run;
		StateMachine[Animator.StringToHash("Base Layer.Attack")] = Run;
		StateMachine[Animator.StringToHash("Air.Landing")] = Run;
		StateMachine[Animator.StringToHash("Air.Jumping")] = Jump;
		StateMachine[Animator.StringToHash("Air.Falling")] = Fall;

		// Then hash the variables
		_awakeHash = Animator.StringToHash ("Awake");
		_horizontalSpeedHash = Animator.StringToHash ("HorizontalSpeed");
		_attackHash = Animator.StringToHash("Attack");
		_isGroundedHash = Animator.StringToHash("IsGrounded");
		_jumpHash = Animator.StringToHash("Jump");
	}
	protected override void UpdateMecanimVariables ()
	{
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
		MecanimAnimator.SetFloat (_horizontalSpeedHash, Mathf.Abs(CharInput.Horizontal));
		HorizontalSpeed = 0;
		VerticalSpeed = GroundVerticalSpeed;
		ApplyBiDirection ();
	}
	protected void Jump(float elapsedTime)
	{
	}
	protected void Fall(float elapsedTime)
	{
	}

    public void SelfDestruct()
    {
        GameObject o = (GameObject) Instantiate (MeleeEvent, transform.position, Quaternion.identity);
        HitBox d = o.GetComponentInChildren<HitBox> ();
        d.MakeBabyBotExplosion(this.gameObject);
    }
}
