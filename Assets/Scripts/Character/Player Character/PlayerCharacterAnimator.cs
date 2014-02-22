using UnityEngine;
using System.Collections.Generic;

/// <summary>
/// Player character defines the motion for the character that the player controls.
/// </summary>
[RequireComponent(typeof(PlayerCharacterArsenal))]
[RequireComponent(typeof(PlayerCharacterShader))]
[AddComponentMenu("Character/Player Character/Player Character Animator")]
public class PlayerCharacterAnimator : CharacterAnimator
{
	public GameObject StealthKillEvent;

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
	private int _stealthKillHash;
	private int _placeMineHash;
	private int _climbLedgeHash;
	private int _climbPipeHash;
	private int _randomIdleHash;
	private int _shootGunHash;
	private int _detonateMineHash;
	private int _grabWallHash;
	private int _jumpWallHash;
	private int _backflipHash;
//	private int _climbStrafeHash;
	private int _respawnHash;
	private int _damagedHash;

	// Used to keep track of a ledge we are climbing
    private Ledge _ledge;
    
    // Used for backflipping
	private float _desiredSpeed;
	
	//TODO: Figure out this comment
	private float _timeUntilNextFootStepSound = -1f;
	
	// Used to keep track of the player character's weaponry
	private PlayerCharacterArsenal _arsenal;

    protected override void OnStart()
    {
		_arsenal = gameObject.GetComponent<PlayerCharacterArsenal>();
    }
	
	protected override void CreateStateMachine()
	{
		// First map the states
		StateMachine[Animator.StringToHash("Base Layer.Idle")] = Idle;
		StateMachine[Animator.StringToHash("Base Layer.Waiting For Respawn")] = Die;
        StateMachine[Animator.StringToHash("Base Layer.Death")] = Die;
		StateMachine[Animator.StringToHash("Base Layer.Damaged")] = Damaged;
        StateMachine[Animator.StringToHash("Moving.Running")] = Running;
        StateMachine[Animator.StringToHash("Moving.Rolling")] = Rolling;
		StateMachine[Animator.StringToHash("Air.Jumping")] = Jumping;
		StateMachine[Animator.StringToHash("Air.Falling")] = Falling;
		StateMachine[Animator.StringToHash("Air.Landing")] = Running;
		StateMachine[Animator.StringToHash("Air.Backflip")] = Backflip;
		StateMachine[Animator.StringToHash("Wall.Wallgrabbing")] = Wallgrabbing;
		StateMachine[Animator.StringToHash("Wall.Walljumping")] = Walljumping;
		StateMachine[Animator.StringToHash("Climbing.Hanging")] = Hanging;
		StateMachine[Animator.StringToHash("Climbing.ClimbingLedge")] = ClimbingLedge;
		StateMachine[Animator.StringToHash("Climbing.ClimbingLadder")] = ClimbingVertical;
//		StateMachine[Animator.StringToHash("Climbing.ClimbingStrafe")] = ClimbingStrafe;
		StateMachine[Animator.StringToHash("Climbing.ClimbingPipe")] = ClimbingVertical;
		StateMachine[Animator.StringToHash("Moving.Stealth Kill")] = StealthKill;

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
		_stealthKillHash = Animator.StringToHash ("StealthKill");
		_placeMineHash = Animator.StringToHash("PlaceMine");
		_climbLedgeHash = Animator.StringToHash("ClimbLedge");
		_climbPipeHash = Animator.StringToHash("ClimbPipe");
		_randomIdleHash = Animator.StringToHash("RandomIdle");
		_shootGunHash = Animator.StringToHash("ShootGun");
		_detonateMineHash = Animator.StringToHash("DetonateMine");
		_grabWallHash = Animator.StringToHash("GrabWall");
		_jumpWallHash = Animator.StringToHash("JumpWall");
		_backflipHash = Animator.StringToHash ("Backflip");
//		_climbStrafeHash = Animator.StringToHash ("ClimbStrafe");
		_respawnHash = Animator.StringToHash("Respawn");
		_damagedHash = Animator.StringToHash("Damaged");
	}
	protected override List<int> DefineRootMotionCorrectionState()
	{
		List<int> states = new List<int> ();
		states.Add (Animator.StringToHash ("Wall.Walljumping"));
		states.Add (Animator.StringToHash ("Wall.Wallgrabbing"));
		states.Add (Animator.StringToHash ("Air.Backflip"));
		states.Add (Animator.StringToHash ("Air.Falling"));
		states.Add (Animator.StringToHash ("Air.Landing"));
		states.Add (Animator.StringToHash ("Base Layer.Damaged"));
		states.Add (Animator.StringToHash ("Moving.StealthKill"));
		return states;
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

		bool facingRightLadder = (ActiveHangTarget && ActiveHangTarget.transform.position.x - transform.position.x > 0.0f);
		bool facingLeftLadder = (ActiveHangTarget && transform.position.x - ActiveHangTarget.transform.position.x > 0.0f);

		bool startClimbLadder = CanClimbLadder && ((facingRightLadder && CharInput.Right) ||
												   (facingLeftLadder && CharInput.Left));
		bool startClimbPipe = CanClimbPipe && CharInput.Interaction;

		MecanimAnimator.SetBool(_climbLadderHash,  startClimbLadder);

		if(startClimbLadder)
			_autoClimbDir = AutoClimbDirection.AutoClimb_Up;

		MecanimAnimator.SetBool(_climbPipeHash,  startClimbPipe);

		MecanimAnimator.SetBool(_isGroundedHash, IsGrounded);

		// if not in a climb, reset our auto-climb direction for use next climb.
		if( ! (CurrentState.IsName("Climbing.ClimbingLadder") || CurrentState.IsName("Climbing.ClimbingPipe")) )
			_autoClimbDir = AutoClimbDirection.AutoClimb_None;
		// if previous state was backflip, change direction
		if( PreviousState.IsName("Air.Backflip")&&!CurrentState.IsName("Air.Backflip"))
			Direction = -Direction;

	}
	protected void UpdateAttackAnimations()
	{
		if(Arsenal.Weapon == null)
			return;

		Weapon currentWeapon = Arsenal.Weapon.GetComponent<Weapon>();


		OlympusAnimator enemyAnim = null;
		if (CharInput.AttackActive && CanStealthKill (out enemyAnim) && enemyAnim != null) {

			Debug.Log ("Stealth killing Olympus.");

			// player enter stealth kill anim and spawn a stealth kill attack in front of him
			MecanimAnimator.SetBool (_stealthKillHash, true);

			Invoke ("GenerateStealthKillEvent", 1.0f);

		} else if(! CurrentState.IsName("Moving.Stealth Kill")) {
			MecanimAnimator.SetBool(_attackMeleeHash, CharInput.AttackActive && currentWeapon is PipeWeapon); 
			MecanimAnimator.SetBool(_shootGunHash, CharInput.AttackActive && currentWeapon is GravityGun); 
			MecanimAnimator.SetBool(_placeMineHash, CharInput.AttackRightPressed && currentWeapon is Mine); 
			MecanimAnimator.SetBool(_detonateMineHash, CharInput.AttackLeftPressed && currentWeapon is Mine); 

		}

	}

	void GenerateStealthKillEvent() {
		// find where to place the attack event
		Vector3 killPos = transform.position;
		killPos.x += (Direction.x * Settings.StealthKillRange);
		
		// place so enemy can die appropriately
		GameObject o = (GameObject)Instantiate (StealthKillEvent, killPos, Quaternion.identity);
		HitBox d = o.GetComponent<HitBox> ();
		d.MakePlayerStealthKill(this.gameObject, Direction.x);

	}

	void StartMelee()
	{
		if(Arsenal.Weapon == null)
		{
			Debug.LogWarning("StartMelee() called with no weapon found");
			return;
		}

		Weapon weapon = Arsenal.Weapon.GetComponent<Weapon>();
		if (weapon != null && weapon is PipeWeapon)
		{
			weapon.ActivateAttack (0);
		}
		else
			Debug.LogWarning("StartMelee() called with: " + weapon);
	}
	void EndMelee()
	{
		if(Arsenal.Weapon == null)
		{
			Debug.LogWarning("EndMelee() called with no weapon found");
			return;
		}
		
		Weapon weapon = Arsenal.Weapon.GetComponent<Weapon>();
		if(weapon != null && weapon is PipeWeapon)
			weapon.Deactivate();
		else
			Debug.LogWarning("EndMelee() called with: " + weapon);
	}
	void PlaceMine()
	{
		if(Arsenal.Weapon == null)
		{
			Debug.LogWarning("PlaceMine() called with no weapon found");
			return;
		}
		
		Weapon weapon = Arsenal.Weapon.GetComponent<Weapon>();
		if(weapon != null && weapon is Mine)
			weapon.ActivateAttack(0);
		else
			Debug.LogWarning("PlaceMine() called with: " + weapon);
	}
	void DetonateMine()
	{
		if(Arsenal.Weapon == null)
		{
			Debug.LogWarning("DetonateMine() called with no weapon found");
			return;
		}
		
		Weapon weapon = Arsenal.Weapon.GetComponent<Weapon>();
		if(weapon != null && weapon is Mine)
			weapon.ActivateAttack(1);
		else
			Debug.LogWarning("DetonateMine() called with: " + weapon);
	}
	void ShootGun()
	{
		if(Arsenal.Weapon == null)
		{
			Debug.LogWarning("ShootGun() called with no weapon found");
			return;
		}
		
		Weapon weapon = Arsenal.Weapon.GetComponent<Weapon>();
		if(weapon != null && weapon is GravityGun)
			weapon.ActivateAttack();
		else
			Debug.LogWarning("ShootGun() called with: " + weapon);
	}

	
    public override void OnDeath()
    {
		MecanimAnimator.SetBool(_dieHash, true);
    }

	public override void MakeDamaged(Vector2 knockForce) {
		MecanimAnimator.SetBool (_damagedHash, true);
		HorizontalSpeed = knockForce.x;
		VerticalSpeed = knockForce.y;

	}

	protected void Damaged(float elapsedTime) {
		MecanimAnimator.SetBool (_damagedHash, false);
		ApplyGravity (elapsedTime);

	}
	
	protected void StealthKill(float elapsedTime) {
		if (MecanimAnimator.GetBool (_stealthKillHash)) {
			Transform rightHand = CharacterSettings.SearchHierarchyForBone(transform, "hand_R");

			_arsenal.Weapon.RotateAround ( rightHand.position, new Vector3(0, 1, 1), -90.0f);

		}

		MecanimAnimator.SetBool (_stealthKillHash, false);

		HorizontalSpeed = 0.0f;
		VerticalSpeed = 0.0f;

	}

	public void RestoreWeaponRotation() {
		Transform rightHand = CharacterSettings.SearchHierarchyForBone(transform, "hand_R");
		
		_arsenal.Weapon.RotateAround ( rightHand.position, new Vector3(0, 1, 1), 90.0f);

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
			Instantiate(Arsenal.FootStepNoise, footStepPosition, Quaternion.identity);
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
		else 
			MecanimAnimator.SetBool (_backflipHash, false);
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
		    ApplyRunning(elapsedTime/2.0f);
		
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
		
        //ApplyBiDirection();
		
        if(transform.position.y >= LastGroundHeight - 1)
			MecanimAnimator.SetBool(_fallHash, false);
		
		MecanimAnimator.SetBool(_grabWallHash, CanGrabWall);
		
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
		
		MecanimAnimator.SetBool(_grabWallHash, CanGrabWall);
		
        if(!(ActiveHangTarget is Ledge && ((Ledge)ActiveHangTarget).Obstacle) &&
                (CanHangOffObject && ActiveHangTarget.DoesFaceXAxis() && VerticalSpeed < 0) 
                || (CanHangOffObject && ActiveHangTarget.DoesFaceZAxis() && CharInput.Up))
        {
            MecanimAnimator.SetBool(_hangHash, true);
            VerticalSpeed = 0;
            HorizontalSpeed = 0;
        }
		else 
			MecanimAnimator.SetBool(_hangHash, false);
	}
	

	protected void Wallgrabbing(float elapsedTime)
	{
		HorizontalSpeed = 0;
		VerticalSpeed = Settings.WallSlideSpeed * elapsedTime;

		bool jump = (Direction.x > 0 && CharInput.JumpLeft) || (Direction.x < 0 && CharInput.JumpRight);
		MecanimAnimator.SetBool(_jumpWallHash, jump);

		if(CharInput.InteractionPressed || CharInput.DownPressed || InputMoveBackward || jump || IsGrounded ||
		    (ActiveHangTarget == null) || (TimeInCurrentState >= Settings.WallSlideDuration) )
		{
			MecanimAnimator.SetBool(_grabWallHash, false);
			//DropHangTarget();
		}

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

		if(CanGrabWall)
		{
			MecanimAnimator.SetBool(_grabWallHash, true);
		}

//		if ((CanHangOffObject && ActiveHangTarget.DoesFaceXAxis () && VerticalSpeed < 0) 
//			|| (CanHangOffObject && ActiveHangTarget.DoesFaceZAxis () && CharInput.Up))
//		{
//			MecanimAnimator.SetBool (_hangHash, true);
//		}
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

//		if(VerticalSpeed != 0 && ActiveHangTarget.DoesFaceZAxis())
//			ApplyClimbingStrafing( CharInput.Horizontal );
//		else
			HorizontalSpeed = 0;

		ApplyClimbingVertical(vertical);

		if(ActiveHangTarget.DoesFaceZAxis())
			Direction = Vector3.zero;
		
		MecanimAnimator.SetFloat(_horizontalSpeedHash, HorizontalSpeed);
		MecanimAnimator.SetFloat(_verticalSpeedHash, VerticalSpeed);
//		MecanimAnimator.SetBool(_jumpHash, CharInput.JumpLeft || CharInput.JumpRight);

		if (CharInput.JumpLeft) {

			Direction = Vector3.left;
			MecanimAnimator.SetBool (_jumpHash, true);

		} else if (CharInput.JumpRight) {
			Direction = Vector3.right;
			MecanimAnimator.SetBool (_jumpHash, true);

		}

	}
	
//	protected void ClimbingStrafe(float elapsedTime)
//	{
//		if(ActiveHangTarget == null)
//		{
//			DropHangTarget();
//			MecanimAnimator.SetBool(_fallHash, true);
//			return;
//		}
//
//		MecanimAnimator.SetBool (_fallHash, (_autoClimbDir == AutoClimbDirection.AutoClimb_None) && CharInput.InteractionPressed);
//
//		// always give a speed based on the auto-climb direction
//		float vertical = UpdateAutoClimbDirection ();
//	
//		ApplyClimbingStrafing(CharInput.Horizontal);
//		
//		if(HorizontalSpeed != 0)
//			ApplyClimbingVertical(vertical);
//		else
//			VerticalSpeed = 0.0f;
//
//		if(ActiveHangTarget.DoesFaceZAxis())
//			Direction = Vector3.zero;
//		
//		MecanimAnimator.SetFloat(_horizontalSpeedHash, HorizontalSpeed);
//		MecanimAnimator.SetFloat(_verticalSpeedHash, VerticalSpeed);
//		MecanimAnimator.SetBool(_jumpHash, CharInput.JumpPressed);
//		//MecanimAnimator.SetBool(_climbLadderHash, CanClimbP);
//	}
	
	// TODO: DETERMINE HOW WE PICK STUFF UP
    public override void OnControllerColliderHit(ControllerColliderHit hit)
    {
        base.OnControllerColliderHit(hit);

        // We can pick up items
        if (hit.gameObject.tag == "Item")
        {
           // HasPackage = true; // TODO: seperate script for inventory
            //Destroy(hit.gameObject);
			//countItems += 1;
        }
	}
	
	protected override void ApplyRunning (float elapsedTime)
	{
		base.ApplyRunning(elapsedTime);
		MecanimAnimator.SetFloat(_horizontalSpeedHash, Direction.x * HorizontalSpeed/Settings.MaxHorizontalSpeed);
	}
	
	public PlayerCharacterArsenal Arsenal
	{
		get { return _arsenal; }
	}

	public bool CanStealthKill(out OlympusAnimator animRet) {
		animRet = null;

		// no melee equipped, don't even bother to cast any rays
		if (!IsGrounded || !_arsenal.WeaponCanStealthKill ())
			return false;

		//Debug.Log ("Can stealth kill.");
		
		// see if anything in range
		Vector3 vPlayerPos = transform.position;
		Vector3 vTargetPos = vPlayerPos + new Vector3 (Direction.x * Settings.StealthKillRange, 0.0f, 0.0f);
		Vector3 vDir = new Vector3 (Direction.x, 0.0f, 0.0f);

		Debug.DrawLine(vPlayerPos, vTargetPos, Color.blue, 0.5f, false);

		RaycastHit hitInfo = new RaycastHit();
		// see if the first thing in our stealth kill distance is the enemy (no obstacles in between)
		if (Physics.Raycast(vPlayerPos, vDir, out hitInfo, Settings.StealthKillRange) ) {
			EnemyAI ai = hitInfo.transform.root.GetComponent<EnemyAI>();
			OlympusAnimator anim = hitInfo.transform.root.GetComponent<OlympusAnimator>();

			if(ai && anim && (ai.Awareness == EnemyAI.AwarenessLevel.Unaware) && anim.IsGrounded) {
//				Debug.Log ("found standing, unaware Olympus");
				animRet = anim;
				return true;
			}

		}

		return false;

	}

}
