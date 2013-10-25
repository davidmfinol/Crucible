﻿using UnityEngine;
using System.Collections;

/// <summary>
/// Zombie animator moves the zombie.
/// </summary>
[RequireComponent(typeof(ZombieSettings))]
[RequireComponent(typeof(ZombieInput))]
[AddComponentMenu("Character/Zombie/Zombie Animator")]
public class ZombieAnimator : CharacterAnimator
{
	/*
    // TODO: SHOULD SET THIS ANOTHER WAY
    // So we can find the arms to use as weapons
    public string LeftForearmBoneName;
    public string RightForearmBoneName;
    
	
	// Mecanim hashes
	private int _verticalSpeedHash;
	private int _horizontalSpeedHash;
	private int _jumpHash;
	private int _fallHash;
	private int _climbHash;
	private int _isGroundedHash;
	private int _attackHash;
	private int _takeHitHash;
	
	// Zombie should play it's own sound effects
    private ZombieAudioPlayer _zombieAudioSource;
    
    // Bones for our left and right hands
    private Transform _bone_L;
    private Transform _bone_R;

	
	protected override void CreateStateMachine()
	{
		// Map States
		StateMachine[Animator.StringToHash("Base Layer.Idle")] = Idle;
		//Debug.LogWarning("Base Layer.Idle:" + Animator.StringToHash("Base Layer.Idle"));
		StateMachine[Animator.StringToHash("Base Layer.Running")] = Running;
		//Debug.LogWarning("Base Layer.Running:" + Animator.StringToHash("Base Layer.Running"));
		StateMachine[Animator.StringToHash("Base Layer.Climbing")] = Climbing;
		//Debug.LogWarning("Base Layer.Climbing:" + Animator.StringToHash("Base Layer.Climbing"));
		StateMachine[Animator.StringToHash("Base Layer.TakingDamage")] = TakingDamage;
		//Debug.LogWarning("Base Layer.TakingDamage:" + Animator.StringToHash("Base Layer.TakingDamage"));
		StateMachine[Animator.StringToHash("Jumping.Jumping")] = Jumping;
		//Debug.LogWarning("Jumping.Jumping:" + Animator.StringToHash("Jumping.Jumping"));
		StateMachine[Animator.StringToHash("Jumping.JumpFalling")] = Falling;
		//Debug.LogWarning("Jumping.JumpFalling:" + Animator.StringToHash("Jumping.JumpFalling"));
		StateMachine[Animator.StringToHash("Jumping.JumpLanding")] = Running;
		//Debug.LogWarning("Jumping.JumpLanding:" + Animator.StringToHash("Jumping.JumpLanding"));
		StateMachine[Animator.StringToHash("Falling.Falling")] = Falling;
		//Debug.LogWarning("Falling.Falling:" + Animator.StringToHash("Falling.Falling"));
		StateMachine[Animator.StringToHash("Falling.Landing")] = Running;
		//Debug.LogWarning("Falling.Landing:" + Animator.StringToHash("Falling.Landing"));
		
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
	protected override void Initialize ()
	{
        _zombieAudioSource = GetComponentInChildren<ZombieAudioPlayer>();

        // We need to find the bones for our hands so we can attack with them
        _bone_L = CharacterSettings.SearchHierarchyForBone(transform, LeftForearmBoneName);
        _bone_R = CharacterSettings.SearchHierarchyForBone(transform, RightForearmBoneName);
	}
	
	protected override void UpdateMecanimVariables()
	{
		if(!MecanimAnimator.GetBool(_jumpHash) && IsGrounded && CharInput.Jump)
			MecanimAnimator.SetBool(_jumpHash, true);
		MecanimAnimator.SetBool(_fallHash, !IsGrounded);
		MecanimAnimator.SetBool(_climbHash, (CanClimbPipe || CanClimbLadder) && CharInput.Up );
		MecanimAnimator.SetBool(_isGroundedHash, IsGrounded);
        //FIXME: THIS FOLLOWING LINES ARE TOO LONG AND SLOW
        bool shouldAttack = !MecanimAnimator.GetBool(_takeHitHash) && !MecanimAnimator.GetCurrentAnimatorStateInfo(0).IsName("Base Layer.TakingDamage") && CharInput.Attack1;
        // REALISTICALLY, THE HITBOXES SHOULD BE CREATED AT RUNTIME AND THEN PARENTED TO THE BONE (THEN DESTROYED AT RUNTIME AS WELL)
        // THEN THE ENTIRE RIG CAN USE THE RAGDOLL LAYER AGAIN ( CURRENTLY THE ARMS ARE USING THE HITBOX LAYER)
		MecanimAnimator.SetBool(_attackHash, shouldAttack);
        _bone_L.GetComponent<Collider>().enabled = shouldAttack;
        _bone_L.GetComponent<HitBox>().enabled = shouldAttack;
        _bone_R.GetComponent<Collider>().enabled = shouldAttack;
        _bone_R.GetComponent<HitBox>().enabled = shouldAttack;
        //TODO: FIX THE PRECEDING; SHOULD FIND SOLUTION FOR ALL CHARACTERS?
	}
	
	protected virtual void Idle(float elapsedTime)
	{
		ApplyRunning(elapsedTime);
		VerticalSpeed = GroundVerticalSpeed;
		ApplyTriDirection();
		_zombieAudioSource.PlayIdle();
	}
	
	protected void Running(float elapsedTime)
	{
		ApplyRunning(elapsedTime);
		VerticalSpeed = GroundVerticalSpeed;
		ApplyBiDirection();
		_zombieAudioSource.PlayRunning();
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
		ApplyClimbingVertical();
		Direction = Vector3.zero;
		
		MecanimAnimator.SetFloat(_verticalSpeedHash, VerticalSpeed);
		MecanimAnimator.SetBool(_fallHash, false);
		
        if(CharInput.Jump)
		{
			MecanimAnimator.SetBool(_jumpHash, true);
		}
		else if(ActiveHangTarget == null)
		{
			DropHangTarget();
			MecanimAnimator.SetBool(_fallHash, true);
		}
	}
	
	protected override void ApplyRunning (float elapsedTime)
	{
		base.ApplyRunning(elapsedTime);
		MecanimAnimator.SetFloat(_horizontalSpeedHash, Direction.x * HorizontalSpeed/Settings.MaxHorizontalSpeed);
	}
	
	protected void TakingDamage(float elapsedTime)
	{
		HorizontalSpeed = 0;
		VerticalSpeed = GroundVerticalSpeed;
		
		MecanimAnimator.SetBool(_takeHitHash, false);
	}
	
    public override void OnDeath()
    {
        ZombieAudioSource.PlayDeath();
        ActivateRagDoll(transform);
        CharacterAnimatorDebugger debug = GetComponent<CharacterAnimatorDebugger>();
        if (debug != null)
            Destroy(debug);
        ZombieAIDebugger debug2 = GetComponent<ZombieAIDebugger>();
        if (debug2 != null)
            Destroy(debug2);
        Destroy(this);
		GameManager.AI.Zombies.Remove(CharInput);
		Destroy(CharInput);
		Destroy(Settings);
        Destroy(Controller);
		Destroy(MecanimAnimator);
        Destroy(GetComponent<Seeker>());
    }
    */
	
	
    // So we can find the arms to use as weapons
    public string LeftForearmBoneName;
    public string RightForearmBoneName;
	
	// Zombie should play it's own sound effects
    private ZombieAudioPlayer _zombieAudioSource;
	
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
    
    // Bones for our left and right hands
    private Transform _bone_L;
    private Transform _bone_R;

	
	protected override void Initialize ()
	{
        _zombieAudioSource = GetComponentInChildren<ZombieAudioPlayer>();

        // We need to find the bones for our hands so we can attack with them
        _bone_L = CharacterSettings.SearchHierarchyForBone(transform, LeftForearmBoneName);
        _bone_R = CharacterSettings.SearchHierarchyForBone(transform, RightForearmBoneName);
		_lastGroundHeight = transform.position.y;
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
	
	/*
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
		// TODO: REDO EVERYTHING ABOUT THE PRECEDING (should most likely make a seperate script to handle the combat layer?)
	}
	*/
	
    public override void OnDeath()
    {
		MecanimAnimator.SetBool(_dieHash, true);
    }
				
	protected void Die(float elapsedTime)
	{
        MecanimAnimator.SetBool(_jumpHash, false);
		MecanimAnimator.SetBool(_fallHash, false);
        MecanimAnimator.SetBool(_dieHash, false);
		
		//if(MecanimAnimator.GetCurrentAnimatorStateInfo(0).normalizedTime > 0.7)
        //	Spawn();
	}
	
	protected virtual void Idle(float elapsedTime)
	{
		//TODO: SET up different idles by modifying this variable
		MecanimAnimator.SetFloat(_randomIdleHash, 0);
		
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
			
			MecanimAnimator.SetBool(_hangHash, false);
		}
		
		if(ActiveHangTarget != null)
			ActivePlatform = ActiveHangTarget.transform;
		
        if(ActiveHangTarget == null)
		{
			DropHangTarget();
			MecanimAnimator.SetBool(_fallHash, true);
		}
		else if (ActiveHangTarget is Ledge && (CharInput.Up || InputForward))	
		{
			MecanimAnimator.SetBool(_climbLedgeHash, true);
		}
		else if(CharInput.Jump)
		{
			DropHangTarget();
			MecanimAnimator.SetBool(_jumpHash, true);
		}
		else if(CharInput.Down)
		{
			DropHangTarget();
			MecanimAnimator.SetBool(_fallHash, true);
		}
	}
	
	protected void ClimbingLedge(float elapsedTime)
	{
		if(MecanimAnimator.GetBool(_climbLedgeHash))
		{
			_ledge = ActiveHangTarget as Ledge;
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
	        if (transform.position.x > _ledge.transform.position.x + _ledge.collider.bounds.extents.x
				|| transform.position.x < _ledge.transform.position.x - _ledge.collider.bounds.extents.x)
	            HorizontalSpeed = 0;
		}
	}
	
	protected void ClimbingVertical(float elapsedTime)
	{
		ApplyClimbingVertical();
		
		if(VerticalSpeed != 0)
			ApplyClimbingStrafing();
		else
			HorizontalSpeed = 0;
		
		Direction = Vector3.zero;
		
		
        if(ActiveHangTarget == null)
		{
			DropHangTarget();
			MecanimAnimator.SetBool(_fallHash, true);
		}
		else
			MecanimAnimator.SetFloat(_verticalSpeedHash, VerticalSpeed);
	}
	
	protected void ClimbingStrafe(float elapsedTime)
	{
		ApplyClimbingStrafing();
		
		if(HorizontalSpeed != 0)
			ApplyClimbingVertical();
		else
			VerticalSpeed = 0.0f;
		
		Direction = Vector3.zero;
		
		MecanimAnimator.SetFloat(_horizontalSpeedHash, HorizontalSpeed);
		
        if(CharInput.Jump)
		{
			MecanimAnimator.SetBool(_jumpHash, true);
			_lastGroundHeight = transform.position.y;
		}
		else if(ActiveHangTarget == null)
		{
			DropHangTarget();
			MecanimAnimator.SetBool(_fallHash, true);
		}
	}
	
    // Helper Method to activate the ragdoll of the zombie
    public void ActivateRagDoll(Transform current)
    {
        // activate the ragdoll for all child bones
        for (int i = 0; i < current.childCount; ++i)
            ActivateRagDoll(current.GetChild(i));

        // activate the ragdoll for the bone we're on
        if (current.GetComponent<ZombieHeartBox>() != null)
            Destroy(current.gameObject);
        else if (current.rigidbody != null && current.collider != null)
        {
            current.collider.enabled = true;
            current.rigidbody.isKinematic = false;
        }
    }	
	
	protected override void ApplyRunning (float elapsedTime)
	{
		base.ApplyRunning(elapsedTime);
		MecanimAnimator.SetFloat(_horizontalSpeedHash, Direction.x * HorizontalSpeed/Settings.MaxHorizontalSpeed);
	}
	
	
    public ZombieAudioPlayer ZombieAudioSource
    {
        get { return _zombieAudioSource; }
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
