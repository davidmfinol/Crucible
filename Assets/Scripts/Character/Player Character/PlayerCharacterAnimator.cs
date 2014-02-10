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
	private int _attackMeleeHash;
	private int _placeMineHash;
	private int _climbLedgeHash;
	private int _climbPipeHash;
	private int _randomIdleHash;
	private int _shootGunHash;
	private int _detonateMineHash;
	private int _grabWallHash;
	private int _jumpWallHash;
	private int _backflipHash;
	private int _climbStrafeHash;
	private int _respawnHash;

	// Used to keep track of a ledge we are climbing
    private Ledge _ledge;
    
    // Used for backflipping
	private float _desiredSpeed;
	
	//TODO: figure out this comment
	private float _timeUntilNextFootStepSound = -1f;
	// TODO: remove this (use variation of Justin's script?)
	public static int countItems = 0;
    //TODO: figure out this comment
	private AttackData _attackedBy;

	// Auto-climb code for ladders and pipes
	private enum AutoClimbDirection : int
	{
		AutoClimb_None = 0,
		AutoClimb_Up,
		AutoClimb_Down
	};

	private AutoClimbDirection _autoClimbDir;

    public void Spawn() 
    {
		Heart.HitPoints = Heart.MaxHitPoints;
        transform.position = Settings.SpawnPoint.transform.position;
		MecanimAnimator.SetBool (_respawnHash, true);
	}
	
	protected override void CreateStateMachine()
	{
		// First map the states
		StateMachine[Animator.StringToHash("Base Layer.Idle")] = Idle;
		StateMachine[Animator.StringToHash("Base Layer.Running")] = Running;
		StateMachine[Animator.StringToHash("Base Layer.Rolling")] = Rolling;
		StateMachine[Animator.StringToHash("Base Layer.Waiting For Respawn")] = WaitingForRespawn;
		StateMachine[Animator.StringToHash("Base Layer.Death")] = Die;
		StateMachine[Animator.StringToHash("Air.Jumping")] = Jumping;
		StateMachine[Animator.StringToHash("Air.Falling")] = Falling;
		StateMachine[Animator.StringToHash("Air.Landing")] = Running;
		StateMachine[Animator.StringToHash("Air.Backflip")] = Backflip;
		StateMachine[Animator.StringToHash("Wall.Wallgrabbing")] = Wallgrabbing;
		StateMachine[Animator.StringToHash("Wall.Walljumping")] = Walljumping;
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
		_attackMeleeHash = Animator.StringToHash("AttackMelee");
		_placeMineHash = Animator.StringToHash("PlaceMine");
		_climbLedgeHash = Animator.StringToHash("ClimbLedge");
		_climbPipeHash = Animator.StringToHash("ClimbPipe");
		_randomIdleHash = Animator.StringToHash("RandomIdle");
		_shootGunHash = Animator.StringToHash("ShootGun");
		_detonateMineHash = Animator.StringToHash("DetonateMine");
		_grabWallHash = Animator.StringToHash("GrabWall");
		_jumpWallHash = Animator.StringToHash("JumpWall");
		_backflipHash = Animator.StringToHash ("Backflip");
		_climbStrafeHash = Animator.StringToHash ("ClimbStrafe");
		_respawnHash = Animator.StringToHash("Respawn");
	}
	
	protected override void UpdateMecanimVariables()
	{
		UpdateMovementAnimations();
		UpdateAttackAnimations();
	}

	protected void UpdateMovementAnimations()
	{
		if(!MecanimAnimator.GetBool(_jumpHash) && IsGrounded && CharInput.JumpPressed)
			MecanimAnimator.SetBool(_jumpHash, true);

		bool startClimbLadder = CanClimbLadder && CharInput.Interaction;
		bool startClimbPipe = CanClimbPipe && CharInput.Interaction;

		MecanimAnimator.SetBool(_climbLadderHash,  startClimbLadder);
		MecanimAnimator.SetBool(_climbPipeHash,  startClimbPipe);
		MecanimAnimator.SetBool(_isGroundedHash, IsGrounded);

		// if not in a climb, reset our auto-climb direction for use next climb.
		if( ! (CurrentState.IsName("Climbing.ClimbingLadder") || CurrentState.IsName("Climbing.ClimbingStrafe")) )
			_autoClimbDir = AutoClimbDirection.AutoClimb_None;

        // TODO: SHOULD MOVE THIS TO OnFixedUpdate()
		// process attacks
		if (_attackedBy)
        {
			MecanimAnimator.SetBool (_jumpHash, true); // TODO: ADD (INSTEAD OF SET) VALUES TO VERTICAL AND HORIZONTAL SPEED
			// fly in direction of hit
			HorizontalSpeed = Settings.MaxHorizontalSpeed * (_attackedBy.HorizontalDir > 0 ? 1.0f : -1.0f);
			Heart.HitPoints -= _attackedBy.DamageAmount;
			Destroy (_attackedBy.gameObject);
			_attackedBy = null;

		}

	}

	protected void UpdateAttackAnimations()
	{
		if(Settings.Weapon == null)
			return;

		Weapon currentWeapon = Settings.Weapon.GetComponent<Weapon>();
		MecanimAnimator.SetBool(_attackMeleeHash, InputAttackForward && currentWeapon is PipeWeapon); 
        MecanimAnimator.SetBool(_shootGunHash, InputAttackForward && currentWeapon is GravityGun); 
        MecanimAnimator.SetBool(_placeMineHash, InputAttackForward && currentWeapon is Mine); 
        MecanimAnimator.SetBool(_detonateMineHash, InputAttackBackward && currentWeapon is Mine); 
	}

	void StartMelee()
	{
		if(Settings.Weapon == null)
		{
			Debug.LogWarning("StartMelee() called with no weapon found");
			return;
		}

		Weapon weapon = Settings.Weapon.GetComponent<Weapon>();
		if (weapon != null && weapon is PipeWeapon)
		{
			weapon.ActivateAttack (0);
		}
		else
			Debug.LogWarning("StartMelee() called with: " + weapon);
	}
	void EndMelee()
	{
		if(Settings.Weapon == null)
		{
			Debug.LogWarning("EndMelee() called with no weapon found");
			return;
		}
		
		Weapon weapon = Settings.Weapon.GetComponent<Weapon>();
		if(weapon != null && weapon is PipeWeapon)
			weapon.Deactivate();
		else
			Debug.LogWarning("EndMelee() called with: " + weapon);
	}
	void PlaceMine()
	{
		if(Settings.Weapon == null)
		{
			Debug.LogWarning("PlaceMine() called with no weapon found");
			return;
		}
		
		Weapon weapon = Settings.Weapon.GetComponent<Weapon>();
		if(weapon != null && weapon is Mine)
			weapon.ActivateAttack(0);
		else
			Debug.LogWarning("PlaceMine() called with: " + weapon);
	}
	void DetonateMine()
	{
		if(Settings.Weapon == null)
		{
			Debug.LogWarning("DetonateMine() called with no weapon found");
			return;
		}
		
		Weapon weapon = Settings.Weapon.GetComponent<Weapon>();
		if(weapon != null && weapon is Mine)
			weapon.ActivateAttack(1);
		else
			Debug.LogWarning("DetonateMine() called with: " + weapon);
	}
	void ShootGun()
	{
		if(Settings.Weapon == null)
		{
			Debug.LogWarning("ShootGun() called with no weapon found");
			return;
		}
		
		Weapon weapon = Settings.Weapon.GetComponent<Weapon>();
		if(weapon != null && weapon is GravityGun)
			weapon.ActivateAttack();
		else
			Debug.LogWarning("ShootGun() called with: " + weapon);
	}
	
    public override void OnDeath()
    {
		MecanimAnimator.SetBool(_dieHash, true);
    }
				
	protected void Die(float elapsedTime)
	{
		HorizontalSpeed = 0.0f;
		if (IsGrounded)
			VerticalSpeed = GroundVerticalSpeed;
		else
			ApplyGravity (elapsedTime);

        MecanimAnimator.SetBool(_jumpHash, false);
		MecanimAnimator.SetBool(_fallHash, false);
        MecanimAnimator.SetBool(_dieHash, false);

	}

	protected void WaitingForRespawn(float elapsedTime)
	{
		MecanimAnimator.SetBool(_jumpHash, false);
		MecanimAnimator.SetBool(_fallHash, false);
		MecanimAnimator.SetBool(_dieHash, false);
				
		if (CharInput.InteractionPressed || CharInput.JumpPressed)
			Spawn ();

	}
	
	protected virtual void Idle(float elapsedTime)
	{
		// TODO: Make this more efficient later
		_timeUntilNextFootStepSound = 0;

		//TODO: SET up different idles by modifying this variable
		MecanimAnimator.SetFloat(_randomIdleHash, 0);
		
		ApplyRunning(elapsedTime);
		VerticalSpeed = GroundVerticalSpeed;
		ApplyBiDirection();
		
        MecanimAnimator.SetBool(_fallHash, !MecanimAnimator.GetBool(_fallHash) && !IsGrounded);

		MecanimAnimator.SetBool (_respawnHash, false);
	}
	
	protected void Running(float elapsedTime)
	{
		// Create sound for footstep only when running
		if(Time.time > _timeUntilNextFootStepSound && (Mathf.Abs (HorizontalSpeed / Settings.MaxHorizontalSpeed) > 0.5f))
		{
			// instantiate noise
			Vector3 footStepPosition = transform.position;
			footStepPosition.y -= Height/2;	// 
			Instantiate(Settings.FootStepNoise, footStepPosition, Quaternion.identity);
			_timeUntilNextFootStepSound = Time.time + Settings.FootStepNoiseFrequency;
		}

		ApplyRunning(elapsedTime);
		VerticalSpeed = GroundVerticalSpeed;
		ApplyBiDirection();

        MecanimAnimator.SetBool(_fallHash, !MecanimAnimator.GetBool(_fallHash) && !IsGrounded);

		MecanimAnimator.SetBool(_climbLedgeHash, 
		                        ActiveHangTarget != null && ActiveHangTarget is Ledge && ((Ledge)ActiveHangTarget).Obstacle &&
		                        ((Direction.x > 0 && ((Ledge)ActiveHangTarget).Left)
								    || (Direction.x < 0 && !((Ledge)ActiveHangTarget).Left)) &&
		                        Mathf.Abs(HorizontalSpeed/Settings.MaxHorizontalSpeed) >= 0.5);

        if((Direction.x > 0 && CharInput.JumpLeft) || (Direction.x < 0 && CharInput.JumpRight))
        {
            MecanimAnimator.SetBool (_backflipHash,true);
            MecanimAnimator.SetBool (_jumpHash, false);
        }
	 }
		 
	protected void Rolling(float elapsedTime)
	{
        if(MecanimAnimator.GetBool(_climbLedgeHash))
		{
			MecanimAnimator.SetBool(_climbLedgeHash, false);
			Bounds ledgeBounds = ActiveHangTarget.collider.bounds;
			float distanceToClimb = ledgeBounds.max.y - Controller.bounds.min.y;
			float distanceToMove = Direction.x > 0 ?
				ledgeBounds.max.x - Controller.bounds.center.x :
					Controller.bounds.center.x - ledgeBounds.min.x;
			float animationTime = MecanimAnimator.GetCurrentAnimatorStateInfo(0).length;

            // TODO: Confirm this value
			VerticalSpeed = distanceToClimb/animationTime * 3.0f;

			// account for left/right
			HorizontalSpeed = Direction.x * (distanceToMove/animationTime);
		}
	}
	
	protected void Jumping(float elapsedTime)
	{
        if(Mathf.Abs(CharInput.Horizontal) > 0.1)
		    ApplyRunning(elapsedTime);
		
		if(MecanimAnimator.GetBool(_jumpHash))
		{
			if(CharInput.JumpLeft || CharInput.JumpLeftReleased)
				HorizontalSpeed = -1.0f * Settings.MaxHorizontalSpeed;
			else if(CharInput.JumpRight || CharInput.JumpRightReleased)
				HorizontalSpeed = 1.0f * Settings.MaxHorizontalSpeed;

        	VerticalSpeed = Mathf.Sqrt(2 * Settings.JumpHeight * Settings.Gravity);
			MecanimAnimator.SetBool(_jumpHash, false);
		}
		else
			ApplyGravity(elapsedTime);
		
        ApplyBiDirection();
		
        if(transform.position.y >= LastGroundHeight - 1)
			MecanimAnimator.SetBool(_fallHash, false);
		
		MecanimAnimator.SetBool(_grabWallHash, IsTouchingWall && ActiveHangTarget is GrabbableObject);
		
		MecanimAnimator.SetBool(_hangHash, 
			(CanHangOffObject && ActiveHangTarget.DoesFaceXAxis() && VerticalSpeed < 0) 
			|| (CanHangOffObject && ActiveHangTarget.DoesFaceZAxis() && CharInput.Up));
	}
	
	protected void Backflip(float elapsedTime)
	{
		if(MecanimAnimator.GetBool(_backflipHash))
		{
			MecanimAnimator.SetBool(_backflipHash, false);
			_desiredSpeed = -HorizontalSpeed;
			VerticalSpeed = Mathf.Sqrt(2 * Settings.JumpHeight * Settings.Gravity);
		}
		else
			ApplyGravity(elapsedTime);
		
		float accelerationSmoothing = Settings.HorizontalAcceleration * elapsedTime;
		HorizontalSpeed = Mathf.Lerp(HorizontalSpeed, _desiredSpeed, accelerationSmoothing);

		MecanimAnimator.SetBool(_hangHash, 
		                        (CanHangOffObject && ActiveHangTarget.DoesFaceXAxis() && VerticalSpeed < 0) 
		                        || (CanHangOffObject && ActiveHangTarget.DoesFaceZAxis() && CharInput.Up));
        
        MecanimAnimator.SetBool(_jumpHash, false);
        MecanimAnimator.SetBool(_fallHash, false);
	}
	
	protected void Falling(float elapsedTime)
	{
		ApplyRunning(elapsedTime);
		ApplyGravity(elapsedTime);
		
		MecanimAnimator.SetBool(_fallHash, false);
		
		MecanimAnimator.SetBool(_grabWallHash, IsTouchingWall && ActiveHangTarget is GrabbableObject);
		
        if(!(ActiveHangTarget is Ledge && ((Ledge)ActiveHangTarget).Obstacle) &&
                (CanHangOffObject && ActiveHangTarget.DoesFaceXAxis() && VerticalSpeed < 0) 
                || (CanHangOffObject && ActiveHangTarget.DoesFaceZAxis() && CharInput.Up))
        {
            MecanimAnimator.SetBool(_hangHash, true);
            VerticalSpeed = 0;
        }
	}
	
	protected void Wallgrabbing(float elapsedTime)
	{
		HorizontalSpeed = 0;
		VerticalSpeed = 0;
		
		if(MecanimAnimator.GetBool(_grabWallHash))
		{
			MecanimAnimator.SetBool(_grabWallHash, false);
			//DropHangTarget();
		}
		
		bool jump = (Direction.x > 0 && CharInput.JumpLeft) || (Direction.x < 0 && CharInput.JumpRight);
		MecanimAnimator.SetBool(_jumpWallHash, jump);
	}

	protected void Walljumping(float elapsedTime)
	{
		if(MecanimAnimator.GetBool(_jumpWallHash))
		{
			Direction = -Direction;
			VerticalSpeed = Mathf.Sqrt(2 * Settings.JumpHeight * Settings.Gravity);
			MecanimAnimator.SetBool(_jumpWallHash, false);
		}
		else
			ApplyGravity(elapsedTime);
		
		HorizontalSpeed = Settings.MaxHorizontalSpeed * Direction.x;
		
		if (transform.position.y >= LastGroundHeight - 1)
			MecanimAnimator.SetBool (_fallHash, false);

		if(IsTouchingWall && ActiveHangTarget is GrabbableObject)
		{
			MecanimAnimator.SetBool(_grabWallHash, true);
		}

		if ((CanHangOffObject && ActiveHangTarget.DoesFaceXAxis () && VerticalSpeed < 0) 
			|| (CanHangOffObject && ActiveHangTarget.DoesFaceZAxis () && CharInput.Up))
		{
			MecanimAnimator.SetBool (_hangHash, true);
		}
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
		else if (ActiveHangTarget is Ledge && (CharInput.Up || InputMoveForward))	
		{
			MecanimAnimator.SetBool(_climbLedgeHash, true);
		}
		else if(CharInput.JumpPressed)
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

	protected float UpdateAutoClimbDirection()
	{
		// start or stop auto-climbing
		if (CharInput.Up)
			_autoClimbDir = AutoClimbDirection.AutoClimb_Up;
		else if (CharInput.Down)
			_autoClimbDir = AutoClimbDirection.AutoClimb_Down;
		else if (CharInput.InteractionPressed)
		{
			Debug.Log("Button pressed");
			_autoClimbDir = AutoClimbDirection.AutoClimb_None;
		}
		
		// always give a speed based on the auto-climb direction
		float vertical;
		if(_autoClimbDir == AutoClimbDirection.AutoClimb_Up)
			vertical = 1.0f;
		else if(_autoClimbDir == AutoClimbDirection.AutoClimb_Down)
			vertical = -1.0f;
		else
			vertical = 0.0f;

		return vertical;
	}
	
	protected void ClimbingVertical(float elapsedTime)
	{
		if(ActiveHangTarget == null)
		{
			DropHangTarget();
			MecanimAnimator.SetBool(_fallHash, true);
			return;
		}

		MecanimAnimator.SetBool (_fallHash, (_autoClimbDir == AutoClimbDirection.AutoClimb_None) && CharInput.InteractionPressed);

		float vertical = UpdateAutoClimbDirection ();

		if(VerticalSpeed != 0 && ActiveHangTarget.DoesFaceZAxis())
			ApplyClimbingStrafing( CharInput.Horizontal );
		else
			HorizontalSpeed = 0;

		ApplyClimbingVertical(vertical);

		if(ActiveHangTarget.DoesFaceZAxis())
			Direction = Vector3.zero;
		
		MecanimAnimator.SetFloat(_horizontalSpeedHash, HorizontalSpeed);
		MecanimAnimator.SetFloat(_verticalSpeedHash, VerticalSpeed);
		MecanimAnimator.SetBool(_jumpHash, CharInput.JumpLeft || CharInput.JumpRight);
		MecanimAnimator.SetBool (_climbStrafeHash, CanClimbLadder && (CharInput.Left || CharInput.Right));
	}
	
	protected void ClimbingStrafe(float elapsedTime)
	{
		if(ActiveHangTarget == null)
		{
			DropHangTarget();
			MecanimAnimator.SetBool(_fallHash, true);
			return;
		}

		MecanimAnimator.SetBool (_fallHash, (_autoClimbDir == AutoClimbDirection.AutoClimb_None) && CharInput.InteractionPressed);

		// always give a speed based on the auto-climb direction
		float vertical = UpdateAutoClimbDirection ();
	
		ApplyClimbingStrafing(CharInput.Horizontal);
		
		if(HorizontalSpeed != 0)
			ApplyClimbingVertical(vertical);
		else
			VerticalSpeed = 0.0f;

		if(ActiveHangTarget.DoesFaceZAxis())
			Direction = Vector3.zero;
		
		MecanimAnimator.SetFloat(_horizontalSpeedHash, HorizontalSpeed);
		MecanimAnimator.SetFloat(_verticalSpeedHash, VerticalSpeed);
		MecanimAnimator.SetBool(_jumpHash, CharInput.JumpPressed);
		MecanimAnimator.SetBool(_climbLadderHash, CanClimbLadder && (CharInput.UpPressed || CharInput.DownPressed));
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
	public void OnTriggerEnter(Collider other)
    {
		AttackData ad = other.GetComponent<AttackData>();

		if (ad) 
        {
			_attackedBy = ad;

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
