using UnityEngine;
using System.Collections;
using System.Collections.Generic;

/// <summary>
/// Newman Animator defines the motion for the character that the player controls.
/// </summary>
[AddComponentMenu("Character/Player Character/Newman Animator")]
public class NewmanAnimator : CharacterAnimator
{
    // TODO: REPLACE THIS WITH OBJECT POOLING
    public GameObject StealthKillEvent;
    public float IdleChangeSpeed = 2;

    // Mecanim State Hashes
    public static readonly int IdleState = Animator.StringToHash("Base Layer.Idle");
    public static readonly int RunningState = Animator.StringToHash("Ground.Running");
    public static readonly int RollingState = Animator.StringToHash("Ground.Rolling");
    public static readonly int BackflipState = Animator.StringToHash("Air.Backflip");
    public static readonly int FallingState = Animator.StringToHash("Air.Falling");
    public static readonly int JumpingState = Animator.StringToHash("Jumping.Jumping");
    public static readonly int LongJumpingState = Animator.StringToHash("Jumping.LongJumping");
    public static readonly int LandingState = Animator.StringToHash("Landing.Landing");
    public static readonly int LandRollState = Animator.StringToHash("Landing.Rolling");
    public static readonly int WallgrabbingState = Animator.StringToHash("Wall.Wallgrabbing");
    public static readonly int WalljumpingState = Animator.StringToHash("Wall.Walljumping");
    public static readonly int HangingState = Animator.StringToHash("Climbing.Hanging");
    public static readonly int ClimbingLedgeState = Animator.StringToHash("Climbing.ClimbingLedge");
    public static readonly int ClimbingLadderState = Animator.StringToHash("Climbing.ClimbingLadder");
    public static readonly int ClimbingRopeState = Animator.StringToHash("Climbing.ClimbingRope");
    //public static readonly int ClimbingStrafeState = Animator.StringToHash ("Climbing.ClimbingStrafe");
    public static readonly int SteppingDownState = Animator.StringToHash("Kneeling.Stepping Down");
    public static readonly int StandingUpState = Animator.StringToHash("Kneeling.Standing Up");
    public static readonly int PickupState = Animator.StringToHash("Kneeling.Pickup");
    public static readonly int StealthKillState = Animator.StringToHash("Combat.Stealth Kill");
    public static readonly int DamagedState = Animator.StringToHash("Combat.Damaged");
    public static readonly int DeathState = Animator.StringToHash("Combat.Death");
    public static readonly int DeadState = Animator.StringToHash("Combat.Waiting For Respawn");
    public static readonly int ReviveState = Animator.StringToHash("Combat.Revive");

    //The player's sound effects, yeah!
    private NewmanAudioPlayer _sound;
    
    // HACK: Couldn't get jump left-right to work using the properties, so we're doing this
    private float _jumpDirectional;
    
    // Used for backflipping
    private float _desiredSpeed;
    private float _desiredDirectionX;

    // Keep track of the number of consecutive wall jumps the player has done
    private int _wallJumpCount;
    
    // Used to keep track of a ledge we are climbing
    private Ledge _ledge;

    // Used to pickup items only at the end of the animation
    private Item _itemPickedup;

    // Who are we close enough to stealth-kill right now?
    private CharacterAnimator _stealthKillable;

    protected override void OnStart()
    {
        _sound = gameObject.GetComponentInChildren<NewmanAudioPlayer>();

    }
    
    protected override void CreateStateMachine()
    {
        StateMachine [IdleState] = Idle;
        StateMachine [RunningState] = Running;
        StateMachine [RollingState] = Rolling;
        StateMachine [BackflipState] = Backflip;
        StateMachine [FallingState] = Falling;
        StateMachine [JumpingState] = Jumping;
        StateMachine [LongJumpingState] = Jumping;
        StateMachine [LandingState] = Landing;
        StateMachine [LandRollState] = Landing;
        StateMachine [WallgrabbingState] = Wallgrabbing;
        StateMachine [WalljumpingState] = Walljumping;
        StateMachine [HangingState] = Hanging;
        StateMachine [ClimbingLedgeState] = ClimbingLedge;
        StateMachine [ClimbingLadderState] = ClimbingVertical;
        //StateMachine[ClimbingStrafeState] = ClimbingStrafe;
        StateMachine [ClimbingRopeState] = ClimbingVertical;
        StateMachine [SteppingDownState] = SteppingDown;
        StateMachine [StandingUpState] = StandingUp;
        StateMachine [PickupState] = Pickup;
        StateMachine [StealthKillState] = StealthKill;
        StateMachine [DamagedState] = Damaged;
        StateMachine [DeathState] = Die;
        StateMachine [DeadState] = Die;
        StateMachine [ReviveState] = Revive;

    }
    
    protected override void UpdateMecanimVariables()
    {
        if (IsGrounded) {
            _wallJumpCount = 0;
        }

        UpdateBaseAnimations();
        UpdateWeaponsAnimations();

    }
    
    protected void UpdateBaseAnimations()
    {
        // HACK: JUMPDIRECTIONAL
        if (!MecanimAnimator.GetBool(MecanimHashes.Jump) && IsGrounded && CharInput.JumpPressed) {
            if (CharInput.JumpRight) {
                _jumpDirectional = 1;
            } else if (CharInput.JumpLeft) {
                _jumpDirectional = -1;
            }
            MecanimAnimator.SetBool(MecanimHashes.Jump, true);
        }

        bool facingRightLadder = (ActiveHangTarget && ActiveHangTarget.transform.position.x - transform.position.x > 0.0f);
        bool facingLeftLadder = (ActiveHangTarget && transform.position.x - ActiveHangTarget.transform.position.x > 0.0f);
        bool startClimbLadder = CanClimbLadder && ((facingRightLadder && CharInput.Right) ||
            (facingLeftLadder && CharInput.Left));
        MecanimAnimator.SetBool(MecanimHashes.ClimbLadder, startClimbLadder);
        
        MecanimAnimator.SetBool(MecanimHashes.ClimbRope, CanClimbRope);

        MecanimAnimator.SetBool(MecanimHashes.IsGrounded, IsGrounded);

    }

    protected void UpdateWeaponsAnimations()
    {
        if (GameManager.Inventory.CurrentWeapon == null || IsDead) {
            return;
        }

        Weapon currentWeapon = GameManager.Inventory.CurrentWeapon;

        // The stealthkill state is a special weapon/base-layer combat state
        if (CurrentState.nameHash != StealthKillState && currentWeapon.CanStealthKill && 
            CharInput.AttackPressed && StealthKillable != null) {
            MecanimAnimator.SetBool(MecanimHashes.StealthKill, true);
            StartCoroutine(ShowStealthKill());

        }

        // Enable weapon usage when not in the stealthkill state
        if (CurrentState.nameHash != StealthKillState) {
            MecanimAnimator.SetBool(MecanimHashes.ShootGun, CharInput.AttackPressed && currentWeapon.Type == Weapon.WeaponType.Weapon_GravityGun); 
            MecanimAnimator.SetBool(MecanimHashes.ActivateCamo, CharInput.AttackPressed && currentWeapon.Type == Weapon.WeaponType.Weapon_Camo);
            MecanimAnimator.SetBool(MecanimHashes.PlaceMine, CharInput.AttackPressed && currentWeapon.Type == Weapon.WeaponType.Weapon_MINE);
        }

    }

    public void ActivateWeapon()
    {
        Weapon weapon = GameManager.Inventory.CurrentWeapon;
        if (weapon == null) {
            Debug.LogWarning("ActivateWeapon() called with no weapon found");
            return;
        }

        weapon.ActivateAttack();
        GameManager.Inventory.TryRemoveAmmo(weapon.Type, 1);
        GameManager.UI.RefreshWeaponWheel();

    }

    // IdleState = Animator.StringToHash("Base Layer.Idle");
    protected virtual void Idle(float elapsedTime)
    {
        // Switch between crouching and standing idles based off enemies that could hear
        float idleNum = MecanimAnimator.GetFloat(MecanimHashes.IdleNum);
        float targetIdle = GameManager.AI.EnemiesCouldHear > 0 ? 1 : 0;
        // Press shift to crouch
#if UNITY_STANDALONE_WIN || UNITY_EDITOR || UNITY_STANDALONE_OSX
        if(Input.GetButton ("Shift"))
            targetIdle = 1;
#endif
        idleNum = Mathf.Lerp(idleNum, targetIdle, Time.deltaTime * IdleChangeSpeed);
        MecanimAnimator.SetFloat(MecanimHashes.IdleNum, idleNum);

        // You can start moving left or right at any point
        ApplyRunning(elapsedTime);
        ApplyBiDirection();

        // You stick to the ground
        VerticalSpeed = GroundVerticalSpeed;
        MecanimAnimator.SetFloat (MecanimHashes.VerticalSpeed, VerticalSpeed);

        // You could potentially fall down if the ground disappears beneath you
        MecanimAnimator.SetBool(MecanimHashes.Fall, !MecanimAnimator.GetBool(MecanimHashes.Fall) && !IsGrounded);

        // You can only pickup items while in idle
        if (CharInput.Pickup) {
            GameObject itemObj = null;
            bool canPickup = CanPickupItem(out itemObj);
            if (canPickup && itemObj != null) {
                _itemPickedup = itemObj.GetComponent<Item>();
            }
            MecanimAnimator.SetBool(MecanimHashes.Pickup, canPickup && _itemPickedup != null);
        }

    }

    // RunningState = Animator.StringToHash("Ground.Running");
    protected void Running(float elapsedTime)
    {
        // You run left or right
        ApplyRunning(elapsedTime);
        ApplyBiDirection();

        // You stick to the ground
        VerticalSpeed = GroundVerticalSpeed;
        MecanimAnimator.SetFloat (MecanimHashes.VerticalSpeed, VerticalSpeed);
        
        // Root-based animation for sneaking
        /* TODO?
        if ( (MecanimAnimator.GetFloat(MecanimHashes.HorizontalSpeed) < 0.5f) && (CharInput.Left || CharInput.Right) ) {
            HorizontalSpeed = MecanimAnimator.deltaPosition.z;
            HorizontalSpeed = Mathf.Max (HorizontalSpeed, 0.1f);
            MecanimAnimator.SetFloat(MecanimHashes.HorizontalSpeed, Direction.x * CharInput.Horizontal);
        }
        */
        
        // You could potentially fall down by running off a ledge
        MecanimAnimator.SetBool(MecanimHashes.Fall, !MecanimAnimator.GetBool(MecanimHashes.Fall) && !IsGrounded);

        // You could start rolling over small obstacles in your way
        MecanimAnimator.SetBool(MecanimHashes.ClimbLedge, 
                                ActiveHangTarget != null && ActiveHangTarget is Ledge && ((Ledge)ActiveHangTarget).Obstacle &&
                                ((Direction.x > 0 && ((Ledge)ActiveHangTarget).Left)
                                || (Direction.x < 0 && !((Ledge)ActiveHangTarget).Left)) &&
                                Mathf.Abs(HorizontalSpeed / Settings.MaxHorizontalSpeed) >= 0.5); // TODO: USE A VARIABLE SET TO 0.66 INSTEAD OF 0.5F HARDCODE

        // You can only do a backflip if you're running
        if ((Direction.x > 0 && CharInput.JumpLeft) || (Direction.x < 0 && CharInput.JumpRight)) {
            MecanimAnimator.SetBool(MecanimHashes.Backflip, true);
            MecanimAnimator.SetBool(MecanimHashes.Jump, false);
        } else { 
            MecanimAnimator.SetBool(MecanimHashes.Backflip, false);
        }
        
    }

    // RollingState = Animator.StringToHash("Ground.Rolling");
    protected void Rolling(float elapsedTime)
    {
        // We only need to set motion settings at the beginning of the animation
        if (!MecanimAnimator.GetBool(MecanimHashes.ClimbLedge)) {
            return;
        }

        // We need to make sure we know what we're going to roll over.
        if (ActiveHangTarget == null) {
            Debug.LogWarning("Failed to have hang target while doing rolling!");
            return;
        }

        // Meta-data about the motion we need to do
        MecanimAnimator.SetBool(MecanimHashes.ClimbLedge, false);
        Bounds ledgeBounds = ActiveHangTarget.collider.bounds;
        float animationTime = MecanimAnimator.GetCurrentAnimatorStateInfo(0).length;

        // Horizontal motion
        float distanceToMove = Direction.x > 0 ?
            ledgeBounds.max.x - Controller.bounds.center.x :
                ledgeBounds.min.x - Controller.bounds.center.x;
        HorizontalSpeed = distanceToMove / animationTime;

        // Vertical motion
        float distanceToClimb = ledgeBounds.max.y - Controller.bounds.min.y;
        VerticalSpeed = distanceToClimb / animationTime;

        //Update Mecanim variables
        MecanimAnimator.SetFloat (MecanimHashes.HorizontalSpeed, Direction.x * HorizontalSpeed / Settings.MaxHorizontalSpeed);
        MecanimAnimator.SetFloat (MecanimHashes.VerticalSpeed, VerticalSpeed);

    }

    // BackflipState = Animator.StringToHash("Air.Backflip");
    protected void Backflip(float elapsedTime)
    {
        // We determine our speed on the first frame of the action
        if (MecanimAnimator.GetBool(MecanimHashes.Backflip)) {
            MecanimAnimator.SetBool(MecanimHashes.Backflip, false);
            _desiredDirectionX = -Direction.x;
            _desiredSpeed = -HorizontalSpeed;
            VerticalSpeed = Mathf.Sqrt(2 * Settings.JumpHeight * Settings.Gravity);
            MecanimAnimator.SetFloat (MecanimHashes.VerticalSpeed, VerticalSpeed);
        } else {
            ApplyGravity(elapsedTime);
        }

        // Determine horizontal speed frame by frame
        float accelerationSmoothing = Settings.HorizontalAcceleration * elapsedTime;
        if (TimeInCurrentState > 0.15f) {
            Vector3 newDir = new Vector3(Mathf.Lerp(Direction.x, _desiredDirectionX, accelerationSmoothing), 0, 0);
            if (newDir.x * Direction.x < 0) {
                HorizontalSpeed = -HorizontalSpeed;
            }
            Direction = newDir;
        }
        accelerationSmoothing = Settings.HorizontalAcceleration * elapsedTime;
        HorizontalSpeed = Mathf.Lerp(HorizontalSpeed, _desiredSpeed, accelerationSmoothing);
        MecanimAnimator.SetFloat (MecanimHashes.HorizontalSpeed, Direction.x * HorizontalSpeed / Settings.MaxHorizontalSpeed);

        // You can grab onto objects even in the middle of a backflip
        bool shouldHang = (CanHangOffObject && ActiveHangTarget.DoesFaceXAxis() && VerticalSpeed < 0) 
            || (CanHangOffObject && ActiveHangTarget.DoesFaceZAxis() && CharInput.Up);
        MecanimAnimator.SetBool(MecanimHashes.Hang, shouldHang);

        // Update Mecanim variables
        MecanimAnimator.SetBool(MecanimHashes.Jump, false);
        MecanimAnimator.SetBool(MecanimHashes.Fall, false);
        
    }

    // FallingState = Animator.StringToHash("Air.Falling");
    protected void Falling(float elapsedTime)
    {
        // Maintain horizontal speed by default, but allow 1/2 the normal movement for horizontal input
        if (CharInput.Right || CharInput.Left) {
            ApplyRunning(elapsedTime * 0.5f);
        }
        ApplyGravity(elapsedTime);
        
        MecanimAnimator.SetBool(MecanimHashes.Fall, false);
        
        MecanimAnimator.SetBool(MecanimHashes.GrabWall, CanGrabWall);
        
        if (!(ActiveHangTarget is Ledge && ((Ledge)ActiveHangTarget).Obstacle) &&
            (CanHangOffObject && ActiveHangTarget.DoesFaceXAxis() && VerticalSpeed < 0) 
            || (CanHangOffObject && ActiveHangTarget.DoesFaceZAxis() && CharInput.Up)) {
            MecanimAnimator.SetBool(MecanimHashes.Hang, true);
            VerticalSpeed = 0;
            HorizontalSpeed = 0;
            MecanimAnimator.SetFloat (MecanimHashes.HorizontalSpeed, 0);
            MecanimAnimator.SetFloat (MecanimHashes.VerticalSpeed, VerticalSpeed);
        } else {
            MecanimAnimator.SetBool(MecanimHashes.Hang, false);
        }
        
    }

    // JumpingState = Animator.StringToHash("Jumping.Jumping");
    // LongJumpingState = Animator.StringToHash("Jumping.LongJumping");
    protected void Jumping(float elapsedTime)
    {
        if (MecanimAnimator.GetBool(MecanimHashes.Jump)) {
            if (CharInput.JumpLeft || CharInput.JumpLeftReleased || _jumpDirectional < 0) {
                Direction = Vector3.left;
                HorizontalSpeed = -1.0f * Settings.MaxHorizontalSpeed;
            } else if (CharInput.JumpRight || CharInput.JumpRightReleased || _jumpDirectional > 0) {
                Direction = Vector3.right;
                HorizontalSpeed = 1.0f * Settings.MaxHorizontalSpeed;
            }

            // HACK: JUMPDIRECTIONAL
            _jumpDirectional = 0;

            VerticalSpeed = Mathf.Sqrt(2 * Settings.JumpHeight * Settings.Gravity);
            MecanimAnimator.SetFloat (MecanimHashes.VerticalSpeed, VerticalSpeed);
            MecanimAnimator.SetBool(MecanimHashes.Jump, false);
        } else {
            ApplyGravity(elapsedTime);
        }
        
        if (transform.position.y < LastGroundHeight - 1) {
            MecanimAnimator.SetBool(MecanimHashes.Fall, true);
        }
        
        MecanimAnimator.SetBool(MecanimHashes.GrabWall, CanGrabWall);

        bool shouldHang = (CanHangOffObject && ActiveHangTarget.DoesFaceXAxis() && VerticalSpeed < 0) 
            || (CanHangOffObject && ActiveHangTarget.DoesFaceZAxis() && CharInput.Up);
        MecanimAnimator.SetBool(MecanimHashes.Hang, shouldHang);
        
        bool shouldRegrabRope = CharInput.Up && PreviousHangTarget != null && PreviousHangTarget.collider.bounds.Contains(transform.position);
        if (shouldRegrabRope) {
            AddHangTarget(PreviousHangTarget);
            MecanimAnimator.SetBool(MecanimHashes.ClimbRope, true);
        }

    }

    // LandingState = Animator.StringToHash("Landing.Landing");
    // LandRollState = Animator.StringToHash("Landing.Rolling");
    protected void Landing(float elapsedTime)
    {
        // TODO?: NOTE: This "root-based suggestion" works under the assumption that everything happens in FixedUpdate()
        //HorizontalSpeed = -Direction.x * MecanimAnimator.deltaPosition.x / Time.fixedDeltaTime;

    }

    // WallgrabbingState = Animator.StringToHash("Wall.Wallgrabbing");
    protected void Wallgrabbing(float elapsedTime)
    {
        // We don't move horizontally
        HorizontalSpeed = 0;
        MecanimAnimator.SetFloat (MecanimHashes.HorizontalSpeed, 0);

        // But we do want to start moving down the wall
        /*
        if (_wallJumpCount > 0)
            VerticalSpeed = 0; // Settings.WallSlideSpeed * elapsedTime; // TODO: MAKE THIS LINEAR BASED OFF WALLJUMPCOUNT?
        else
            VerticalSpeed = 0;
            */
        VerticalSpeed = 0;
        MecanimAnimator.SetFloat (MecanimHashes.VerticalSpeed, VerticalSpeed);

        // You can either let go of or jump off of the wall
        if (CharInput.PickupPressed) {
            MecanimAnimator.SetBool(MecanimHashes.Fall, true);
            MecanimAnimator.SetBool(MecanimHashes.GrabWall, false);
            DropHangTarget();
        } else if (CharInput.InteractionPressed || (CharInput.JumpPressed && (InputJumpBackward || CharInput.JumpUp))) {
            MecanimAnimator.SetBool(MecanimHashes.JumpWall, true);
            MecanimAnimator.SetBool(MecanimHashes.GrabWall, false);
            DropHangTarget();
        }

    }

    // WalljumpingState = Animator.StringToHash("Wall.Walljumping");
    protected void Walljumping(float elapsedTime)
    {
        if (MecanimAnimator.GetBool(MecanimHashes.JumpWall)) {
            Direction = -Direction;
            VerticalSpeed = Mathf.Sqrt(2 * Settings.JumpHeight * Settings.Gravity);
            MecanimAnimator.SetFloat (MecanimHashes.VerticalSpeed, VerticalSpeed);
            _wallJumpCount++;
            MecanimAnimator.SetBool(MecanimHashes.JumpWall, false);
        } else {
            ApplyGravity(elapsedTime);
        }
        
        HorizontalSpeed = Settings.MaxHorizontalSpeed * Direction.x;
        
        if (transform.position.y >= LastGroundHeight - 1) {
            MecanimAnimator.SetBool(MecanimHashes.Fall, false);
        }

        if (CanGrabWall) {
            MecanimAnimator.SetBool(MecanimHashes.GrabWall, true);
        }
        
        
        if (!(ActiveHangTarget is Ledge && ((Ledge)ActiveHangTarget).Obstacle) &&
            (CanHangOffObject && ActiveHangTarget.DoesFaceXAxis() && VerticalSpeed < 0) 
            || (CanHangOffObject && ActiveHangTarget.DoesFaceZAxis() && CharInput.Up)) {
            MecanimAnimator.SetBool(MecanimHashes.Hang, true);
            VerticalSpeed = 0;
            MecanimAnimator.SetFloat (MecanimHashes.VerticalSpeed, VerticalSpeed);
            HorizontalSpeed = 0;
        } else {
            MecanimAnimator.SetBool(MecanimHashes.Hang, false);
        }

    }

    // HangingState = Animator.StringToHash("Climbing.Hanging");
    protected void Hanging(float elapsedTime)
    {
        VerticalSpeed = 0;
        if (MecanimAnimator.GetBool(MecanimHashes.Hang)) {
            
            if (ActiveHangTarget == null) {
                MecanimAnimator.SetBool(MecanimHashes.Fall, true);
                return;
            }
            
            if (ActiveHangTarget.DoesFaceZAxis()) {
                HorizontalSpeed = 0.0f;
                Direction = Vector3.zero;
            } else {
                HorizontalSpeed = Direction.x * Settings.LedgeClimbingSpeed;
                if (IsHangTargetToRight) {
                    Direction = Vector3.right;
                } else {
                    Direction = Vector3.left;
                }
            }
            
            MecanimAnimator.SetBool(MecanimHashes.Hang, false);
        }
        
        if (ActiveHangTarget != null) {
            ActivePlatform = ActiveHangTarget.transform;
        }

        MecanimAnimator.SetBool(MecanimHashes.Fall, false);
        
        if (ActiveHangTarget == null) {
            DropHangTarget();
            MecanimAnimator.SetBool(MecanimHashes.Fall, true);
        } else if (ActiveHangTarget is Ledge && (CharInput.Up || InputMoveForward)) {
            _ledge = ActiveHangTarget as Ledge;
            MecanimAnimator.SetBool(MecanimHashes.ClimbLedge, true);
        } else if (CharInput.JumpPressed) {
            DropHangTarget();
            MecanimAnimator.SetBool(MecanimHashes.Jump, true);
        } else if (CharInput.Down || CharInput.Pickup) {
            DropHangTarget();
            MecanimAnimator.SetBool(MecanimHashes.Fall, true);
        }

    }

    // ClimbingLedgeState = Animator.StringToHash("Climbing.ClimbingLedge");
    protected void ClimbingLedge(float elapsedTime)
    {
        if (_ledge == null) {
            Debug.LogWarning("Player Character's Ledge Not Found!");
            MecanimAnimator.SetBool(MecanimHashes.Fall, true);
            return;
        }

        MecanimAnimator.SetBool(MecanimHashes.Fall, false);

        if ((Direction.x > 0 && transform.position.x > _ledge.transform.position.x + _ledge.collider.bounds.extents.x)
            || (Direction.x < 0 && transform.position.x < _ledge.transform.position.x - _ledge.collider.bounds.extents.x)
            || CurrentState.normalizedTime > 0.9) {
            MecanimAnimator.SetBool(MecanimHashes.ClimbLedge, false);
            VerticalSpeed = GroundVerticalSpeed;
        } else if (transform.position.y > _ledge.transform.position.y + _ledge.collider.bounds.extents.y + Height / 2) {
            VerticalSpeed = 0;
        } else {
            if (_ledge.DoesFaceZAxis()) {
                HorizontalSpeed = 0.0f;
                VerticalSpeed = Settings.LedgeClimbingSpeed;
            } else if (_ledge.DoesFaceXAxis()) {
                HorizontalSpeed = Direction.x * Settings.LedgeClimbingSpeed;
                VerticalSpeed = Settings.LedgeClimbingSpeed;
            }
        }
        MecanimAnimator.SetFloat (MecanimHashes.VerticalSpeed, VerticalSpeed);

    }

    // ClimbingLadderState = Animator.StringToHash("Climbing.ClimbingLadder");
    // ClimbingRopeState = Animator.StringToHash("Climbing.ClimbingRope");
    protected void ClimbingVertical(float elapsedTime)
    {
        if (ActiveHangTarget == null) {
            DropHangTarget();
            MecanimAnimator.SetBool(MecanimHashes.Fall, true);
            return;
        }
        
        //if(VerticalSpeed != 0 && ActiveHangTarget.DoesFaceZAxis())
        //    ApplyClimbingStrafing( CharInput.Horizontal );
        //else
        HorizontalSpeed = 0;

        // The vertical motion is the most important when climbing ladders
        ApplyClimbingVertical(CharInput.Vertical);
        if (VerticalSpeed == 0) {
            if (InputMoveForward) {
                VerticalSpeed = Settings.LadderClimbingSpeed;
            } else if (InputMoveBackward) {
                VerticalSpeed = -Settings.LadderClimbingSpeed;
            }
            MecanimAnimator.SetFloat (MecanimHashes.VerticalSpeed, VerticalSpeed);
        }
        
        if (ActiveHangTarget.DoesFaceZAxis()) {
            Direction = Vector3.zero;
        } else {
            bool ladderToRight = ActiveHangTarget.transform.position.x - transform.position.x > 0.0f;
            if (ladderToRight) {
                Direction = Vector3.right;
            } else {
                Direction = Vector3.left;
            }
        }

        if (CharInput.InteractionPressed) {
            MecanimAnimator.SetBool(MecanimHashes.Fall, true);
            MecanimAnimator.SetBool(MecanimHashes.ClimbRope, false);
            DropHangTarget();
            return;
        } else {
            MecanimAnimator.SetBool(MecanimHashes.Fall, false);
        }

        if (CharInput.JumpPressed) {
            MecanimAnimator.SetBool(MecanimHashes.Jump, true);
            DropHangTarget();
        } 

    }

    //public static readonly int ClimbingStrafeState = Animator.StringToHash ("Climbing.ClimbingStrafe");
//  protected void ClimbingStrafe(float elapsedTime)
//  {
//      if(ActiveHangTarget == null)
//      {
//          DropHangTarget();
//          MecanimAnimator.SetBool(MecanimHashes.Fall, true);
//          return;
//      }
//
//      MecanimAnimator.SetBool (MecanimHashes.Fall, (_autoClimbDir == AutoClimbDirection.AutoClimb_None) && CharInput.InteractionPressed);
//
//      // always give a speed based on the auto-climb direction
//      float vertical = UpdateAutoClimbDirection ();
//  
//      ApplyClimbingStrafing(CharInput.Horizontal);
//      
//      if(HorizontalSpeed != 0)
//          ApplyClimbingVertical(vertical);
//      else
//          VerticalSpeed = 0.0f;
//
//      if(ActiveHangTarget.DoesFaceZAxis())
//          Direction = Vector3.zero;
//      
//      MecanimAnimator.SetBool(MecanimHashes.Jump, CharInput.JumpPressed);
//      //MecanimAnimator.SetBool(MecanimHashes.ClimbLadder, CanClimbP);
    //  }
    
    public override void StepDown()
    {
        MecanimAnimator.SetFloat(MecanimHashes.XDirection, Direction.x);
        MecanimAnimator.SetBool(MecanimHashes.SteppingDown, true);
        
    }
    
    public override void StandUp()
    {
        MecanimAnimator.SetBool(MecanimHashes.StandingUp, true);
        
    }
    
    // SteppingDownState = Animator.StringToHash("Kneeling.Stepping Down");
    protected void SteppingDown(float elapsedTime)
    {
        MecanimAnimator.SetBool(MecanimHashes.SteppingDown, false);
        
        // can't use friction because you can slide off a ledge right into the crafting animation
        HorizontalSpeed = 0;
        VerticalSpeed = 0;
        
    }

    // StandingUpState = Animator.StringToHash("Kneeling.Standing Up");
    protected void StandingUp(float elapsedTime)
    {
        MecanimAnimator.SetBool(MecanimHashes.StandingUp, false);
        
        HorizontalSpeed = 0;
        VerticalSpeed = 0;
        
    }

    // PickupState = Animator.StringToHash("Kneeling.Pickup");
    protected void Pickup(float elapsedTime)
    {
        if (MecanimAnimator.GetBool(MecanimHashes.Pickup)) {
            MecanimAnimator.SetBool(MecanimHashes.Pickup, false);

            // remove the item from the minimap
            // TODO: GameManager.UI.Map.RemoveMapPoint(_itemPickedup.transform.position.x.ToString());

            // *** picking up weapon? ***
            if (_itemPickedup.WeaponPrefab != null) {
                int pickupCount = _itemPickedup.Quantity;
                Weapon pickedUpWeapon = _itemPickedup.WeaponPrefab.GetComponent<Weapon>();

                // try add to an existing weapon
                if (! GameManager.Inventory.TryAddAmmo(pickedUpWeapon, pickupCount)) {
                    // Create a new weapon from the item and destroy the item
                    Transform instantiatedWeapon = (Transform)Instantiate(_itemPickedup.WeaponPrefab);
                    Weapon newWeapon = instantiatedWeapon.GetComponent<Weapon>();
                    newWeapon.Quantity = pickupCount;
                    GameManager.Inventory.Weapons.Add(newWeapon);

                    // Move the weapon offscreen
                    instantiatedWeapon.position = GameManager.Level.OffscreenPosition;

                }

                GameManager.UI.RefreshWeaponWheel();

                // *** auto-equip if we have nothing ***
                if (GameManager.Inventory.CurrentWeapon == null) {
                    StartCoroutine(AutoEquip());
                }

            }
            // *** must be picking up item... ***
            else {
                // generate a new inventory item and add it.
                InventoryItem newInvItem = InventoryItemFactory.CreateFromType(_itemPickedup.Type, _itemPickedup.Quantity);
                GameManager.Inventory.AddItem(newInvItem);

                GameManager.UI.CraftingMenu.RefreshItemWheel();

            }

            Destroy(_itemPickedup.gameObject, 0.5f);

        }

        HorizontalSpeed = 0;
        VerticalSpeed = GroundVerticalSpeed;
    
    }

    public bool CanPickupItem(out GameObject obj)
    {
        RaycastHit hit;
        float radius = Radius * 4.0f;
        Vector3 topRight = transform.position + new Vector3(Direction.x * Radius * 2.0f, Height * 0.5f + radius, 0);
        if (Physics.SphereCast(topRight, radius, Vector3.down, out hit, Height + radius, 1 << 13)) {
            obj = hit.collider.gameObject;
            return true;
        }
        obj = null;
        return false;
        
    }

    public IEnumerator AutoEquip()
    {
        yield return new WaitForSeconds(0.5f);
        if (GameManager.Inventory.Weapons.Count == 1) {
            GameManager.UI.CycleToNextWeapon();
        } else if (GameManager.Inventory.Weapons.Count <= 3) {
            GameManager.UI.RefreshWeaponWheel();
        }

    }
    
    public IEnumerator ShowStealthKill()
    {
        GenerateStealthKillEvent();
        GameManager.MainCamera.CinematicOverride = true;
        
        yield return new WaitForSeconds(4.0f);
        
        // remove a charge from weapon.
        GameManager.Inventory.TryRemoveAmmo(GameManager.Inventory.CurrentWeapon.Type, 1);

        // Restore normal gameplay
        GameManager.MainCamera.CinematicOverride = false;
        StealthKillable = null;
        
    }
    
    void GenerateStealthKillEvent()
    {
        // find where to place the attack event
        Vector3 killPos = transform.position;
        killPos.x += (Direction.x * Settings.StealthKillRange);
        
        // place so enemy can die appropriately
        // TODO: OBJECT POOLING
        GameObject o = (GameObject)Instantiate(StealthKillEvent, killPos, Quaternion.identity);
        HitBox d = o.GetComponent<HitBox>();
        d.MakePlayerStealthKill(this.gameObject);
        
    }
    
    // StealthKillState = Animator.StringToHash("Combat.Stealth Kill");
    protected void StealthKill(float elapsedTime)
    {
        if (MecanimAnimator.GetBool(MecanimHashes.StealthKill)) {
            MecanimAnimator.SetBool(MecanimHashes.StealthKill, false);
        }
        
        
        HorizontalSpeed = 0.0f;
        VerticalSpeed = 0.0f;
        
    }
    
    public override void MakeDamaged(Vector3 knockForce)
    {
        MecanimAnimator.SetBool(MecanimHashes.Damaged, true);
        HorizontalSpeed = knockForce.x;
        VerticalSpeed = knockForce.y;
        
    }

    // DamagedState = Animator.StringToHash("Combat.Damaged");
    protected void Damaged(float elapsedTime)
    {
        if (MecanimAnimator.GetBool(MecanimHashes.Damaged)) {
            MecanimAnimator.SetBool(MecanimHashes.Damaged, false);
            GameManager.UI.EnableInput();
            GameManager.UI.CraftingMenu.Close();
            GameManager.UI.ShowMap(false);
            
        }
        
        ApplyGravity(elapsedTime);
        
        if (IsGrounded) {
            ApplyDeathFriction(elapsedTime);
        }
        
    }
    
    // NOTE: WE DON'T NORMALLY USE THE DEATH ANIMATION STATES BELOW. INSTEAD, WE NORMALLY RAGDOLL
    public override void OnDeath(Vector3 knockForce)
    {
        base.OnDeath(knockForce);
        _sound.Play(_sound.Death, _sound.DeathVolume);
        GameManager.MainCamera.Target = Settings.RootRigidBody.transform;

        // TODO: REMOVE THIS HACK:
        #if UNITY_WEBPLAYER && !UNITY_EDITOR
        Application.LoadLevel(GameManager.SaveData.LevelName);
        #endif
        
    }

    // DeathState = Animator.StringToHash("Combat.Death");
    // DeadState = Animator.StringToHash("Combat.Waiting For Respawn");
    protected void Die(float elapsedTime)
    {
        if (IsGrounded) {
            ApplyDeathFriction(elapsedTime);
            VerticalSpeed = GroundVerticalSpeed;
            
        } else {
            ApplyGravity(elapsedTime);
        }
        
        MecanimAnimator.SetBool(MecanimHashes.Jump, false);
        MecanimAnimator.SetBool(MecanimHashes.Fall, false);
        MecanimAnimator.SetBool(MecanimHashes.Die, false);
        
    }

    // ReviveState = Animator.StringToHash("Combat.Revive");
    protected void Revive(float elapsedTime)
    {
        MecanimAnimator.SetBool(MecanimHashes.Respawn, false);
        
    }

    protected override void ApplyRunning(float elapsedTime)
    {
        float accelerationSmoothing = Settings.HorizontalAcceleration * elapsedTime;
        float currentSpeed = MecanimAnimator.GetFloat(MecanimHashes.HorizontalSpeed) * Direction.x * Settings.MaxHorizontalSpeed;
        HorizontalSpeed = Mathf.Lerp (currentSpeed, IgnoreXYMovement ? 0 : Settings.MaxHorizontalSpeed * CharInput.Horizontal, accelerationSmoothing);
        MecanimAnimator.SetFloat (MecanimHashes.HorizontalSpeed, Direction.x * HorizontalSpeed / Settings.MaxHorizontalSpeed);

    }

    protected override void ApplyClimbingVertical(float vertical)
    {
        base.ApplyClimbingVertical(vertical);
        MecanimAnimator.SetFloat (MecanimHashes.VerticalSpeed, VerticalSpeed);

    }

    protected override void ApplyGravity(float elapsedTime)
    {
        base.ApplyGravity(elapsedTime);
        MecanimAnimator.SetFloat (MecanimHashes.VerticalSpeed, VerticalSpeed);

    }
    
    public void PlayRun()
    {
        int runIndex = Random.Range(0, _sound.Running.Length);
        _sound.Play(_sound.Running [runIndex], Mathf.Abs(CharInput.Horizontal));
        
    }
    
    public void CreateFootstep ()
    {
        if (IsSneaking || _sound == null || _sound.Footsteps == null || _sound.Footsteps.Length <= 0)
            return;
        
        // TODO: object pooling (IT IS REALLY SLOW RIGHT NOW TO CREATE FOOTSTEPS)
        Vector3 footStepPosition = transform.position;
        footStepPosition.y -= Height * 0.5f;
        GameObject footstep = new GameObject("Newman Footstep");
        footstep.layer = LayerMask.NameToLayer("SoundStealth");
        footstep.transform.position = footStepPosition;
        footstep.AddComponent<SoundEvent>();
        AudioPlayer footAudio = footstep.AddComponent<AudioPlayer>();
        int footIndex = Random.Range(0, _sound.Footsteps.Length);
        footAudio.GetComponent<AudioPlayer> ().Play (_sound.Footsteps[footIndex], _sound.FootstepsVolume);
        
    }
    
    public void PlayJump()
    {
        _sound.Play(_sound.Jump, _sound.JumpVolume);
        
    }
    
    public void PlayBackflip()
    {
        _sound.Play(_sound.Backflip, _sound.BackflipVolume);
        
    }
    
    public void PlayWallGrab()
    {
        _sound.Play(_sound.WallGrab, _sound.WallGrabVolume);
        
    }

    public void PlayWallJump()
    {
        _sound.Play(_sound.WallJump, _sound.WallJumpVolume); 

    }
    
    public void PlayLand () // Where dreams come true
    {
        if (IsSneaking)
            return;
        
        // TODO: object pooling (IT IS REALLY SLOW RIGHT NOW TO CREATE FOOTSTEPS)
        Vector3 footStepPosition = transform.position;
        footStepPosition.y -= Height * 0.5f;
        GameObject footstep = new GameObject("Newman Landing Footstep");
        footstep.transform.position = footStepPosition;
        footstep.AddComponent<SoundEvent>();
        AudioPlayer footAudio = footstep.AddComponent<AudioPlayer>();
        footAudio.GetComponent<AudioPlayer> ().Play (_sound.Landing, _sound.LandingVolume);
        
    }

    public void PlayLandRoll()
    {
        if (IsSneaking)
            return;
        
        // TODO: object pooling (IT IS REALLY SLOW RIGHT NOW TO CREATE FOOTSTEPS)
        Vector3 footStepPosition = transform.position;
        footStepPosition.y -= Height * 0.5f;
        GameObject footstep = new GameObject("Newman Landing Rolling");
        footstep.transform.position = footStepPosition;
        footstep.AddComponent<SoundEvent>();
        AudioPlayer footAudio = footstep.AddComponent<AudioPlayer>();
        footAudio.GetComponent<AudioPlayer> ().Play (_sound.LandRoll, _sound.LandRollingVolume);

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

    public void PlaySparkplugCharge()
    { 
        _sound.Play(_sound.SparkplugCharge, 1.0f);

    }

    public void PlaySparkplugBleep()
    {
        _sound.Play(_sound.SparkplugBeep, 1.0f);

    }

    public void PlaySparkplugHit()
    {
        _sound.Play(_sound.SparkplugHit, 1.0f);

    }
    
    public override bool CanTransitionZ {
        get {
            return (base.CanTransitionZ && (GameManager.AI.EnemiesChasing == 0));
        }
    }
    
    public override bool CanInputHorizontal {
        get { return !IgnoreXYMovement && CurrentState.nameHash != ClimbingRopeState; }
    }
    
    public override bool CanInputVertical {
        get { return CanTransitionZ || CurrentState.nameHash == ClimbingRopeState || CurrentState.nameHash == ClimbingLadderState; }
    }
    
    public override bool CanInputAttack {
        get { return GameManager.Inventory.CanWeaponStealthKill && StealthKillable != null; }
    }
    
    public override bool CanInputPickup {
        get {
            GameObject itemObj;
            return CanPickupItem(out itemObj);
        }
    }

    public override bool IsClimbing {
        get {
            return CurrentState.nameHash == ClimbingLadderState || CurrentState.nameHash == ClimbingLedgeState ||
                CurrentState.nameHash == ClimbingRopeState || CurrentState.nameHash == WallgrabbingState;
        }
    }

    public override bool IsDead {
        get { return CurrentState.nameHash == DeathState || CurrentState.nameHash == DeadState || (Settings.RootRigidBody != null && Settings.RootRigidBody.collider.enabled); }
    }
    
    public CharacterAnimator StealthKillable {
        get { return _stealthKillable; }
        set { _stealthKillable = value; } 
    }

    public override EnemySaveState.EnemyType EnemyType {
        get { return EnemySaveState.EnemyType.Enemy_Olympus; }
    }

}
