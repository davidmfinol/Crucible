﻿using UnityEngine;
using System.Collections;

/// <summary>
/// Player character defines the motion for the character that the player controls.
/// </summary>
[RequireComponent(typeof(PlayerCharacterSettings))]
[RequireComponent(typeof(PlayerCharacterInput))]
[AddComponentMenu("Character/Player Character/Player Character Animator")]
public class PlayerCharacterAnimator : CharacterAnimator
{
	// Mecanim hashes
	private int _verticalSpeedHash;
	private int _horizontalSpeedHash;
	private int _jumpHash;
	private int _fallHash;
	private int _hangHash;
	private int _climbLadderHash;
	private int _isGroundedHash;
	private int _dieHash;
	private int _attack1Hash;
	private int _attack2Hash;
	private int _climbLedgeHash;
	private int _climbPipeHash;
	private int _randomIdleHash;
	
	// Used to keep track of the last y position at which the player was grounded
	private float _lastGroundHeight;
	// Used to keep track of a ledge we are climbing
	private Ledge _ledge;
	
    public void Spawn()
    {
		Heart.HitPoints = Heart.MaxHitPoints;
        transform.position = Settings.SpawnPoint.transform.position;
    }
	
	protected override void CreateStateMachine()
	{
		// First map the states
		StateMachine[Animator.StringToHash("Base Layer.Idle")] = Idle;
		StateMachine[Animator.StringToHash("Base Layer.Running")] = Running;
		StateMachine[Animator.StringToHash("Base Layer.Death")] = Die;
		StateMachine[Animator.StringToHash("Jumping.Jumping")] = Jumping;
		StateMachine[Animator.StringToHash("Jumping.JumpFalling")] = JumpFalling;
		StateMachine[Animator.StringToHash("Jumping.JumpLanding")] = Running;
		StateMachine[Animator.StringToHash("Falling.Falling")] = Falling;
		StateMachine[Animator.StringToHash("Falling.Landing")] = Running;
		StateMachine[Animator.StringToHash("Climbing.Hanging")] = Hanging;
		StateMachine[Animator.StringToHash("Climbing.ClimbingLedge")] = ClimbingLedge;
		StateMachine[Animator.StringToHash("Climbing.ClimbingLadder")] = ClimbingVertical;
		StateMachine[Animator.StringToHash("Climbing.ClimbingStrafe")] = ClimbingStrafe;
		StateMachine[Animator.StringToHash("Climbing.ClimbingPipe")] = ClimbingVertical;
		
		// Then hash the variables
		_verticalSpeedHash = Animator.StringToHash("VerticalSpeed");
		_horizontalSpeedHash = Animator.StringToHash("HorizontalSpeed");
		_jumpHash = Animator.StringToHash("Jump");
		_fallHash = Animator.StringToHash("Fall");
		_hangHash = Animator.StringToHash("Hang");
		_climbLadderHash = Animator.StringToHash("ClimbLadder");
		_isGroundedHash = Animator.StringToHash("IsGrounded");
		_dieHash = Animator.StringToHash("Die");
		_attack1Hash = Animator.StringToHash("Attack1");
		_attack2Hash = Animator.StringToHash("Attack2");
		_climbLedgeHash = Animator.StringToHash("ClimbLedge");
		_climbPipeHash = Animator.StringToHash("ClimbPipe");
		_randomIdleHash = Animator.StringToHash("RandomIdle");
	}
	
	protected override void Initialize ()
	{
		_lastGroundHeight = transform.position.y;
	}
	
	protected override void UpdateMecanimVariables()
	{
		if(!MecanimAnimator.GetBool(_jumpHash) && IsGrounded && CharInput.Jump)
		{
			MecanimAnimator.SetBool(_jumpHash, true);
			_lastGroundHeight = transform.position.y;
		}
		MecanimAnimator.SetBool(_climbLadderHash, CanClimbLadder && (CharInput.Up || CharInput.Down) );
		MecanimAnimator.SetBool(_climbPipeHash, CanClimbPipe && (CharInput.Up || CharInput.Down) );
		MecanimAnimator.SetBool(_isGroundedHash, IsGrounded);
		MecanimAnimator.SetBool(_attack1Hash, CharInput.Attack1);
		MecanimAnimator.SetBool(_attack2Hash, CharInput.Attack2);
	}
	
	protected override void OnUpdate()
	{
		// FIXME: THERE SHOULD BE A FASTER/MORE EFFICIENT WAY TO KEEP TRACK OF WEAPONS
		// AKA, ANIMATION EVENTS ON START AND END OF ATTACK ANIMATION
		Weapon weapon = Settings.Weapon.GetComponent<Weapon>();
		if(weapon is Mine)
		{
			if(CharInput.Attack1)
				weapon.ActivateAttack(0);
			if(CharInput.Attack2)
				weapon.ActivateAttack(1);
		}
		else if(!MecanimAnimator.GetCurrentAnimatorStateInfo(1).IsName("Melee.None") && MecanimAnimator.GetCurrentAnimatorStateInfo(1).normalizedTime < 0.5)
			weapon.ActivateAttack(0);
		else
			weapon.Deactivate();
		// TODO: REDO EVERYTHING ABOUT THE PRECEDING TO MAKE IT TRULY EVENT-BASED 
	}
	
    public override void OnDeath()
    {
		MecanimAnimator.SetBool(_dieHash, true);
    }
				
	protected void Die(float elapsedTime)
	{
		MecanimAnimator.SetBool(_dieHash, false);
		
		if(MecanimAnimator.GetCurrentAnimatorStateInfo(0).normalizedTime > 0.9)
        	Spawn();
	}
	
	protected virtual void Idle(float elapsedTime)
	{
		//TODO: SET up different idles with MecanimAnimator.SetFloat("RandomIdle", (float) _random.NextDouble());
		ApplyRunning(elapsedTime);
		VerticalSpeed = GroundVerticalSpeed;
		ApplyTriDirection();
		
		if(!MecanimAnimator.GetBool(_fallHash) && !IsGrounded)
		{
			MecanimAnimator.SetBool(_fallHash, true);
			_lastGroundHeight = transform.position.y;
		}
	}
	
	protected void Running(float elapsedTime)
	{
		ApplyRunning(elapsedTime);
		VerticalSpeed = GroundVerticalSpeed;
		ApplyBiDirection();
		
		if(!MecanimAnimator.GetBool(_fallHash) && !IsGrounded)
		{
			MecanimAnimator.SetBool(_fallHash, true);
			_lastGroundHeight = transform.position.y;
		}
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
		
		MecanimAnimator.SetBool(_hangHash, 
			(CanHangOffObject && ActiveHangTarget.DoesFaceXAxis() && VerticalSpeed < 0) 
			|| (CanHangOffObject && ActiveHangTarget.DoesFaceZAxis() && CharInput.Up));
	}
	
	protected void JumpFalling(float elapsedTime)
	{
		ApplyRunning(elapsedTime);
		ApplyGravity(elapsedTime);
		
		if(transform.position.y > _lastGroundHeight)
			MecanimAnimator.SetBool(_fallHash, false);
		
		MecanimAnimator.SetBool(_hangHash, 
			(CanHangOffObject && ActiveHangTarget.DoesFaceXAxis() && VerticalSpeed < 0) 
			|| (CanHangOffObject && ActiveHangTarget.DoesFaceZAxis() && CharInput.Up));
	}
	
	protected void Falling(float elapsedTime)
	{
		ApplyRunning(elapsedTime);
		ApplyGravity(elapsedTime);
		
		MecanimAnimator.SetBool(_fallHash, false);
		
		MecanimAnimator.SetBool(_hangHash, 
			(CanHangOffObject && ActiveHangTarget.DoesFaceXAxis() && VerticalSpeed < 0) 
			|| (CanHangOffObject && ActiveHangTarget.DoesFaceZAxis() && CharInput.Up));
	}
	
	protected void Hanging(float elapsedTime)
	{
		VerticalSpeed = 0;
		if(MecanimAnimator.GetBool(_hangHash))
		{
			VerticalSpeed = 0;
			
			if(ActiveHangTarget == null)
			{
				MecanimAnimator.SetBool(_fallHash, true);
				return;
			}
			
	        if (ActiveHangTarget.DoesFaceZAxis())
	        {
	            HorizontalSpeed = 0.0f;
	            Direction = Vector3.zero;
	        }
	        else
	        {
	            HorizontalSpeed = Direction.x * Settings.LedgeClimbingSpeed;
	            if (IsHangTargetToRight)
	                Direction = Vector3.right;
	            else
	                Direction = Vector3.left;
	        }
			
			if(ActiveHangTarget is Ledge)
	        	_ledge = (Ledge) ActiveHangTarget;
			else
				_ledge = null;
			
			DropHangTarget();
			MecanimAnimator.SetBool(_hangHash, false);
		}
		
        if (_ledge != null && (CharInput.Up || InputForward))
			MecanimAnimator.SetBool(_climbLedgeHash, true);
		else if(CharInput.Jump)
			MecanimAnimator.SetBool(_jumpHash, true);
		else if(CharInput.Down)
			MecanimAnimator.SetBool(_fallHash, true);
	}
	
	protected void ClimbingLedge(float elapsedTime)
	{
		if(MecanimAnimator.GetBool(_climbLedgeHash))
		{
	        if (_ledge.DoesFaceZAxis())
	        {
	            HorizontalSpeed = 0.0f;
	            VerticalSpeed = Settings.LedgeClimbingSpeed;
	        }
	        else if (_ledge.DoesFaceXAxis())
	        {
	            HorizontalSpeed = Direction.x * Settings.LedgeClimbingSpeed;
	            VerticalSpeed = Settings.LedgeClimbingSpeed;
	        }
			MecanimAnimator.SetBool(_climbLedgeHash, false);
		}
		else
		{
	        if (transform.position.y > _ledge.transform.position.y + _ledge.collider.bounds.extents.y + Height / 2)
	            VerticalSpeed = GroundVerticalSpeed;
		}
	}
	
	protected void ClimbingVertical(float elapsedTime)
	{
		ApplyLadderClimbing();
		
		if(VerticalSpeed != 0)
			ApplyLadderStrafing();
		else
			HorizontalSpeed = 0;
		
		Direction = Vector3.zero;
	}
	
	protected void ClimbingStrafe(float elapsedTime)
	{
		ApplyLadderStrafing();
		
		if(HorizontalSpeed != 0)
			ApplyLadderClimbing();
		else
			VerticalSpeed = 0.0f;
		
		Direction = Vector3.zero;
		
		MecanimAnimator.SetFloat(_horizontalSpeedHash, HorizontalSpeed);
		if(CharInput.Jump)
		{
			MecanimAnimator.SetBool(_jumpHash, true);
			_lastGroundHeight = transform.position.y;
		}
	}
	
	
	/* TODO: DETERMINE HOW WE PICK STUFF UP
    public override void OnControllerColliderHit(ControllerColliderHit hit)
    {
        base.OnControllerColliderHit(hit);

        // We can pick up items
        if (hit.gameObject.tag == "Item")
        {
            HasPackage = true; // TODO: seperate script for inventory
            Destroy(hit.gameObject);
        }
    }
    */
	
	protected override void ApplyRunning (float elapsedTime)
	{
		base.ApplyRunning(elapsedTime);
		MecanimAnimator.SetFloat(_horizontalSpeedHash, Direction.x * HorizontalSpeed/Settings.MaxHorizontalSpeed);
	}
	
	public new PlayerCharacterSettings Settings
	{
		get { return (PlayerCharacterSettings) base.Settings; }
	}
	public new PlayerCharacterInput CharInput
	{
		get { return (PlayerCharacterInput) base.CharInput; }
	}
}
