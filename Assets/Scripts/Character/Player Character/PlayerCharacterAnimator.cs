using UnityEngine;
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
	private int _shootGunHash;
	
	// Used to keep track of the last y position at which the player was grounded
	private float _lastGroundHeight;
	// Used to keep track of a ledge we are climbing
	private Ledge _ledge;
	
	public static int countItems = 0;
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
		StateMachine[Animator.StringToHash("Air.Jumping")] = Jumping;
		StateMachine[Animator.StringToHash("Air.Falling")] = Falling;
		StateMachine[Animator.StringToHash("Air.Landing")] = Running;
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
		_shootGunHash = Animator.StringToHash("ShootGun");
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
		
		// TODO: SET UP THE APPROPRIATE ATTACK ANIMATIONS
		// IN PARTICULAR, NEED ANIMATION FOR PUTTING DOWN MINE
		// WILL ALSO NEED WAY TO PREVENT WEAPON SWITCH DURING CERTAIN ANIMATIONS
		MecanimAnimator.SetBool(_attack1Hash, false); 
		MecanimAnimator.SetBool(_shootGunHash, false); 
		if(CharInput.Attack1)
		{
			if(Settings.Weapon.GetComponent<Weapon>() is GravityGun)
				MecanimAnimator.SetBool(_shootGunHash, true); 
			else
				MecanimAnimator.SetBool(_attack1Hash, true);
		}
		MecanimAnimator.SetBool(_attack2Hash, CharInput.Attack2);
	}

	public void ActivateWeapon(int activationNumber)
	{
		if(Settings.Weapon == null)
			return;
		Weapon weapon = Settings.Weapon.GetComponent<Weapon>();
		if(weapon != null)
			weapon.ActivateAttack(0);
	}
	public void DeactivateWeapon()
	{
		if(Settings.Weapon == null)
			return;
		Weapon weapon = Settings.Weapon.GetComponent<Weapon>();
		if(weapon != null)
			weapon.Deactivate();
	}

	void StartMelee()
	{
		ActivateWeapon(0);
	}
	void EndMelee()
	{
		DeactivateWeapon();
	}
	void PlaceMine()
	{
		ActivateWeapon(0);
	}
	void DetonateMine()
	{
		ActivateWeapon(1);
	}
	void ShootGun()
	{
		ActivateWeapon(0);
	}
	
    public override void OnDeath()
    {
		MecanimAnimator.SetBool(_dieHash, true);
    }
				
	protected void Die(float elapsedTime)
	{
        MecanimAnimator.SetBool(_jumpHash, false);
		MecanimAnimator.SetBool(_fallHash, false);
        MecanimAnimator.SetBool(_dieHash, false);
		
		if(MecanimAnimator.GetCurrentAnimatorStateInfo(0).normalizedTime > 0.7)
        	Spawn();
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
		
        if(transform.position.y >= _lastGroundHeight - 1)
            MecanimAnimator.SetBool(_fallHash, false);
		
		MecanimAnimator.SetBool(_hangHash, 
			(CanHangOffObject && ActiveHangTarget.DoesFaceXAxis() && VerticalSpeed < 0) 
			|| (CanHangOffObject && ActiveHangTarget.DoesFaceZAxis() && CharInput.Up));
		
		//TODO: Support for double-jumping
		//if (IsTouchingWall && CharInput.Jump)
		//	MecanimAnimator.SetBool(_jumpHash, true);
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
		if(ActiveHangTarget != null)
			_ledge = ActiveHangTarget as Ledge;

		if ((Direction.x > 0 && transform.position.x > _ledge.transform.position.x + _ledge.collider.bounds.extents.x)
		    || (Direction.x < 0 && transform.position.x < _ledge.transform.position.x - _ledge.collider.bounds.extents.x)
		    || MecanimAnimator.GetCurrentAnimatorStateInfo(0).normalizedTime > 0.9)
		{
			VerticalSpeed = GroundVerticalSpeed;
			MecanimAnimator.SetBool(_climbLedgeHash, false);
		}
      	else if (transform.position.y > _ledge.transform.position.y + _ledge.collider.bounds.extents.y + Height/2)
			VerticalSpeed = 0;
		else
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
		}
	}
	
	protected void ClimbingVertical(float elapsedTime)
	{
		ApplyClimbingVertical();
		
		if(VerticalSpeed != 0)
			ApplyClimbingStrafing();
		else
			HorizontalSpeed = 0;

		
		
        if(ActiveHangTarget == null)
		{
			DropHangTarget();
			MecanimAnimator.SetBool(_fallHash, true);
		}
		else
		{
			MecanimAnimator.SetFloat(_verticalSpeedHash, VerticalSpeed);
			if(ActiveHangTarget.DoesFaceZAxis())
				Direction = Vector3.zero;
		}
	}
	
	protected void ClimbingStrafe(float elapsedTime)
	{
		ApplyClimbingStrafing();
		
		if(HorizontalSpeed != 0)
			ApplyClimbingVertical();
		else
			VerticalSpeed = 0.0f;
				
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
		else if(ActiveHangTarget.DoesFaceZAxis())
		{
			Direction = Vector3.zero;
		}
	}
	
	// TODO: DETERMINE HOW WE PICK STUFF UP
    public override void OnControllerColliderHit(ControllerColliderHit hit)
    {
        base.OnControllerColliderHit(hit);

        // We can pick up items
        if (hit.gameObject.tag == "Item")
        {
           // HasPackage = true; // TODO: seperate script for inventory
            Destroy(hit.gameObject);
			countItems += 1;
        }
    }
    
	
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
