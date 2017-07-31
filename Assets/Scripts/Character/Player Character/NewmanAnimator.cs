using UnityEngine;
using System.Collections;
using System.Collections.Generic;

/// <summary>
/// Newman Animator defines the motion for the character that the player controls.
/// </summary>
[AddComponentMenu("Character/Player Character/Newman Animator")]
public class NewmanAnimator : CharacterAnimator
{
    public float IdleChangeSpeed;

    // Mecanim State Hashes
    public static readonly int IdleState = Animator.StringToHash("Base Layer.Idle");
    public static readonly int SneakState = Animator.StringToHash("Base Layer.Ground.Locomotion.Sneaking");
    public static readonly int RunningState = Animator.StringToHash("Base Layer.Ground.Locomotion.Running");
    public static readonly int RollingState = Animator.StringToHash("Base Layer.Ground.Rolling");
    public static readonly int BackflipState = Animator.StringToHash("Base Layer.Air.Backflip");
    public static readonly int FallingState = Animator.StringToHash("Base Layer.Air.Falling");
    public static readonly int JumpingState = Animator.StringToHash("Base Layer.Air.Jumping.Jumping");
    public static readonly int FrontflipState = Animator.StringToHash("Base Layer.Air.Jumping.Frontflip");
    public static readonly int FrontflipLoopState = Animator.StringToHash("Base Layer.Air.Jumping.FrontflipLoop");
    public static readonly int LandingState = Animator.StringToHash("Base Layer.Air.Landing.Landing");
    public static readonly int LandSneakState = Animator.StringToHash("Base Layer.Air.Landing.SneakLanding");
    public static readonly int LandHighState = Animator.StringToHash("Base Layer.Air.Landing.HighLanding");
    public static readonly int LandRollState = Animator.StringToHash("Base Layer.Air.Landing.RollLanding");
    public static readonly int HangingState = Animator.StringToHash("Base Layer.Climbing.Hanging");
    public static readonly int ClimbingLedgeState = Animator.StringToHash("Base Layer.Climbing.ClimbingLedge");
    public static readonly int ClimbingLadderState = Animator.StringToHash("Base Layer.Climbing.ClimbingLadder");
    public static readonly int ClimbingRopeState = Animator.StringToHash("Base Layer.Climbing.ClimbingRope");
    //public static readonly int ClimbingStrafeState = Animator.StringToHash ("Base Layer.Climbing.ClimbingStrafe");
    public static readonly int WallgrabbingState = Animator.StringToHash("Base Layer.Climbing.Wall.Wallgrabbing");
    public static readonly int WalljumpingState = Animator.StringToHash("Base Layer.Climbing.Wall.Walljumping");
    public static readonly int SteppingDownState = Animator.StringToHash("Base Layer.Ground.Kneeling.Stepping Down");
    public static readonly int StandingUpState = Animator.StringToHash("Base Layer.Ground.Kneeling.Standing Up");
    public static readonly int PickupState = Animator.StringToHash("Base Layer.Ground.Kneeling.Pickup");
    public static readonly int StealthKillState = Animator.StringToHash("Base Layer.Combat.Stealth Kill");
    public static readonly int DamagedState = Animator.StringToHash("Base Layer.Combat.Damaged");
    public static readonly int DeathState = Animator.StringToHash("Base Layer.Combat.Death");
    public static readonly int DeadState = Animator.StringToHash("Base Layer.Combat.Waiting For Respawn");
    public static readonly int ReviveState = Animator.StringToHash("Base Layer.Combat.Revive");

    // The player's sound effects, yeah!
    private NewmanAudioPlayer _sound;
    
    // Used for backflipping
    private float _desiredSpeed;
    private float _desiredDirectionX;

    // Keep track of the number of consecutive wall jumps the player has done
    private int _wallJumpCount;
    
    // Used to keep track of a ledge we are climbing
    private Ledge _ledge;

    // Used to keep track of spark plug outlets
    public SparkPlugOutlet sparkPlugOutlet;

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
        StateMachine [SneakState] = Locomotion;
        StateMachine [RunningState] = Locomotion;
        StateMachine [RollingState] = Rolling;
        StateMachine [BackflipState] = Backflip;
        StateMachine [FallingState] = Falling;
        StateMachine [JumpingState] = Jumping;
        StateMachine [FrontflipState] = Jumping;
        StateMachine [FrontflipLoopState] = Jumping;
        StateMachine [LandingState] = Landing;
        StateMachine [LandSneakState] = Landing;
        StateMachine [LandHighState] = Landing;
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

    private void SetMecanimAnimatorHorizontalSpeedFloat()
    {
        MecanimAnimator.SetFloat(MecanimHashes.HorizontalSpeed, Direction.x * HorizontalSpeed / Settings.MaxHorizontalSpeed);
        
    }

    protected override void UpdateMecanimVariables()
    {
        if (IsGrounded) {
            _wallJumpCount = 0;
        }
        UpdateBaseAnimations();
        UpdateWeaponsAnimations();
        if (CharInput.PickupPressed && sparkPlugOutlet != null) {
            Debug.Log("Got Pressed");
            sparkPlugOutlet.TogglePlug();
        }

    }

    protected void UpdateBaseAnimations()
    {
        bool facingRightLadder = (ActiveHangTarget && ActiveHangTarget.transform.position.x - transform.position.x > 0.0f);
        bool facingLeftLadder = (ActiveHangTarget && transform.position.x - ActiveHangTarget.transform.position.x > 0.0f);
        bool startClimbLadder = CanClimbLadder && ((facingRightLadder && CharInput.Right) || (facingLeftLadder && CharInput.Left));
        MecanimAnimator.SetBool(MecanimHashes.ClimbLadder, startClimbLadder);
        
        MecanimAnimator.SetBool(MecanimHashes.ClimbRope, CanClimbRope);

        MecanimAnimator.SetBool(MecanimHashes.IsGrounded, IsGrounded);

    }

    protected void UpdateWeaponsAnimations()
    {
        // Only do things on the Weapons layer if we can
        Weapon currentWeapon = GameManager.Inventory.CurrentWeapon;
        if (currentWeapon == null || IsDead) {
            return;
        }

        // The stealthkill state is a special weapon/base-layer combat state
        if (CurrentState.fullPathHash != StealthKillState && StealthKillable != null && currentWeapon.CanStealthKill && CharInput.AttackPressed) {
            MecanimAnimator.SetBool(MecanimHashes.StealthKill, true);
            StartCoroutine(ShowStealthKill());

        }

        // Enable weapon usage when not in the stealthkill state
        if (CurrentState.fullPathHash != StealthKillState) {
            MecanimAnimator.SetBool(MecanimHashes.ShootGun, CharInput.AttackPressed && (currentWeapon.Type == Weapon.WeaponType.Weapon_GravityGun || currentWeapon.Type == Weapon.WeaponType.Weapon_VETO)); 
            MecanimAnimator.SetBool(MecanimHashes.ActivateCamo, CharInput.AttackPressed && currentWeapon.Type == Weapon.WeaponType.Weapon_Camo);
            MecanimAnimator.SetBool(MecanimHashes.PlaceMine, CharInput.AttackPressed && currentWeapon.Type == Weapon.WeaponType.Weapon_MINE);
        }

    }

    public void ActivateWeapon()
    {
        Weapon weapon = GameManager.Inventory.CurrentWeapon;
        if (weapon == null) {
            Debug.LogWarning("ActivateWeapon() called with no weapon found!");
            return;
        }

        weapon.ActivateAttack();
        GameManager.Inventory.TryRemoveAmmo(weapon.Type, 1);

    }

    // IdleState = Animator.StringToHash("Base Layer.Idle");
    protected virtual void Idle(float elapsedTime)
    {
        // Switch between crouching and standing idles based off enemies that could hear
        float idleNum = MecanimAnimator.GetFloat(MecanimHashes.IdleNum);
        float targetIdle = GameManager.AI.EnemiesCouldHear > 0 ? 1 : 0;
        idleNum = Mathf.Lerp(idleNum, targetIdle, elapsedTime * IdleChangeSpeed);
        MecanimAnimator.SetFloat(MecanimHashes.IdleNum, idleNum);

        // You can start moving left or right at any point
        ApplyMovingHorizontal(elapsedTime);
        ApplyBiDirection();

        // You stick to the ground
        VerticalSpeed = GroundVerticalSpeed;
        MecanimAnimator.SetFloat(MecanimHashes.VerticalSpeed, VerticalSpeed);

        // You could potentially fall down if the ground disappears beneath you
        MecanimAnimator.SetBool(MecanimHashes.Fall, !IsGrounded);

        // You can only pickup items while in idle
        if (CharInput.Pickup) {
            GameObject itemObj = null;
            bool canPickup = CanPickupItem(out itemObj);
            if (canPickup && itemObj != null) {
                _itemPickedup = itemObj.GetComponent<Item>();
            }
            MecanimAnimator.SetBool(MecanimHashes.Pickup, canPickup && _itemPickedup != null);
        }
        
        // You can re-grab ropes you just let go of
        bool shouldRegrabRope = CharInput.Up && PreviousHangTarget != null && PreviousHangTarget.GetComponent<Collider>().bounds.Contains(transform.position);
        if (shouldRegrabRope) {
            AddHangTarget(PreviousHangTarget);
            MecanimAnimator.SetBool(MecanimHashes.ClimbRope, true);
        }

        // You can jump
        AllowGroundJump();

    }

    // RunningState = Animator.StringToHash("Ground.Running");
    protected void Locomotion(float elapsedTime)
    {
        // You run left or right
        ApplyMovingHorizontal(elapsedTime);
        ApplyBiDirection();

        // You stick to the ground
        VerticalSpeed = GroundVerticalSpeed;
        MecanimAnimator.SetFloat(MecanimHashes.VerticalSpeed, VerticalSpeed);
        
        // You could potentially fall down by running off a ledge
        MecanimAnimator.SetBool(MecanimHashes.Fall, !IsGrounded);

        // You could start rolling over small obstacles in your way
        MecanimAnimator.SetBool(MecanimHashes.ClimbLedge, 
            ActiveHangTarget != null && ActiveHangTarget is Ledge && ((Ledge)ActiveHangTarget).Obstacle &&
            ((Direction.x > 0 && ((Ledge)ActiveHangTarget).Left) || (Direction.x < 0 && !((Ledge)ActiveHangTarget).Left)));

        // You can re-grab ropes you just let go of
        bool shouldRegrabRope = CharInput.Up && PreviousHangTarget != null && PreviousHangTarget.GetComponent<Collider>().bounds.Contains(transform.position);
        if (shouldRegrabRope) {
            AddHangTarget(PreviousHangTarget);
            MecanimAnimator.SetBool(MecanimHashes.ClimbRope, true);
        }

        // You can only do a backflip if you're running
        if (!IsSneaking && ((Direction.x > 0 && CharInput.JumpLeft) || (Direction.x < 0 && CharInput.JumpRight))) {
            MecanimAnimator.SetBool(MecanimHashes.Backflip, true);
            MecanimAnimator.SetBool(MecanimHashes.Jump, false);

            // You can do a jump
        } else { 
            AllowGroundJump();
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
        Bounds ledgeBounds = ActiveHangTarget.GetComponent<Collider>().bounds;
        float animationTime = MecanimAnimator.GetCurrentAnimatorStateInfo(0).length;

        // Horizontal motion
        float distanceToMove = Direction.x > 0 ?
            ledgeBounds.max.x - Controller.bounds.center.x :
                ledgeBounds.min.x - Controller.bounds.center.x;
        HorizontalSpeed = distanceToMove / animationTime;
        SetMecanimAnimatorHorizontalSpeedFloat();

        // Vertical motion
        float distanceToClimb = ledgeBounds.max.y - Controller.bounds.min.y;
        VerticalSpeed = distanceToClimb / animationTime;
        MecanimAnimator.SetFloat(MecanimHashes.VerticalSpeed, VerticalSpeed);

    }

    // BackflipState = Animator.StringToHash("Air.Backflip");
    protected void Backflip(float elapsedTime)
    {
        // We determine our target speed on the first frame of the action
        if (MecanimAnimator.GetBool(MecanimHashes.Backflip)) {
            MecanimAnimator.SetBool(MecanimHashes.Backflip, false);
            _desiredDirectionX = -Direction.x;
            _desiredSpeed = -HorizontalSpeed;
            VerticalSpeed = Mathf.Sqrt(2 * Settings.JumpHeight * 1.5f * Settings.Gravity);
            MecanimAnimator.SetFloat(MecanimHashes.VerticalSpeed, VerticalSpeed);
        } else {
            ApplyGravity(elapsedTime);
        }

        // Adjust horizontal speed frame by frame
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
        SetMecanimAnimatorHorizontalSpeedFloat();

        // You can grab onto objects even in the middle of a backflip
        bool shouldHang = (CanHangOffObject && ActiveHangTarget.DoesFaceXAxis() && VerticalSpeed < 0)
                          || (CanHangOffObject && ActiveHangTarget.DoesFaceZAxis() && CharInput.Up);
        MecanimAnimator.SetBool(MecanimHashes.Hang, shouldHang);

        // Make sure we don't enter the other Air states
        MecanimAnimator.SetBool(MecanimHashes.Jump, false);
        MecanimAnimator.SetBool(MecanimHashes.Fall, false);
        
    }

    // FallingState = Animator.StringToHash("Air.Falling");
    protected void Falling(float elapsedTime)
    {
        // Maintain horizontal speed by default, but allow 1/2 the normal movement for horizontal input
        if (CharInput.Right || CharInput.Left) {
            ApplyMovingHorizontal(elapsedTime * 0.5f);
        }

        // Vertical Motion
        ApplyGravity(elapsedTime);
        MecanimAnimator.SetBool(MecanimHashes.Fall, false);

        // You can grab onto the walls while falling
        MecanimAnimator.SetBool(MecanimHashes.GrabWall, CanGrabWall);

        // You can regrab the hangable object you last let go of
        if (!(ActiveHangTarget is Ledge && ((Ledge)ActiveHangTarget).Obstacle) &&
            (CanHangOffObject && ActiveHangTarget.DoesFaceXAxis() && VerticalSpeed < 0)
            || (CanHangOffObject && ActiveHangTarget.DoesFaceZAxis() && CharInput.Up)) {
            MecanimAnimator.SetBool(MecanimHashes.Hang, true);
            VerticalSpeed = 0;
            HorizontalSpeed = 0;
            SetMecanimAnimatorHorizontalSpeedFloat();
            MecanimAnimator.SetFloat(MecanimHashes.VerticalSpeed, VerticalSpeed);
        } else {
            MecanimAnimator.SetBool(MecanimHashes.Hang, false);
        }
        
    }
    
    // States on the ground from which you can jump should call this method to set up the jump
    private void AllowGroundJump()
    {
        if (!MecanimAnimator.GetBool(MecanimHashes.Jump) && IsGrounded && CharInput.JumpPressed) {
            if (CharInput.JumpLeft) {
                Direction = Vector3.left;
                float jumpSpeedRatio = -1.1f;
                if (IsSneaking) {
                    jumpSpeedRatio = -0.79f;
                }
                HorizontalSpeed = jumpSpeedRatio * Settings.MaxHorizontalSpeed;
            } else if (CharInput.JumpRight) {
                Direction = Vector3.right;
                float jumpSpeedRatio = 1.1f;
                if (IsSneaking) {
                    jumpSpeedRatio = 0.79f;
                }
                HorizontalSpeed = jumpSpeedRatio * Settings.MaxHorizontalSpeed;
            }
            SetMecanimAnimatorHorizontalSpeedFloat();
            MecanimAnimator.SetBool(MecanimHashes.Jump, true);
        }
        
    }

    // States in the air from which you can jump should call this method to set up the jump
    private void AllowAirJump()
    {
        if (CharInput.JumpPressed) {
            DropHangTarget();
            if (CharInput.JumpLeft) {
                Direction = Vector3.left;
                HorizontalSpeed = -0.79f * Settings.MaxHorizontalSpeed;
            } else if (CharInput.JumpRight) {
                Direction = Vector3.right;
                HorizontalSpeed = 0.79f * Settings.MaxHorizontalSpeed;
            }
            SetMecanimAnimatorHorizontalSpeedFloat();
            MecanimAnimator.SetBool(MecanimHashes.Jump, true);
        }

    }

    // JumpingState = Animator.StringToHash("Jumping.Jumping");
    // FrontflipState = Animator.StringToHash("Jumping.Frontflip");
    // FrontflipLoopState = Animator.StringToHash("Jumping.FrontflipLoop");
    protected void Jumping(float elapsedTime)
    {
        // We only determine vertical speed (Horizontal Speed is maintained throughout the jump)
        if (MecanimAnimator.GetBool(MecanimHashes.Jump)) {
            float jumpHeight = Settings.JumpHeight;
            if (CurrentState.fullPathHash == FrontflipState) {
                jumpHeight *= 1.5f;
            }
            VerticalSpeed = Mathf.Sqrt(2 * jumpHeight * Settings.Gravity);
            MecanimAnimator.SetFloat(MecanimHashes.VerticalSpeed, VerticalSpeed);
            MecanimAnimator.SetBool(MecanimHashes.Jump, false);
        } else {
            ApplyGravity(elapsedTime);
        }

        // You can increase horizontal speed midair ONLY if doing a sneak jump and you weren't already at max speed
        if (CurrentState.fullPathHash == JumpingState && (CharInput.Left || CharInput.Right)) {
            float prevSpeed = HorizontalSpeed;
            ApplyMovingHorizontal(elapsedTime * 0.5f);
            if (Mathf.Abs(HorizontalSpeed) < Mathf.Abs(prevSpeed)) {
                HorizontalSpeed = prevSpeed;
            } else if (Direction.x > 0 && HorizontalSpeed > 0.79f * Settings.MaxHorizontalSpeed) {
                HorizontalSpeed = 0.79f * Settings.MaxHorizontalSpeed;
            } else if (Direction.x < 0 && HorizontalSpeed < -0.79f * Settings.MaxHorizontalSpeed) {
                HorizontalSpeed = -0.79f * Settings.MaxHorizontalSpeed;
            }
            SetMecanimAnimatorHorizontalSpeedFloat();
        }

        // You can grab onto walls while jumping
        MecanimAnimator.SetBool(MecanimHashes.GrabWall, CanGrabWall);

        // You can hang off most objects while jumping
        bool shouldHang = (CanHangOffObject && ActiveHangTarget.DoesFaceXAxis() && VerticalSpeed < 0)
                          || (CanHangOffObject && ActiveHangTarget.DoesFaceZAxis() && CharInput.Up);
        MecanimAnimator.SetBool(MecanimHashes.Hang, shouldHang);

        // You can re-grab ropes you just let go of
        bool shouldRegrabRope = CharInput.Up && PreviousHangTarget != null && PreviousHangTarget.GetComponent<Collider>().bounds.Contains(transform.position);
        if (shouldRegrabRope) {
            AddHangTarget(PreviousHangTarget);
            MecanimAnimator.SetBool(MecanimHashes.ClimbRope, true);
        }

    }

    // LandingState = Animator.StringToHash("Landing.Landing");
    // LandSneakState = Animator.StringToHash("Landing.SneakLanding");
    // LandHighState = Animator.StringToHash("Landing.HighLanding");
    // LandRollState = Animator.StringToHash("Landing.Rolling");
    protected void Landing(float elapsedTime)
    {
        // We do hard stops on land unless we're rolling
        if (TimeInCurrentState == 0) {
            if (CurrentState.fullPathHash == LandHighState || (CurrentState.fullPathHash != LandRollState && !(CharInput.Left || CharInput.Right))) {
                HorizontalSpeed = 0;
            } else if (CurrentState.fullPathHash != LandRollState) {
                HorizontalSpeed *= 0.5f;
            } else {
                ApplyFriction(elapsedTime);
            }
            SetMecanimAnimatorHorizontalSpeedFloat();
        }

        // Horizontal Motion mainly wants us to slow down
        if (CurrentState.fullPathHash != LandHighState && InputMoveForward) {
            ApplyMovingHorizontal(elapsedTime * 0.5f);
        } else {
            if (CurrentState.fullPathHash == LandRollState) {
                elapsedTime *= 1.5f;
            }
            ApplyFriction(elapsedTime);
        }

        // Vertical Motion depends on whether we're on the ground
        if (!IsGrounded) {
            if (CurrentState.fullPathHash != LandRollState || CurrentState.normalizedTime > 0.99f) {
                MecanimAnimator.SetBool(MecanimHashes.Fall, true);
            } else {
                ApplyGravity(elapsedTime);
            }
        } else {
            VerticalSpeed = GroundVerticalSpeed;
            MecanimAnimator.SetFloat(MecanimHashes.VerticalSpeed, GroundVerticalSpeed);
        }
        
        // You can jump again even before you finish landing
        AllowGroundJump();

    }

    // HangingState = Animator.StringToHash("Climbing.Hanging");
    protected void Hanging(float elapsedTime)
    {
        // Make sure we actually have something to hang on
        if (ActiveHangTarget == null) {
            DropHangTarget();
            MecanimAnimator.SetBool(MecanimHashes.Fall, true);
            Debug.LogWarning("Player lost track of hang target and fell!");
            return;
        }

        // We determine all our motion on the first frame
        if (MecanimAnimator.GetBool(MecanimHashes.Hang)) {
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
            SetMecanimAnimatorHorizontalSpeedFloat();
            VerticalSpeed = 0;
            MecanimAnimator.SetFloat(MecanimHashes.VerticalSpeed, VerticalSpeed);
            MecanimAnimator.SetBool(MecanimHashes.Hang, false);
        }

        // Stay on whatever we're hanging on, even if it's moving
        ActivePlatform = ActiveHangTarget.transform;
        MecanimAnimator.SetBool(MecanimHashes.Fall, false);

        // You can press up/forward on ledges to climb up
        if (ActiveHangTarget is Ledge && (CharInput.Up || InputMoveForward)) {
            _ledge = ActiveHangTarget as Ledge;
            MecanimAnimator.SetBool(MecanimHashes.ClimbLedge, true);

            // You can jump off whatever you're hanging 
        } else if (CharInput.JumpPressed) {
            AllowAirJump();

            // You can also just let go
        } else if (CharInput.PickupPressed) {
            DropHangTarget();
            MecanimAnimator.SetBool(MecanimHashes.Fall, true);
        }

    }

    // ClimbingLedgeState = Animator.StringToHash("Climbing.ClimbingLedge");
    protected void ClimbingLedge(float elapsedTime)
    {
        // Make sure we actually have a ledge to climb up
        if (_ledge == null) {
            Debug.LogWarning("Player Character's Ledge Not Found!");
            MecanimAnimator.SetBool(MecanimHashes.Fall, true);
            return;
        }

        // The motion for climbing ledges is somewhat complicated...
        if ((Direction.x > 0 && transform.position.x > _ledge.transform.position.x + _ledge.GetComponent<Collider>().bounds.extents.x)
            || (Direction.x < 0 && transform.position.x < _ledge.transform.position.x - _ledge.GetComponent<Collider>().bounds.extents.x)
            || CurrentState.normalizedTime > 0.9) {
            MecanimAnimator.SetBool(MecanimHashes.ClimbLedge, false);
            VerticalSpeed = GroundVerticalSpeed;
        } else if (transform.position.y > _ledge.transform.position.y + _ledge.GetComponent<Collider>().bounds.extents.y + Height / 2) {
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
        SetMecanimAnimatorHorizontalSpeedFloat();
        MecanimAnimator.SetFloat(MecanimHashes.VerticalSpeed, VerticalSpeed);
        MecanimAnimator.SetBool(MecanimHashes.Fall, false);

    }

    // ClimbingLadderState = Animator.StringToHash("Climbing.ClimbingLadder");
    // ClimbingRopeState = Animator.StringToHash("Climbing.ClimbingRope");
    protected void ClimbingVertical(float elapsedTime)
    {
        // Make sure we have something to climb on
        if (ActiveHangTarget == null) {
            DropHangTarget();
            MecanimAnimator.SetBool(MecanimHashes.Fall, true);
            return;
        }
        
        // We let go when we touch the floor
        if (IsGrounded && TimeInCurrentState > 0) {
            DropHangTarget();
            return;
        }

        // Horizontal motion
        //if(VerticalSpeed != 0 && ActiveHangTarget.DoesFaceZAxis())
        //    ApplyClimbingStrafing( CharInput.Horizontal );
        //else
        HorizontalSpeed = 0;
        SetMecanimAnimatorHorizontalSpeedFloat();
        
        // Make sure we're facing the correct direction
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

        // The vertical motion is the most important when climbing
        ApplyClimbingVertical(CharInput.Vertical);
        if (VerticalSpeed == 0) {
            if (InputMoveForward) {
                VerticalSpeed = Settings.LadderClimbingSpeed;
            } else if (InputMoveBackward) {
                VerticalSpeed = -Settings.LadderClimbingSpeed;
            }
            MecanimAnimator.SetFloat(MecanimHashes.VerticalSpeed, VerticalSpeed);
            MecanimAnimator.SetBool(MecanimHashes.Fall, false);
        }
        
        // You can press up/forward on ledges to climb up
        if (ActiveHangTarget is Ledge && (CharInput.Up || InputMoveForward)) {
            _ledge = ActiveHangTarget as Ledge;
            MecanimAnimator.SetBool(MecanimHashes.ClimbLedge, true);

            // You can let go of what you're climbing with the pickup button
        } else if (CharInput.PickupPressed) {
            MecanimAnimator.SetBool(MecanimHashes.Fall, true);
            MecanimAnimator.SetBool(MecanimHashes.ClimbRope, false);
            DropHangTarget();
            return;

        }

        // You can jump off ropes and ladders
        AllowAirJump();

    }

    //ClimbingStrafeState = Animator.StringToHash ("Climbing.ClimbingStrafe");
    //  protected void ClimbingStrafe(float elapsedTime)
    //  {
    //      if(ActiveHangTarget == null) {
    //          DropHangTarget();
    //          MecanimAnimator.SetBool(MecanimHashes.Fall, true);
    //          return;
    //      }
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
    //
    //  }
    
    // WallgrabbingState = Animator.StringToHash("Wall.Wallgrabbing");
    protected void Wallgrabbing(float elapsedTime)
    {
        // We don't move horizontally
        HorizontalSpeed = 0;
        SetMecanimAnimatorHorizontalSpeedFloat();
        
        // But we do want to start moving down the wall
        if (_wallJumpCount > 0 || TimeInCurrentState > Settings.WallgrabDuration) {
            VerticalSpeed = Settings.WallSlideSpeed * elapsedTime;
        } else {
            VerticalSpeed = 0;
        }
        VerticalSpeed = 0;
        MecanimAnimator.SetFloat(MecanimHashes.VerticalSpeed, VerticalSpeed);
        
        // You can let go of the wall
        if (CharInput.PickupPressed) {
            MecanimAnimator.SetBool(MecanimHashes.Fall, true);
            MecanimAnimator.SetBool(MecanimHashes.GrabWall, false);
            DropHangTarget();

            // But the expectation is that you will jump off
        } else if (CharInput.JumpPressed) {
            MecanimAnimator.SetBool(MecanimHashes.JumpWall, true);
            MecanimAnimator.SetBool(MecanimHashes.GrabWall, false);
            DropHangTarget();
        }
        
    }
    
    // WalljumpingState = Animator.StringToHash("Wall.Walljumping");
    protected void Walljumping(float elapsedTime)
    {
        // Determine motion on the first frame
        if (MecanimAnimator.GetBool(MecanimHashes.JumpWall)) {
            Direction = -Direction;
            HorizontalSpeed = Settings.MaxHorizontalSpeed * Direction.x * 0.79f;
            SetMecanimAnimatorHorizontalSpeedFloat();
            VerticalSpeed = Mathf.Sqrt(2 * Settings.JumpHeight * Settings.Gravity);
            MecanimAnimator.SetFloat(MecanimHashes.VerticalSpeed, VerticalSpeed);
            _wallJumpCount++;
            MecanimAnimator.SetBool(MecanimHashes.JumpWall, false);
        } else {
            ApplyGravity(elapsedTime);
        }

        // You eventually start falling down
        if (transform.position.y >= LastGroundHeight - 1) {
            MecanimAnimator.SetBool(MecanimHashes.Fall, false);
        }

        // You can do consecutive wall grabs/jumps
        if (CanGrabWall) {
            MecanimAnimator.SetBool(MecanimHashes.GrabWall, true);
        }
        
        // You can grab onto ledges
        if (!(ActiveHangTarget is Ledge && ((Ledge)ActiveHangTarget).Obstacle) &&
            (CanHangOffObject && ActiveHangTarget.DoesFaceXAxis() && VerticalSpeed < 0)
            || (CanHangOffObject && ActiveHangTarget.DoesFaceZAxis() && CharInput.Up)) {
            MecanimAnimator.SetBool(MecanimHashes.Hang, true);
            VerticalSpeed = 0;
            MecanimAnimator.SetFloat(MecanimHashes.VerticalSpeed, VerticalSpeed);
            HorizontalSpeed = 0;
        } else {
            MecanimAnimator.SetBool(MecanimHashes.Hang, false);
        }
        
    }

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

        // This is a completely stationary action
        HorizontalSpeed = 0.0f;
        VerticalSpeed = 0.0f;
        SetMecanimAnimatorHorizontalSpeedFloat();
        MecanimAnimator.SetFloat(MecanimHashes.VerticalSpeed, VerticalSpeed);
        
    }

    // StandingUpState = Animator.StringToHash("Kneeling.Standing Up");
    protected void StandingUp(float elapsedTime)
    {
        MecanimAnimator.SetBool(MecanimHashes.StandingUp, false);

        // This is a completely stationary action
        HorizontalSpeed = 0.0f;
        VerticalSpeed = 0.0f;
        SetMecanimAnimatorHorizontalSpeedFloat();
        MecanimAnimator.SetFloat(MecanimHashes.VerticalSpeed, VerticalSpeed);
        
    }

    // PickupState = Animator.StringToHash("Kneeling.Pickup");
    protected void Pickup(float elapsedTime)
    {
        // Everything relevant happens on the first frame
        if (MecanimAnimator.GetBool(MecanimHashes.Pickup)) {
            MecanimAnimator.SetBool(MecanimHashes.Pickup, false);

            // Horizontal Motion
            HorizontalSpeed = 0;
            SetMecanimAnimatorHorizontalSpeedFloat();

            // Vertical Motion
            VerticalSpeed = GroundVerticalSpeed;
            MecanimAnimator.SetFloat(MecanimHashes.VerticalSpeed, VerticalSpeed);

            // Pickup a weapon
            if (_itemPickedup.WeaponPrefab != null) {

                int pickupCount = _itemPickedup.Quantity;
                Weapon pickedUpWeapon = _itemPickedup.WeaponPrefab.GetComponent<Weapon>();
                if (!GameManager.Inventory.TryAddAmmo(pickedUpWeapon, pickupCount)) {
                    // NOTE: DON'T USE THE OBJECT POOL BECAUSE IT DOESN'T REALLY HAPPEN THAT OFTEN
                    Transform instantiatedWeapon = (Transform)Instantiate(_itemPickedup.WeaponPrefab);
                    Weapon newWeapon = instantiatedWeapon.GetComponent<Weapon>();
                    newWeapon.Quantity = pickupCount;
                    GameManager.Inventory.Weapons.Add(newWeapon);
                    GameManager.UI.CycleToNextWeapon();

                }
                GameManager.UI.RefreshWeaponWheel();

                // Pickup an inventory item
            } else {
                InventoryItem newInvItem = InventoryItemFactory.CreateFromType(_itemPickedup.Type, _itemPickedup.Quantity);
                GameManager.Inventory.AddItem(newInvItem);
                GameManager.UI.CraftingMenu.RefreshItemWheel();

            }

            // Get rid of the picked up item
            Destroy(_itemPickedup.gameObject, 0.5f);

        }
    
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
    
    // StealthKillState = Animator.StringToHash("Combat.Stealth Kill");
    protected void StealthKill(float elapsedTime)
    {
        MecanimAnimator.SetBool(MecanimHashes.StealthKill, false);

        // This is a completely stationary action
        HorizontalSpeed = 0.0f;
        VerticalSpeed = 0.0f;
        SetMecanimAnimatorHorizontalSpeedFloat();
        MecanimAnimator.SetFloat(MecanimHashes.VerticalSpeed, VerticalSpeed);
        
    }

    public IEnumerator ShowStealthKill()
    {
        // Show the stealth kill
        GameManager.ObjectPool.CreatePlayerStealthKillEvent(StealthKillable.transform.position);
        GameManager.IsPlayingCutscene = true;
        GameManager.MainCamera.CinematicOverride = true;
        
        yield return new WaitForSeconds(4.0f);
        
        // Restore normal gameplay
        GameManager.Inventory.TryRemoveAmmo(GameManager.Inventory.CurrentWeapon.Type, 1);
        GameManager.MainCamera.CinematicOverride = false;
        GameManager.IsPlayingCutscene = false;
        StealthKillable = null;
        
    }

    public override void MakeDamaged(Vector3 knockForce)
    {
        MecanimAnimator.SetBool(MecanimHashes.Damaged, true);
        HorizontalSpeed = knockForce.x;
        VerticalSpeed = knockForce.y;
        SetMecanimAnimatorHorizontalSpeedFloat();
        MecanimAnimator.SetFloat(MecanimHashes.VerticalSpeed, VerticalSpeed);
        
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
            ApplyFriction(elapsedTime);
        }
        
    }
    
    // NOTE: WE DON'T NORMALLY USE THE DEATH ANIMATION STATES BELOW. INSTEAD, WE NORMALLY RAGDOLL
    public override void OnDeath(Vector3 knockForce)
    {
        base.OnDeath(knockForce);
        _sound.Play(_sound.Death, _sound.DeathVolume);
        GameManager.MainCamera.Target = Settings.RootRigidBody.transform;
        
    }

    // DeathState = Animator.StringToHash("Combat.Death");
    // DeadState = Animator.StringToHash("Combat.Waiting For Respawn");
    protected void Die(float elapsedTime)
    {
        if (IsGrounded) {
            ApplyFriction(elapsedTime);
            VerticalSpeed = GroundVerticalSpeed;
            MecanimAnimator.SetFloat(MecanimHashes.VerticalSpeed, VerticalSpeed);
            
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

    protected override void ApplyMovingHorizontal(float elapsedTime)
    {
        base.ApplyMovingHorizontal(elapsedTime);
        SetMecanimAnimatorHorizontalSpeedFloat();

    }

    protected override void ApplyFriction(float elapsedTime)
    {
        base.ApplyFriction(elapsedTime);
        SetMecanimAnimatorHorizontalSpeedFloat();

    }

    protected override void ApplyClimbingVertical(float vertical)
    {
        base.ApplyClimbingVertical(vertical);
        MecanimAnimator.SetFloat(MecanimHashes.VerticalSpeed, VerticalSpeed);

    }

    protected override void ApplyGravity(float elapsedTime)
    {
        base.ApplyGravity(elapsedTime);
        MecanimAnimator.SetFloat(MecanimHashes.VerticalSpeed, VerticalSpeed);

    }

    public void PlayRun()
    {
        int runIndex = Random.Range(0, _sound.Running.Length);
        _sound.Play(_sound.Running [runIndex], Mathf.Abs(CharInput.Horizontal));
        
    }

    public void CreateFootstep()
    {
        if (!IsSneaking) {
            int footIndex = Random.Range(0, _sound.Footsteps.Length);
            Vector3 footStepPosition = transform.position;
            footStepPosition.y -= Height * 0.5f;
            GameManager.ObjectPool.CreatePlayerFootstep(footStepPosition, _sound.Footsteps [footIndex], _sound.FootstepsVolume);
        }
        
    }

    public void PlayBackflip()
    {
        _sound.Play(_sound.Backflip, _sound.BackflipVolume);
        
    }

    public void PlayJump()
    {
        _sound.Play(_sound.Jump, _sound.JumpVolume);
        
    }

    public void PlayLand()
    {
        if (!IsSneaking) {
            Vector3 footStepPosition = transform.position;
            footStepPosition.y -= Height * 0.5f;
            GameManager.ObjectPool.CreatePlayerFootstep(footStepPosition, _sound.Landing, _sound.LandingVolume);
        }
        
    }

    public void PlayLandRoll()
    {
        Vector3 footStepPosition = transform.position;
        footStepPosition.y -= Height * 0.5f;
        GameManager.ObjectPool.CreatePlayerFootstep(footStepPosition, _sound.LandRoll, _sound.LandRollingVolume);

    }

    public void PlayWallGrab()
    {
        _sound.Play(_sound.WallGrab, _sound.WallGrabVolume);
        
    }

    public void PlayWallJump()
    {
        _sound.Play(_sound.WallJump, _sound.WallJumpVolume); 

    }

    public void PlayCrafting()
    {
        _sound.Play(_sound.Craft, _sound.CraftVolume);
        
    }

    public void PlayPickup()
    {
        _sound.Play(_sound.ItemPickup, _sound.ItemPickupVolume);

    }

    public void PlayHit()
    {
        _sound.Play(_sound.Hit, _sound.HitVolume);
        
    }

    public void PlaySparkplugCharge()
    { 
        _sound.Play(_sound.SparkplugCharge, _sound.SparkplugChargeVolume);

    }

    public void PlaySparkplugBleep()
    {
        _sound.Play(_sound.SparkplugBeep, _sound.SparkplugBeepVolume);

    }

    public void PlaySparkplugHit()
    {
        _sound.Play(_sound.SparkplugHit, _sound.SparkplugHitVolume);

    }

    public override bool CanTransitionZ {
        get { return (base.CanTransitionZ && (GameManager.AI.EnemiesChasing == 0)); }
    }

    public override bool CanInputHorizontal {
        get { return !IgnoreXYMovement && CurrentState.fullPathHash != ClimbingRopeState; }
    }

    public override bool CanInputVertical {
        get { return CanTransitionZ || CurrentState.fullPathHash == ClimbingRopeState || CurrentState.fullPathHash == ClimbingLadderState; }
    }

    public override bool CanInputJump {
        get { return StateMachine [CurrentState.fullPathHash] != Jumping && StateMachine [CurrentState.fullPathHash] != Falling; }
    }

    public override bool CanInputAttack {
        get { return GameManager.Inventory.CanWeaponStealthKill && StealthKillable != null; }
    }

    public override bool CanInputPickup {
        get {
            GameObject itemObj;
            return StateMachine [CurrentState.fullPathHash] == ClimbingVertical || CurrentState.fullPathHash == WallgrabbingState || CurrentState.fullPathHash == HangingState || CanPickupItem(out itemObj);
        }
    }

    public override bool IsOnWall {
        get { return CurrentState.fullPathHash == WallgrabbingState; }
    }

    public override bool IsHanging {
        get { return CurrentState.fullPathHash == HangingState; }
    }

    public override bool IsClimbing {
        get { return CurrentState.fullPathHash == ClimbingLadderState || CurrentState.fullPathHash == ClimbingLedgeState || CurrentState.fullPathHash == ClimbingRopeState; }
    }

    public override bool IsDead {
        get { return CurrentState.fullPathHash == DeathState || CurrentState.fullPathHash == DeadState || (Settings.RootRigidBody != null && Settings.RootRigidBody.GetComponent<Collider>().enabled); }
    }

    public CharacterAnimator StealthKillable {
        get { return _stealthKillable; }
        set { _stealthKillable = value; } 
    }

    public override EnemySaveState.EnemyType EnemyType {
        get { return EnemySaveState.EnemyType.Enemy_Olympus; }
    }

}
