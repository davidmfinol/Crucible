using UnityEngine;
using System.Collections;
using System.Collections.Generic;

/// <summary>
/// Player character defines the motion for the character that the player controls.
/// </summary>
[RequireComponent(typeof(PlayerCharacterShader))]
[AddComponentMenu("Character/Player Character/Player Character Animator")]
public class PlayerCharacterAnimator : CharacterAnimator
{
	public GameObject StealthKillEvent;

	// Mecanim hashes
	private int _verticalSpeedHash;
	private int _horizontalSpeedHash;
	private int _xDirectionHash;
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
	private int _pickupHash;
   // private int _doublejumpHash;
	private int _steppingDownHash;
	private int _standingUpHash;

	//The player's sound effects, yeah!
	private PlayerCharacterAudioPlayer _sound;

	// Used to keep track of a ledge we are climbing
    private Ledge _ledge;
    
    // Used for backflipping
	private float _desiredSpeed;
	private float _desiredDirectionX;

    // Keep track of wall jumps to scale their difficulty
    private int _wallJumpCount;

	// Used to pickup items only at the end of the animation
	private Item _itemPickedup;

    // Can only double-jump once
    //private bool _hasDoubleJumped;


    protected override void OnStart()
    {
		_sound = gameObject.GetComponentInChildren<PlayerCharacterAudioPlayer>();
		_itemPickedup = null;
    }
	
	protected override void CreateStateMachine()
	{
		// First map the states
		StateMachine[Animator.StringToHash("Base Layer.Idle")] = Idle;
		StateMachine[Animator.StringToHash("Base Layer.Waiting For Respawn")] = Die;
        StateMachine[Animator.StringToHash("Base Layer.Death")] = Die;
		StateMachine[Animator.StringToHash("Base Layer.Damaged")] = Damaged;
        StateMachine[Animator.StringToHash("Ground.Running")] = Running;
		StateMachine[Animator.StringToHash("Ground.Rolling")] = Rolling;
		StateMachine[Animator.StringToHash("Ground.Pickup")] = Pickup;
		StateMachine[Animator.StringToHash("Ground.Stealth Kill")] = StealthKill;
        StateMachine[Animator.StringToHash("Air.Jumping")] = Jumping;
        // StateMachine[Animator.StringToHash("Air.Doublejumping")] = Doublejumping;
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
		StateMachine[Animator.StringToHash("Ground.Stepping Down")] = SteppingDown;
		StateMachine[Animator.StringToHash("Ground.Standing Up")] = StandingUp;



		// Then hash the variables
		_verticalSpeedHash = Animator.StringToHash("VerticalSpeed");
		_horizontalSpeedHash = Animator.StringToHash("HorizontalSpeed");
		_xDirectionHash = Animator.StringToHash("XDirection");
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
		_pickupHash = Animator.StringToHash("Pickup");
    //    _doublejumpHash = Animator.StringToHash("Doublejump");
		_steppingDownHash = Animator.StringToHash ("SteppingDown");
		_standingUpHash = Animator.StringToHash ("StandingUp");


	}
	protected override List<int> DefineRootMotionCorrectionState() // TODO: ERADICATE THIS METHOD
	{
		List<int> states = new List<int> ();
		states.Add (Animator.StringToHash ("Wall.Wallgrabbing"));
		return states;
	}
	
	protected override void UpdateMecanimVariables()
	{
        if(IsGrounded)
        {
            _wallJumpCount = 0;
          //  _hasDoubleJumped = false;
        }

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
		bool startClimbPipe = CanClimbPipe;

		MecanimAnimator.SetBool(_climbLadderHash,  startClimbLadder);

		/*
		if(startClimbLadder)
			_autoClimbDir = AutoClimbDirection.AutoClimb_Up;
		// if not in a climb, reset our auto-climb direction for use next climb.
		if( ! (CurrentState.IsName("Climbing.ClimbingLadder") || CurrentState.IsName("Climbing.ClimbingPipe")) )
			_autoClimbDir = AutoClimbDirection.AutoClimb_None;
		*/

		MecanimAnimator.SetBool(_climbPipeHash,  startClimbPipe);

		MecanimAnimator.SetBool(_isGroundedHash, IsGrounded);

	}
	protected void UpdateAttackAnimations()
	{
		if(GameManager.Inventory.CurrentWeapon == null || IsDead ())
			return;

        Weapon currentWeapon = GameManager.Inventory.CurrentWeapon;


		OlympusAnimator enemyAnim = null;
		if (CharInput.AttackActive && CanStealthKill (out enemyAnim) && enemyAnim != null)
		{
			// player enter stealth kill anim and spawn a stealth kill attack in front of him
			MecanimAnimator.SetBool (_stealthKillHash, true);

			Invoke ("GenerateStealthKillEvent", 1.0f);

		}
		else if(! CurrentState.IsName("Ground.Stealth Kill"))
		{
			MecanimAnimator.SetBool(_attackMeleeHash, CharInput.AttackActive && currentWeapon is PipeWeapon); 
			MecanimAnimator.SetBool(_shootGunHash, CharInput.AttackActive && currentWeapon is GravityGun); 
			MecanimAnimator.SetBool(_placeMineHash, (CharInput.AttackRightPressed || CharInput.AttackLeftPressed) && currentWeapon is Mine); 

		}

	}

	void GenerateStealthKillEvent()
	{
		// find where to place the attack event
		Vector3 killPos = transform.position;
		killPos.x += (Direction.x * Settings.StealthKillRange);
		
		// place so enemy can die appropriately
		GameObject o = (GameObject)Instantiate (StealthKillEvent, killPos, Quaternion.identity);
		HitBox d = o.GetComponent<HitBox> ();
		d.MakePlayerStealthKill(this.gameObject);

	}

	void StartMelee()
	{
        if(GameManager.Inventory.CurrentWeapon == null)
		{
			Debug.LogWarning("StartMelee() called with no weapon found");
			return;
		}

        Weapon weapon = GameManager.Inventory.CurrentWeapon;
		if (weapon != null && weapon is PipeWeapon)
		{
			weapon.ActivateAttack (0);
		}
		else
			Debug.LogWarning("StartMelee() called with: " + weapon);
	}
	void EndMelee()
	{
        if(GameManager.Inventory.CurrentWeapon == null)
		{
			Debug.LogWarning("EndMelee() called with no weapon found");
			return;
		}
		
        Weapon weapon = GameManager.Inventory.CurrentWeapon;
		if(weapon != null && weapon is PipeWeapon)
			weapon.Deactivate();
		else
			Debug.LogWarning("EndMelee() called with: " + weapon);
	}
	void PlaceMine()
	{
        if(GameManager.Inventory.CurrentWeapon == null)
		{
			Debug.LogWarning("PlaceMine() called with no weapon found");
			return;
		}
		
        Weapon weapon = GameManager.Inventory.CurrentWeapon;
		// run out of mines? remove.
		if (weapon != null && weapon is Mine) {
			if(weapon.Quantity > 0) {
				weapon.ActivateAttack(0);
				weapon.Quantity -= 1;
				GameManager.UI.RefreshWeaponWheel();

			}



//			// don't remove the mine from your list.
//			if(weapon.Quantity == 1) {
//				// remove it.
//				GameManager.Inventory.RemoveWeapon(weapon.WeaponType);
//				GameManager.Inventory.CurrentWeapon = null;
//				GameManager.UI.CycleToNextWeapon();
//
//
//			}
		
		} else {
			Debug.LogWarning("PlaceMine() called with: " + weapon);

		}


	}
	void DetonateMine()
	{
		MecanimAnimator.SetBool (_detonateMineHash, false);

		// detonate all mines in the scene
		Weapon weapon = GameManager.Inventory.CurrentWeapon;
		if (weapon != null && weapon is Mine) {
			Mine m = weapon.GetComponent<Mine>();
			m.DetonateMines ();
		
		}


	}
	void ShootGun()
	{
        if(GameManager.Inventory.CurrentWeapon == null)
		{
			Debug.LogWarning("ShootGun() called with no weapon found");
			return;
		}
		
        Weapon weapon = GameManager.Inventory.CurrentWeapon;
		if(weapon != null && weapon is GravityGun) {
			weapon.ActivateAttack();
			GameManager.Inventory.TryRemoveAmmo(WeaponType.Weapon_GravityGun, 1);
			GameManager.UI.RefreshWeaponWheel();

		} else
			Debug.LogWarning("ShootGun() called with: " + weapon);
	}

	public override bool IsDead()
    {
		// TODO: fix. slow.
		return ( CurrentState.IsName ("Base Layer.Death") || CurrentState.IsName("Base Layer.Waiting For Respawn") );

	}
	
    public override void OnDeath(Vector2 knockForce)
    {
		MecanimAnimator.SetBool(_dieHash, true);
		HorizontalSpeed = knockForce.x;
		VerticalSpeed = knockForce.y;

    }

	public override void MakeDamaged(Vector2 knockForce)
	{
		MecanimAnimator.SetBool (_damagedHash, true);
		HorizontalSpeed = knockForce.x;
		VerticalSpeed = knockForce.y;

	}

	protected void Damaged(float elapsedTime)
	{
		if (MecanimAnimator.GetBool (_damagedHash))
		{
			MecanimAnimator.SetBool (_damagedHash, false);
			GameManager.UI.EnableInput();
			GameManager.UI.CraftingMenu.Close();

		}

		ApplyGravity (elapsedTime);

	}
	
	protected void StealthKill(float elapsedTime)
	{
		if (MecanimAnimator.GetBool (_stealthKillHash))
        {
			Transform rightHand = CharacterSettings.SearchHierarchyForBone(transform, "hand_R");

            GameManager.Inventory.CurrentWeapon.transform.RotateAround ( rightHand.position, new Vector3(0, 1, 1), -90.0f);
		}

		MecanimAnimator.SetBool (_stealthKillHash, false);

		HorizontalSpeed = 0.0f;
		VerticalSpeed = 0.0f;
	}

	public void RestoreWeaponRotation()
    {
		Transform rightHand = CharacterSettings.SearchHierarchyForBone(transform, "hand_R");
		
        GameManager.Inventory.CurrentWeapon.transform.RotateAround ( rightHand.position, new Vector3(0, 1, 1), 90.0f);

	}

                                             
	protected void Die(float elapsedTime)
	{
		if (IsGrounded)
		{
			ApplyDeathFriction (elapsedTime);
			VerticalSpeed = GroundVerticalSpeed;

		} else
			ApplyGravity (elapsedTime);

        MecanimAnimator.SetBool(_jumpHash, false);
		MecanimAnimator.SetBool(_fallHash, false);
        MecanimAnimator.SetBool(_dieHash, false);
	}
	
	protected virtual void Idle(float elapsedTime)
	{
		//TODO: SET up different idles by modifying this variable
		MecanimAnimator.SetFloat(_randomIdleHash, 0);
		
		ApplyRunning(elapsedTime);
		VerticalSpeed = GroundVerticalSpeed;
		ApplyBiDirection();
		
        MecanimAnimator.SetBool(_fallHash, !MecanimAnimator.GetBool(_fallHash) && !IsGrounded);

		MecanimAnimator.SetBool (_respawnHash, false);

		if(CharInput.Pickup)
		{
			GameObject itemObj = null;
			bool canPickup = CanPickupItem (out itemObj);
			if (canPickup && itemObj != null) {
				_itemPickedup = itemObj.GetComponent<Item>();

			}

			MecanimAnimator.SetBool (_pickupHash,  canPickup && _itemPickedup != null);
		
		}
		else if(CharInput.InteractionPressed)
		{
			MecanimAnimator.SetBool (_detonateMineHash, true);

		}

	}

	public override void StepDown()
	{
		MecanimAnimator.SetFloat (_xDirectionHash, Direction.x);
		MecanimAnimator.SetBool (_steppingDownHash, true);

	}

	public override void StandUp()
	{
		MecanimAnimator.SetBool (_standingUpHash, true);
				
	}


	protected void SteppingDown(float elapsedTime)
	{
		MecanimAnimator.SetBool (_steppingDownHash, false);

		// can't use friction because you can slide off a ledge right into the crafting animation
		HorizontalSpeed = 0;
		VerticalSpeed = 0;

	}

	protected void StandingUp(float elapsedTime)
	{
		MecanimAnimator.SetBool (_standingUpHash, false);

		HorizontalSpeed = 0;
		VerticalSpeed = 0;

	}


	protected void Running(float elapsedTime)
	{
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
	
		if(CharInput.InteractionPressed)
			MecanimAnimator.SetBool (_detonateMineHash, true);
		
	}
		 
	protected void Rolling(float elapsedTime)
	{
        if(MecanimAnimator.GetBool(_climbLedgeHash))
		{
			MecanimAnimator.SetBool(_climbLedgeHash, false);
			Bounds ledgeBounds = ActiveHangTarget.collider.bounds; //TODO: ENSURE THIS IS NEVER NULL
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
			{
				Direction = Vector3.left;
				HorizontalSpeed = -1.0f * Settings.MaxHorizontalSpeed;
			}
			else if(CharInput.JumpRight || CharInput.JumpRightReleased)
			{
				Direction = Vector3.right;
				HorizontalSpeed = 1.0f * Settings.MaxHorizontalSpeed;
			}

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

//        if(CharInput.JumpPressed)
//            MecanimAnimator.SetBool(_doublejumpHash, true);

		if(CharInput.InteractionPressed)
			MecanimAnimator.SetBool (_detonateMineHash, true);

	}

//    protected void Doublejumping(float elapsedTime)
//    {
//        if(Mathf.Abs(CharInput.Horizontal) > 0.1)
//            ApplyRunning(elapsedTime/2.0f);
//        
//        if(MecanimAnimator.GetBool(_doublejumpHash))
//        {
//            _hasDoubleJumped = true;
//
//            if(CharInput.JumpLeft || CharInput.JumpLeftReleased)
//            {
//                Direction = Vector3.left;
//                HorizontalSpeed = -1.0f * Settings.MaxHorizontalSpeed;
//            }
//            else if(CharInput.JumpRight || CharInput.JumpRightReleased)
//            {
//                Direction = Vector3.right;
//                HorizontalSpeed = 1.0f * Settings.MaxHorizontalSpeed;
//            }
//            
//            VerticalSpeed = Mathf.Sqrt(2 * Settings.JumpHeight * Settings.Gravity);
//            MecanimAnimator.SetBool(_doublejumpHash, false);
//        }
//        else
//            ApplyGravity(elapsedTime);
//        
//        //ApplyBiDirection();
//        
//        if(transform.position.y >= LastGroundHeight - 1)
//            MecanimAnimator.SetBool(_fallHash, false);
//        
//        MecanimAnimator.SetBool(_grabWallHash, CanGrabWall);
//        
//        MecanimAnimator.SetBool(_hangHash, 
//                                (CanHangOffObject && ActiveHangTarget.DoesFaceXAxis() && VerticalSpeed < 0) 
//                                || (CanHangOffObject && ActiveHangTarget.DoesFaceZAxis() && CharInput.Up));
//    }
	
	protected void Backflip(float elapsedTime)
	{
		if(MecanimAnimator.GetBool(_backflipHash))
		{
			MecanimAnimator.SetBool(_backflipHash, false);
			_desiredDirectionX = -Direction.x;
			_desiredSpeed = -HorizontalSpeed;
			VerticalSpeed = Mathf.Sqrt(2 * Settings.JumpHeight * Settings.Gravity);
		}
		else
			ApplyGravity(elapsedTime);
		
		
		float accelerationSmoothing = Settings.HorizontalAcceleration * elapsedTime;
		if(TimeInCurrentState > 0.15f)
		{
			Vector3 newDir = new Vector3(Mathf.Lerp(Direction.x, _desiredDirectionX, accelerationSmoothing), 0, 0);
			if (newDir.x * Direction.x < 0)
				HorizontalSpeed = -HorizontalSpeed;
			Direction = newDir;
		}
		
		accelerationSmoothing = Settings.HorizontalAcceleration * elapsedTime;
		HorizontalSpeed = Mathf.Lerp(HorizontalSpeed, _desiredSpeed, accelerationSmoothing);

		MecanimAnimator.SetBool(_hangHash, 
		                        (CanHangOffObject && ActiveHangTarget.DoesFaceXAxis() && VerticalSpeed < 0) 
		                        || (CanHangOffObject && ActiveHangTarget.DoesFaceZAxis() && CharInput.Up));
        
        MecanimAnimator.SetBool(_jumpHash, false);
        MecanimAnimator.SetBool(_fallHash, false);
	}
	
	protected void Falling(float elapsedTime)
	{
		if(CharInput.Right || CharInput.Left) // maintain horizontal momentum, but slow down if does input
			ApplyRunning(elapsedTime / 2.0f);
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

 //       if(CharInput.JumpPressed && !_hasDoubleJumped)
 //           MecanimAnimator.SetBool(_doublejumpHash, true);
	}

	protected void Wallgrabbing(float elapsedTime)
	{
		HorizontalSpeed = 0;
        VerticalSpeed = 0;
        /*
        if (_wallJumpCount > 0)
			VerticalSpeed = 0; // Settings.WallSlideSpeed * elapsedTime; // TODO: MAKE THIS LINEAR BASED OFF WALLJUMPCOUNT?
        else
            VerticalSpeed = 0;
            */

		bool jump = (Direction.x > 0 && CharInput.JumpLeft) || (Direction.x < 0 && CharInput.JumpRight);
		MecanimAnimator.SetBool(_jumpWallHash, jump);

		if(CharInput.InteractionPressed || CharInput.PickupPressed || jump || IsGrounded ||
		    (ActiveHangTarget == null) )
		{
			MecanimAnimator.SetBool(_grabWallHash, false);
			DropHangTarget();
		}
	}

	protected void Walljumping(float elapsedTime)
	{
		if(MecanimAnimator.GetBool(_jumpWallHash))
		{
			Direction = -Direction;
			VerticalSpeed = Mathf.Sqrt(2 * Settings.JumpHeight * Settings.Gravity);
            _wallJumpCount++;
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
	
	protected void Hanging(float elapsedTime)
	{
		VerticalSpeed = 0;
		if(MecanimAnimator.GetBool(_hangHash))
		{
			
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

        MecanimAnimator.SetBool(_fallHash, false);
		
        if(ActiveHangTarget == null)
		{
			DropHangTarget();
			MecanimAnimator.SetBool(_fallHash, true);
		}
		else if (ActiveHangTarget is Ledge && (CharInput.Up || InputMoveForward))	
		{
            _ledge = ActiveHangTarget as Ledge;
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
        if(_ledge == null)
        {
            Debug.LogWarning("Player Character's Ledge Not Found!");
            MecanimAnimator.SetBool(_fallHash, true);
            return;
        }

        MecanimAnimator.SetBool(_fallHash, false);

		if ((Direction.x > 0 && transform.position.x > _ledge.transform.position.x + _ledge.collider.bounds.extents.x)
		    || (Direction.x < 0 && transform.position.x < _ledge.transform.position.x - _ledge.collider.bounds.extents.x)
		    || CurrentState.normalizedTime > 0.9)
        {
            MecanimAnimator.SetBool(_climbLedgeHash, false);
			VerticalSpeed = GroundVerticalSpeed;
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
		
		//		if(VerticalSpeed != 0 && ActiveHangTarget.DoesFaceZAxis())
		//			ApplyClimbingStrafing( CharInput.Horizontal );
		//		else
		HorizontalSpeed = 0;
		
		float vertical = CharInput.Vertical;
		
		ApplyClimbingVertical(vertical);
		
		if(ActiveHangTarget.DoesFaceZAxis())
            Direction = Vector3.zero;
		else
		{
			bool ladderToRight = ActiveHangTarget.transform.position.x - transform.position.x > 0.0f;
			if(ladderToRight)
				Direction = Vector3.right;
			else
				Direction = Vector3.left;
		}
        
        MecanimAnimator.SetFloat(_horizontalSpeedHash, HorizontalSpeed);
        MecanimAnimator.SetFloat(_verticalSpeedHash, VerticalSpeed);

		if(CharInput.InteractionPressed)
		{
			MecanimAnimator.SetBool (_fallHash, true);
			DropHangTarget();
			return;
		}
		else
			MecanimAnimator.SetBool (_fallHash, false);

		if (CharInput.JumpActive)
        {
			MecanimAnimator.SetBool (_jumpHash, true);
			DropHangTarget();
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

	protected void Pickup(float elapsedTime)
	{
		if(MecanimAnimator.GetBool(_pickupHash))
		{
			MecanimAnimator.SetBool(_pickupHash, false);

			// *** picking up weapon? ***
			if(_itemPickedup.WeaponPrefab != null)
			{
				int pickupCount = _itemPickedup.Quantity;
				Weapon pickedUpWeapon = _itemPickedup.WeaponPrefab.GetComponent<Weapon>();

				// try add to an existing weapon
				if(! GameManager.Inventory.TryAddAmmo(pickedUpWeapon, pickupCount)) {
					// Create a new weapon from the item and destroy the item
					Transform instantiatedWeapon = (Transform) Instantiate(_itemPickedup.WeaponPrefab);
					Weapon newWeapon = instantiatedWeapon.GetComponent<Weapon>();
					Debug.Log ("Added new weapon qty " + pickupCount);
					newWeapon.Quantity = pickupCount;
					GameManager.Inventory.Weapons.Add(newWeapon);

					// Move the weapon offscreen
					instantiatedWeapon.position = GameManager.Level.OffscreenPosition;

				}

				GameManager.UI.RefreshWeaponWheel();

				// *** auto-equip if we have nothing ***
				if(GameManager.Inventory.CurrentWeapon == null)
					StartCoroutine("AutoEquip");

			}
			// *** must be picking up item... ***
			else
			{
				// generate a new inventory item and add it.
				InventoryItem newInvItem = InventoryItemFactory.CreateFromType(_itemPickedup.Type, _itemPickedup.Quantity);
                GameManager.Inventory.AddItem( newInvItem );

				GameManager.UI.CraftingMenu.RefreshItemWheel();

			}

			Destroy(_itemPickedup.gameObject, 0.5f);

		}

		HorizontalSpeed = 0;
		VerticalSpeed = GroundVerticalSpeed;
	
	}

	IEnumerator AutoEquip()
	{
		yield return new WaitForSeconds (0.5f);
        if(GameManager.Inventory.Weapons.Count == 1)
            GameManager.UI.CycleToNextWeapon();
        else if(GameManager.Inventory.Weapons.Count <= 3)
			GameManager.UI.RefreshWeaponWheel();
		StopCoroutine ("AutoEquip");
	}
		
	protected override void ApplyRunning (float elapsedTime)
	{
		base.ApplyRunning(elapsedTime);
		MecanimAnimator.SetFloat(_horizontalSpeedHash, Direction.x * HorizontalSpeed/Settings.MaxHorizontalSpeed);
	}

	public void PlayHit()
	{
		_sound.Play(_sound.Hit, 1.0f);
	}

	public void PlayPickup()
	{
		_sound.Play(_sound.ItemPickup, 1.0f);
	}

	public void PlayCrafting()
	{
		_sound.Play(_sound.Craft, 1.0f);
	}

	public void PlayBackflip()
	{
		_sound.Play(_sound.Flip, 1.0f);
	}

	public void PlayJump()
	{
		//TODO: Move this wallkick sound to new wall kick animation and event
		if(CurrentState.IsName("Wall.Walljumping"))
			_sound.Play(_sound.WallKick, 1.0f);
		else _sound.Play(_sound.Jump, 1.0f);
	}

	public void PlayWallHit()
	{
		_sound.Play(_sound.WallHit, 1.0f);
	}

	public void PlayRun()
	{
		int runIndex = Random.Range (0, _sound.Running.Length);
		_sound.Play(_sound.Running[runIndex], 1.0f);
	}

	public override void PlayLand() //where dreams come true
	{
		//FIXME: Volumes of jumping up to a higher area are weird, as well as jumping off walls
		float fallDistance = LastGroundHeight - transform.position.y;
		if(fallDistance < 0)
			fallDistance = 5;
		//TODO: Actually make different sounds for different heights
//		AudioClip landing;
//		if(fallDistance <= 2)
//			landing = _sound.SoftLanding;
//		if(fallDistance > 2 && fallDistance <= 15)
//			landing = _sound.MediumLanding;
//		if(fallDistance > 15)
//			landing = _sound.LoudLanding;

		float fallVolume = fallDistance/32f + 0.1f; //max volume if height is > 21
		if(fallVolume > 1)
			fallVolume = 1;
		//Debug.Log ("Fall Volume" + fallVolume);
		_sound.Play(_sound.Landing, fallVolume);
	}

	public void PlayAttack()
	{
		_sound.Play(_sound.Attack, 1.0f);
	}

	public bool CanStealthKill(out OlympusAnimator animRet)
	{
		animRet = null;

		// no melee equipped, don't even bother to cast any rays
        if (!IsGrounded || !GameManager.Inventory.CanWeaponStealthKill )
			return false;
		
		// see if anything in range
		Vector3 vPlayerPos = transform.position;
		Vector3 vTargetPos = vPlayerPos + new Vector3 (Direction.x * Settings.StealthKillRange, 0.0f, 0.0f);
		Vector3 vDir = new Vector3 (Direction.x, 0.0f, 0.0f);

		Debug.DrawLine(vPlayerPos, vTargetPos, Color.blue, 0.5f, false);

		RaycastHit hitInfo = new RaycastHit();
		// see if the first thing in our stealth kill distance is the enemy (no obstacles in between)
		// NOTE: Distance can be buggy unless you include a layer mask.
		if (Physics.Raycast(vPlayerPos, vDir, out hitInfo, Settings.StealthKillRange, 1 << 11 ) )
		{
				EnemyAI ai = hitInfo.transform.root.GetComponent<EnemyAI>();
				OlympusAnimator anim = hitInfo.transform.root.GetComponent<OlympusAnimator>();

				if(ai && anim && (ai.Awareness == EnemyAI.AwarenessLevel.Unaware) && anim.IsGrounded)
				{
					animRet = anim;
					return true;
				}

		}

		return false;
	}

	public bool CanPickupItem(out GameObject obj)
	{
		RaycastHit hitInfo = new RaycastHit (); 
		// test from player's front downward to item.
		if(Physics.Raycast(transform.position + new Vector3(Direction.x * Radius, Height / 2.0f, 0), Vector3.down, out hitInfo, Height, 1 << 13 ) )
   		{
			obj = hitInfo.transform.gameObject;
			return true;
		}
		obj = null;
		return false;
	}

}
