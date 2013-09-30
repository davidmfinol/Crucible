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
	// Mecanim hashes
	private int _verticalSpeedHash;
	private int _horizontalSpeedHash;
	private int _jumpHash;
	private int _fallHash;
	private int _climbHash;
	private int _isGroundedHash;
	private int _attackHash;
	private int _takeHitHash;
	
	protected override void CreateStateMachine()
	{
		// Map States
		StateMachine[Animator.StringToHash("Base Layer.Idle")] = Idle;
		StateMachine[Animator.StringToHash("Base Layer.Running")] = Running;
		StateMachine[Animator.StringToHash("Base Layer.Climbing")] = Climbing;
		StateMachine[Animator.StringToHash("Base Layer.TakingDamage")] = Running;
		StateMachine[Animator.StringToHash("Jumping.Jumping")] = Jumping;
		StateMachine[Animator.StringToHash("Jumping.JumpFalling")] = Falling;
		StateMachine[Animator.StringToHash("Jumping.JumpLanding")] = Running;
		StateMachine[Animator.StringToHash("Falling.Falling")] = Falling;
		StateMachine[Animator.StringToHash("Falling.Landing")] = Running;
		
		// Hash Variables
		_verticalSpeedHash = Animator.StringToHash("VerticalSpeed");
		_horizontalSpeedHash = Animator.StringToHash("HorizontalSpeed");
		_jumpHash = Animator.StringToHash("Jump");
		_fallHash = Animator.StringToHash("Fall");
		_climbHash = Animator.StringToHash("Climb");
		_isGroundedHash = Animator.StringToHash("IsGrounded");
		_attackHash = Animator.StringToHash("Attack");
		_takeHitHash = Animator.StringToHash("TakeHit");
	}
	
	protected override void UpdateMecanimVariables()
	{
		if(!MecanimAnimator.GetBool(_jumpHash) && IsGrounded && CharInput.Jump)
			MecanimAnimator.SetBool(_jumpHash, true);
		MecanimAnimator.SetBool(_fallHash, !IsGrounded);
		MecanimAnimator.SetBool(_climbHash, (CanClimbPipe || CanClimbLadder) && CharInput.Up );
		MecanimAnimator.SetBool(_isGroundedHash, IsGrounded);
		MecanimAnimator.SetBool(_attackHash, CharInput.Attack1);
		MecanimAnimator.SetBool(_takeHitHash, false); // TODO: have the heart box register hit
	}
	
	protected virtual void Idle(float elapsedTime)
	{
		ApplyRunning(elapsedTime);
		VerticalSpeed = GroundVerticalSpeed;
		ApplyTriDirection();
	}
	
	protected void Running(float elapsedTime)
	{
		ApplyRunning(elapsedTime);
		VerticalSpeed = GroundVerticalSpeed;
		ApplyBiDirection();
	}
	
	protected void Jumping(float elapsedTime)
	{
		ApplyRunning(elapsedTime);
		
		if(MecanimAnimator.GetBool(_jumpHash))
		{
        	VerticalSpeed = Mathf.Sqrt(2 * Settings.JumpHeight * Settings.Gravity);
			MecanimAnimator.SetBool(_jumpHash, false);
		}
		else
			ApplyGravity(elapsedTime);
		
		ApplyBiDirection();
		
		MecanimAnimator.SetBool(_fallHash, false);
	}
	
	protected void Falling(float elapsedTime)
	{
		ApplyRunning(elapsedTime);
		ApplyGravity(elapsedTime);
	}
	
	protected void Climbing(float elapsedTime)
	{
		HorizontalSpeed = 0;
		ApplyLadderClimbing();
		
		MecanimAnimator.SetFloat(_verticalSpeedHash, VerticalSpeed);
		MecanimAnimator.SetBool(_fallHash, false);
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
