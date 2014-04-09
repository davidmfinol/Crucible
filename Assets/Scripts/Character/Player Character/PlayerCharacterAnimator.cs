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
    // TODO: REPLACE THIS WITH OBJECT POOLING
    public GameObject StealthKillEvent;

    // Mecanim State Hashes
    public static readonly int IdleState = Animator.StringToHash ("Base Layer.Idle");
    public static readonly int DeathState = Animator.StringToHash ("Base Layer.Death");
    public static readonly int DeadState = Animator.StringToHash ("Base Layer.Waiting For Respawn");
    public static readonly int DamagedState = Animator.StringToHash ("Base Layer.Damaged");
    public static readonly int RunningState = Animator.StringToHash ("Ground.Running");
    public static readonly int RollingState = Animator.StringToHash ("Ground.Rolling");
    public static readonly int PickupState = Animator.StringToHash ("Ground.Pickup");
    public static readonly int StealthKillState = Animator.StringToHash ("Ground.Stealth Kill");
    public static readonly int JumpingState = Animator.StringToHash ("Air.Jumping");
    public static readonly int FallingState = Animator.StringToHash ("Air.Falling");
    public static readonly int LandingState = Animator.StringToHash ("Air.Landing");
    public static readonly int BackflipState = Animator.StringToHash ("Air.Backflip");
    public static readonly int WallgrabbingState = Animator.StringToHash ("Wall.Wallgrabbing");
    public static readonly int WalljumpingState = Animator.StringToHash ("Wall.Walljumping");
    public static readonly int HangingState = Animator.StringToHash ("Climbing.Hanging");
    public static readonly int ClimbingLedgeState = Animator.StringToHash ("Climbing.ClimbingLedge");
    public static readonly int ClimbingLadderState = Animator.StringToHash ("Climbing.ClimbingLadder");
    public static readonly int ClimbingPipeState = Animator.StringToHash ("Climbing.ClimbingPipe");
    public static readonly int SteppingDownState = Animator.StringToHash ("Ground.Stepping Down");
    public static readonly int StandingUpState = Animator.StringToHash ("Ground.Standing Up");

    //The player's sound effects, yeah!
    private PlayerCharacterAudioPlayer _sound;

    // Used to keep track of a ledge we are climbing
    private Ledge _ledge;
    
    // Used for backflipping
    private float _desiredSpeed;
    private float _desiredDirectionX;

    // Keep track of the number of consecutive wall jumps the player has done
    private int _wallJumpCount;

    // Used to pickup items only at the end of the animation
    private Item _itemPickedup;

    // Can only double-jump once
    //private bool _hasDoubleJumped;

    // Who are we close enough to stealth-kill right now?
    private CharacterAnimator _stealthKillable;

    protected override void OnStart ()
    {
        _sound = gameObject.GetComponentInChildren<PlayerCharacterAudioPlayer> ();
        _itemPickedup = null;

    }
    
    protected override void CreateStateMachine ()
    {
        StateMachine [IdleState] = Idle;
        StateMachine [DeathState] = Die;
        StateMachine [DeadState] = Die;
        StateMachine [DamagedState] = Damaged;
        StateMachine [RunningState] = Running;
        StateMachine [RollingState] = Rolling;
        StateMachine [PickupState] = Pickup;
        StateMachine [StealthKillState] = StealthKill;
        StateMachine [JumpingState] = Jumping;
        //StateMachine[Animator.StringToHash("Air.Doublejumping")] = Doublejumping;
        StateMachine [FallingState] = Falling;
        StateMachine [LandingState] = Running;
        StateMachine [BackflipState] = Backflip;
        StateMachine [WallgrabbingState] = Wallgrabbing;
        StateMachine [WalljumpingState] = Walljumping;
        StateMachine [HangingState] = Hanging;
        StateMachine [ClimbingLedgeState] = ClimbingLedge;
        StateMachine [ClimbingLadderState] = ClimbingVertical;
        //StateMachine[Animator.StringToHash("Climbing.ClimbingStrafe")] = ClimbingStrafe;
        StateMachine [ClimbingPipeState] = ClimbingVertical;
        StateMachine [SteppingDownState] = SteppingDown;
        StateMachine [StandingUpState] = StandingUp;

    }

    protected override void OnUpdate ()
    {
        // HACK: WE'RE TRYING TO PREVENT MOVING THE MESH TOO FAR AWAY FROM THE COLLIDER
        if (Root != null && CurrentState.nameHash == WallgrabbingState)
            Root.localPosition = Vector3.zero;
    }
    
    protected override void UpdateMecanimVariables ()
    {
        if (IsGrounded) {
            _wallJumpCount = 0;
            //  _hasDoubleJumped = false;
        }

        UpdateMovementAnimations ();
        UpdateAttackAnimations ();

    }
    
    protected void UpdateMovementAnimations ()
    {
        if (!MecanimAnimator.GetBool (MecanimHashes.Jump) && IsGrounded && CharInput.JumpPressed)
            MecanimAnimator.SetBool (MecanimHashes.Jump, true);

        bool facingRightLadder = (ActiveHangTarget && ActiveHangTarget.transform.position.x - transform.position.x > 0.0f);
        bool facingLeftLadder = (ActiveHangTarget && transform.position.x - ActiveHangTarget.transform.position.x > 0.0f);

        bool startClimbLadder = CanClimbLadder && ((facingRightLadder && CharInput.Right) ||
            (facingLeftLadder && CharInput.Left));
        bool startClimbPipe = CanClimbRope;

        MecanimAnimator.SetBool (MecanimHashes.ClimbLadder, startClimbLadder);

        /*
        if(startClimbLadder)
            _autoClimbDir = AutoClimbDirection.AutoClimb_Up;
        // if not in a climb, reset our auto-climb direction for use next climb.
        if(  (CurrentState.nameHash != ClimbingLadderState || CurrentState.nameHash != ClimbingPipeState) )
            _autoClimbDir = AutoClimbDirection.AutoClimb_None;
        */

        MecanimAnimator.SetBool (MecanimHashes.ClimbPipe, startClimbPipe);

        MecanimAnimator.SetBool (MecanimHashes.IsGrounded, IsGrounded);

    }

    protected void UpdateAttackAnimations ()
    {
        if (GameManager.Inventory.CurrentWeapon == null || IsDead)
            return;

        Weapon currentWeapon = GameManager.Inventory.CurrentWeapon;

        if (currentWeapon.CanStealthKill && CharInput.AttackActive && StealthKillable != null && currentWeapon.CanStealthKill)
            StartCoroutine (ShowStealthKill ());

        if (CurrentState.nameHash != StealthKillState) {
            MecanimAnimator.SetBool (MecanimHashes.ShootGun, CharInput.AttackActive && currentWeapon is GravityGun); 
            MecanimAnimator.SetBool (MecanimHashes.PlaceMine, (CharInput.AttackRightPressed || CharInput.AttackLeftPressed) && currentWeapon is Mine); 

        }

    }

    public IEnumerator ShowStealthKill ()
    {
        MecanimAnimator.SetBool (MecanimHashes.StealthKill, true);
        GenerateStealthKillEvent ();
        GameManager.MainCamera.CinematicOverride = true;
        
        Time.timeScale = 1.5f;

        yield return new WaitForSeconds (1.5f);

        Time.timeScale = 0.5f;

        yield return new WaitForSeconds (1.0f);

        Time.timeScale = 1.5f;

        yield return new WaitForSeconds (1.0f);
        
        Time.timeScale = 0.1f;
        
        yield return new WaitForSeconds (0.5f);
        
        Time.timeScale = 1.0f;

        GameManager.MainCamera.CinematicOverride = false;
        StealthKillable = null;

    }

    void GenerateStealthKillEvent ()
    {
        // find where to place the attack event
        Vector3 killPos = transform.position;
        killPos.x += (Direction.x * Settings.StealthKillRange);
        
        // place so enemy can die appropriately
        // TODO: OBJECT POOLING
        GameObject o = (GameObject)Instantiate (StealthKillEvent, killPos, Quaternion.identity);
        HitBox d = o.GetComponent<HitBox> ();
        d.MakePlayerStealthKill (this.gameObject);

    }

    void PlaceMine ()
    {
        if (GameManager.Inventory.CurrentWeapon == null) {
            Debug.LogWarning ("PlaceMine() called with no weapon found");
            return;
        }
        
        Weapon weapon = GameManager.Inventory.CurrentWeapon;
        // run out of mines? remove.
        if (weapon != null && weapon is Mine) {
            if (weapon.Quantity > 0) {
                weapon.ActivateAttack (0);
                weapon.Quantity -= 1;
                GameManager.UI.RefreshWeaponWheel ();

            }



//          // don't remove the mine from your list.
//          if(weapon.Quantity == 1) {
//              // remove it.
//              GameManager.Inventory.RemoveWeapon(weapon.WeaponType);
//              GameManager.Inventory.CurrentWeapon = null;
//              GameManager.UI.CycleToNextWeapon();
//
//
//          }
        
        } else {
            Debug.LogWarning ("PlaceMine() called with: " + weapon);

        }


    }

    void DetonateMine ()
    {
        MecanimAnimator.SetBool (MecanimHashes.DetonateMine, false);

        // detonate all mines in the scene
        Weapon weapon = GameManager.Inventory.CurrentWeapon;
        if (weapon != null && weapon is Mine) {
            Mine m = weapon.GetComponent<Mine> ();
            m.DetonateMines ();
        
        }


    }

    void ShootGun ()
    {
        if (GameManager.Inventory.CurrentWeapon == null) {
            Debug.LogWarning ("ShootGun() called with no weapon found");
            return;
        }
        
        Weapon weapon = GameManager.Inventory.CurrentWeapon;
        if (weapon != null && weapon is GravityGun) {
            weapon.ActivateAttack ();
            GameManager.Inventory.TryRemoveAmmo (Weapon.WeaponType.Weapon_GravityGun, 1);
            GameManager.UI.RefreshWeaponWheel ();

        } else
            Debug.LogWarning ("ShootGun() called with: " + weapon);

    }
    
    public override void OnDeath (Vector2 knockForce)
    {
        MecanimAnimator.SetBool (MecanimHashes.Die, true);
        HorizontalSpeed = knockForce.x;
        VerticalSpeed = knockForce.y;

    }

    public override void MakeDamaged (Vector2 knockForce)
    {
        MecanimAnimator.SetBool (MecanimHashes.Damaged, true);
        HorizontalSpeed = knockForce.x;
        VerticalSpeed = knockForce.y;

    }

    protected void Damaged (float elapsedTime)
    {
        if (MecanimAnimator.GetBool (MecanimHashes.Damaged)) {
            MecanimAnimator.SetBool (MecanimHashes.Damaged, false);
            GameManager.UI.EnableInput ();
            GameManager.UI.CraftingMenu.Close ();
            GameManager.UI.ShowMap (false);

        }

        ApplyGravity (elapsedTime);

        if (IsGrounded) {
            ApplyDeathFriction (elapsedTime);
        }

    }
    
    protected void StealthKill (float elapsedTime)
    {
        if (MecanimAnimator.GetBool (MecanimHashes.StealthKill))
            MecanimAnimator.SetBool (MecanimHashes.StealthKill, false);


        HorizontalSpeed = 0.0f;
        VerticalSpeed = 0.0f;

    }
                                             
    protected void Die (float elapsedTime)
    {
        if (IsGrounded) {
            ApplyDeathFriction (elapsedTime);
            VerticalSpeed = GroundVerticalSpeed;

        } else
            ApplyGravity (elapsedTime);

        MecanimAnimator.SetBool (MecanimHashes.Jump, false);
        MecanimAnimator.SetBool (MecanimHashes.Fall, false);
        MecanimAnimator.SetBool (MecanimHashes.Die, false);

    }
    
    protected virtual void Idle (float elapsedTime)
    {
        //TODO: SET up different idles by modifying this variable
        MecanimAnimator.SetFloat (MecanimHashes.RandomIdle, 0);
        
        ApplyRunning (elapsedTime);
        VerticalSpeed = GroundVerticalSpeed;
        ApplyBiDirection ();
        
        MecanimAnimator.SetBool (MecanimHashes.Fall, !MecanimAnimator.GetBool (MecanimHashes.Fall) && !IsGrounded);

        MecanimAnimator.SetBool (MecanimHashes.Respawn, false);

        if (CharInput.Pickup) {
            GameObject itemObj = null;
            bool canPickup = CanPickupItem (out itemObj);
            if (canPickup && itemObj != null) {
                _itemPickedup = itemObj.GetComponent<Item> ();

            }

            MecanimAnimator.SetBool (MecanimHashes.Pickup, canPickup && _itemPickedup != null);
        
        } else if (CharInput.InteractionPressed) {
            MecanimAnimator.SetBool (MecanimHashes.DetonateMine, true);

        }

    }

    public override void StepDown ()
    {
        MecanimAnimator.SetFloat (MecanimHashes.XDirection, Direction.x);
        MecanimAnimator.SetBool (MecanimHashes.SteppingDown, true);

    }

    public override void StandUp ()
    {
        MecanimAnimator.SetBool (MecanimHashes.StandingUp, true);
                
    }

    protected void SteppingDown (float elapsedTime)
    {
        MecanimAnimator.SetBool (MecanimHashes.SteppingDown, false);

        // can't use friction because you can slide off a ledge right into the crafting animation
        HorizontalSpeed = 0;
        VerticalSpeed = 0;

    }

    protected void StandingUp (float elapsedTime)
    {
        MecanimAnimator.SetBool (MecanimHashes.StandingUp, false);

        HorizontalSpeed = 0;
        VerticalSpeed = 0;

    }

    protected void Running (float elapsedTime)
    {
        ApplyRunning (elapsedTime);
        VerticalSpeed = GroundVerticalSpeed;
        ApplyBiDirection ();

        MecanimAnimator.SetBool (MecanimHashes.Fall, !MecanimAnimator.GetBool (MecanimHashes.Fall) && !IsGrounded);

        MecanimAnimator.SetBool (MecanimHashes.ClimbLedge, 
                                ActiveHangTarget != null && ActiveHangTarget is Ledge && ((Ledge)ActiveHangTarget).Obstacle &&
            ((Direction.x > 0 && ((Ledge)ActiveHangTarget).Left)
            || (Direction.x < 0 && !((Ledge)ActiveHangTarget).Left)) &&
            Mathf.Abs (HorizontalSpeed / Settings.MaxHorizontalSpeed) >= 0.5);

        if ((Direction.x > 0 && CharInput.JumpLeft) || (Direction.x < 0 && CharInput.JumpRight)) {
            MecanimAnimator.SetBool (MecanimHashes.Backflip, true);
            MecanimAnimator.SetBool (MecanimHashes.Jump, false);
        } else 
            MecanimAnimator.SetBool (MecanimHashes.Backflip, false);
    
        if (CharInput.InteractionPressed)
            MecanimAnimator.SetBool (MecanimHashes.DetonateMine, true);
        
    }
         
    protected void Rolling (float elapsedTime)
    {
        if (MecanimAnimator.GetBool (MecanimHashes.ClimbLedge)) {
            MecanimAnimator.SetBool (MecanimHashes.ClimbLedge, false);
            Bounds ledgeBounds = ActiveHangTarget.collider.bounds; //TODO: ENSURE THIS IS NEVER NULL
            float distanceToClimb = ledgeBounds.max.y - Controller.bounds.min.y;
            float distanceToMove = Direction.x > 0 ?
                ledgeBounds.max.x - Controller.bounds.center.x :
                    Controller.bounds.center.x - ledgeBounds.min.x;
            float animationTime = MecanimAnimator.GetCurrentAnimatorStateInfo (0).length;

            // TODO: Confirm this value
            VerticalSpeed = distanceToClimb / animationTime * 3.0f;

            // account for left/right
            HorizontalSpeed = Direction.x * (distanceToMove / animationTime);
        }

    }
    
    protected void Jumping (float elapsedTime)
    {
        if (CharInput.Right || CharInput.Left)
            ApplyRunning (elapsedTime * 0.5f);
        
        if (MecanimAnimator.GetBool (MecanimHashes.Jump)) {
            if (CharInput.JumpLeft || CharInput.JumpLeftReleased) {
                Direction = Vector3.left;
                HorizontalSpeed = -1.0f * Settings.MaxHorizontalSpeed;
            } else if (CharInput.JumpRight || CharInput.JumpRightReleased) {
                Direction = Vector3.right;
                HorizontalSpeed = 1.0f * Settings.MaxHorizontalSpeed;
            }

            VerticalSpeed = Mathf.Sqrt (2 * Settings.JumpHeight * Settings.Gravity);
            MecanimAnimator.SetBool (MecanimHashes.Jump, false);
        } else
            ApplyGravity (elapsedTime);
        
        //ApplyBiDirection();
        
        if (transform.position.y >= LastGroundHeight - 1)
            MecanimAnimator.SetBool (MecanimHashes.Fall, false);
        
        MecanimAnimator.SetBool (MecanimHashes.GrabWall, CanGrabWall);
        
        MecanimAnimator.SetBool (MecanimHashes.Hang, 
            (CanHangOffObject && ActiveHangTarget.DoesFaceXAxis () && VerticalSpeed < 0) 
            || (CanHangOffObject && ActiveHangTarget.DoesFaceZAxis () && CharInput.Up));

//        if(CharInput.JumpPressed)
//            MecanimAnimator.SetBool(MecanimHashes.DoubleJump, true);

        if (CharInput.InteractionPressed)
            MecanimAnimator.SetBool (MecanimHashes.DetonateMine, true);

    }

//    protected void Doublejumping(float elapsedTime)
//    {
//        if(CharInput.Left || CharInput.Right)
//            ApplyRunning(elapsedTime/2.0f);
//        
//        if(MecanimAnimator.GetBool(MecanimHashes.DoubleJump))
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
//            MecanimAnimator.SetBool(MecanimHashes.DoubleJump, false);
//        }
//        else
//            ApplyGravity(elapsedTime);
//        
//        //ApplyBiDirection();
//        
//        if(transform.position.y >= LastGroundHeight - 1)
//            MecanimAnimator.SetBool(MecanimHashes.Fall, false);
//        
//        MecanimAnimator.SetBool(MecanimHashes.GrabWall, CanGrabWall);
//        
//        MecanimAnimator.SetBool(MecanimHashes.Hang, 
//                                (CanHangOffObject && ActiveHangTarget.DoesFaceXAxis() && VerticalSpeed < 0) 
//                                || (CanHangOffObject && ActiveHangTarget.DoesFaceZAxis() && CharInput.Up));
//    }
    
    protected void Backflip (float elapsedTime)
    {
        if (MecanimAnimator.GetBool (MecanimHashes.Backflip)) {
            MecanimAnimator.SetBool (MecanimHashes.Backflip, false);
            _desiredDirectionX = -Direction.x;
            _desiredSpeed = -HorizontalSpeed;
            VerticalSpeed = Mathf.Sqrt (2 * Settings.JumpHeight * Settings.Gravity);
        } else
            ApplyGravity (elapsedTime);
        
        
        float accelerationSmoothing = Settings.HorizontalAcceleration * elapsedTime;
        if (TimeInCurrentState > 0.15f) {
            Vector3 newDir = new Vector3 (Mathf.Lerp (Direction.x, _desiredDirectionX, accelerationSmoothing), 0, 0);
            if (newDir.x * Direction.x < 0)
                HorizontalSpeed = -HorizontalSpeed;
            Direction = newDir;
        }
        
        accelerationSmoothing = Settings.HorizontalAcceleration * elapsedTime;
        HorizontalSpeed = Mathf.Lerp (HorizontalSpeed, _desiredSpeed, accelerationSmoothing);

        MecanimAnimator.SetBool (MecanimHashes.Hang, 
                                (CanHangOffObject && ActiveHangTarget.DoesFaceXAxis () && VerticalSpeed < 0) 
            || (CanHangOffObject && ActiveHangTarget.DoesFaceZAxis () && CharInput.Up));
        
        MecanimAnimator.SetBool (MecanimHashes.Jump, false);
        MecanimAnimator.SetBool (MecanimHashes.Fall, false);

    }
    
    protected void Falling (float elapsedTime)
    {
        if (CharInput.Right || CharInput.Left) // maintain horizontal momentum, but slow down if does input
            ApplyRunning (elapsedTime * 0.5f);
        ApplyGravity (elapsedTime);
        
        MecanimAnimator.SetBool (MecanimHashes.Fall, false);
        
        MecanimAnimator.SetBool (MecanimHashes.GrabWall, CanGrabWall);
        
        if (!(ActiveHangTarget is Ledge && ((Ledge)ActiveHangTarget).Obstacle) &&
            (CanHangOffObject && ActiveHangTarget.DoesFaceXAxis () && VerticalSpeed < 0) 
            || (CanHangOffObject && ActiveHangTarget.DoesFaceZAxis () && CharInput.Up)) {
            MecanimAnimator.SetBool (MecanimHashes.Hang, true);
            VerticalSpeed = 0;
            HorizontalSpeed = 0;
        } else 
            MecanimAnimator.SetBool (MecanimHashes.Hang, false);

        //if(CharInput.JumpPressed && !_hasDoubleJumped)
        //    MecanimAnimator.SetBool(MecanimHashes.DoubleJump, true);

    }

    protected void Wallgrabbing (float elapsedTime)
    {
        HorizontalSpeed = 0;
        VerticalSpeed = 0;

        /*
        if (_wallJumpCount > 0)
            VerticalSpeed = 0; // Settings.WallSlideSpeed * elapsedTime; // TODO: MAKE THIS LINEAR BASED OFF WALLJUMPCOUNT?
        else
            VerticalSpeed = 0;
            */
        
        if (CharInput.PickupPressed || IsGrounded || (ActiveHangTarget == null)) {
            MecanimAnimator.SetBool (MecanimHashes.Fall, true);
            MecanimAnimator.SetBool (MecanimHashes.GrabWall, false);
            DropHangTarget ();
        } else if (CharInput.InteractionPressed || (CharInput.JumpPressed && (InputJumpBackward || CharInput.JumpUp))) {
            MecanimAnimator.SetBool (MecanimHashes.JumpWall, true);
            MecanimAnimator.SetBool (MecanimHashes.GrabWall, false);
            DropHangTarget ();
        }
    }

    protected void Walljumping (float elapsedTime)
    {
        if (MecanimAnimator.GetBool (MecanimHashes.JumpWall)) {
            Direction = -Direction;
            VerticalSpeed = Mathf.Sqrt (2 * Settings.JumpHeight * Settings.Gravity);
            _wallJumpCount++;
            MecanimAnimator.SetBool (MecanimHashes.JumpWall, false);
        } else
            ApplyGravity (elapsedTime);
        
        HorizontalSpeed = Settings.MaxHorizontalSpeed * Direction.x;
        
        if (transform.position.y >= LastGroundHeight - 1)
            MecanimAnimator.SetBool (MecanimHashes.Fall, false);

        if (CanGrabWall) {
            MecanimAnimator.SetBool (MecanimHashes.GrabWall, true);
        }
        
        
        if (!(ActiveHangTarget is Ledge && ((Ledge)ActiveHangTarget).Obstacle) &&
            (CanHangOffObject && ActiveHangTarget.DoesFaceXAxis () && VerticalSpeed < 0) 
            || (CanHangOffObject && ActiveHangTarget.DoesFaceZAxis () && CharInput.Up)) {
            MecanimAnimator.SetBool (MecanimHashes.Hang, true);
            VerticalSpeed = 0;
            HorizontalSpeed = 0;
        } else 
            MecanimAnimator.SetBool (MecanimHashes.Hang, false);
    }
    
    protected void Hanging (float elapsedTime)
    {
        VerticalSpeed = 0;
        if (MecanimAnimator.GetBool (MecanimHashes.Hang)) {
            
            if (ActiveHangTarget == null) {
                MecanimAnimator.SetBool (MecanimHashes.Fall, true);
                return;
            }
            
            if (ActiveHangTarget.DoesFaceZAxis ()) {
                HorizontalSpeed = 0.0f;
                Direction = Vector3.zero;
            } else {
                HorizontalSpeed = Direction.x * Settings.LedgeClimbingSpeed;
                if (IsHangTargetToRight)
                    Direction = Vector3.right;
                else
                    Direction = Vector3.left;
            }
            
            MecanimAnimator.SetBool (MecanimHashes.Hang, false);
        }
        
        if (ActiveHangTarget != null)
            ActivePlatform = ActiveHangTarget.transform;

        MecanimAnimator.SetBool (MecanimHashes.Fall, false);
        
        if (ActiveHangTarget == null) {
            DropHangTarget ();
            MecanimAnimator.SetBool (MecanimHashes.Fall, true);
        } else if (ActiveHangTarget is Ledge && (CharInput.Up || InputMoveForward)) {
            _ledge = ActiveHangTarget as Ledge;
            MecanimAnimator.SetBool (MecanimHashes.ClimbLedge, true);
        } else if (CharInput.JumpPressed) {
            DropHangTarget ();
            MecanimAnimator.SetBool (MecanimHashes.Jump, true);
        } else if (CharInput.Down) {
            DropHangTarget ();
            MecanimAnimator.SetBool (MecanimHashes.Fall, true);
        }

    }
    
    protected void ClimbingLedge (float elapsedTime)
    {
        if (_ledge == null) {
            Debug.LogWarning ("Player Character's Ledge Not Found!");
            MecanimAnimator.SetBool (MecanimHashes.Fall, true);
            return;
        }

        MecanimAnimator.SetBool (MecanimHashes.Fall, false);

        if ((Direction.x > 0 && transform.position.x > _ledge.transform.position.x + _ledge.collider.bounds.extents.x)
            || (Direction.x < 0 && transform.position.x < _ledge.transform.position.x - _ledge.collider.bounds.extents.x)
            || CurrentState.normalizedTime > 0.9) {
            MecanimAnimator.SetBool (MecanimHashes.ClimbLedge, false);
            VerticalSpeed = GroundVerticalSpeed;
        } else if (transform.position.y > _ledge.transform.position.y + _ledge.collider.bounds.extents.y + Height / 2)
            VerticalSpeed = 0;
        else {
            if (_ledge.DoesFaceZAxis ()) {
                HorizontalSpeed = 0.0f;
                VerticalSpeed = Settings.LedgeClimbingSpeed;
            } else if (_ledge.DoesFaceXAxis ()) {
                HorizontalSpeed = Direction.x * Settings.LedgeClimbingSpeed;
                VerticalSpeed = Settings.LedgeClimbingSpeed;
            }
        }

    }
    
    protected void ClimbingVertical (float elapsedTime)
    {
        if (ActiveHangTarget == null) {
            DropHangTarget ();
            MecanimAnimator.SetBool (MecanimHashes.Fall, true);
            return;
        }
        
        //if(VerticalSpeed != 0 && ActiveHangTarget.DoesFaceZAxis())
        //    ApplyClimbingStrafing( CharInput.Horizontal );
        //else
        HorizontalSpeed = 0;
        
        float vertical = CharInput.Vertical;
        
        ApplyClimbingVertical (vertical);
        
        if (ActiveHangTarget.DoesFaceZAxis ())
            Direction = Vector3.zero;
        else {
            bool ladderToRight = ActiveHangTarget.transform.position.x - transform.position.x > 0.0f;
            if (ladderToRight)
                Direction = Vector3.right;
            else
                Direction = Vector3.left;
        }
        
        MecanimAnimator.SetFloat (MecanimHashes.HorizontalSpeed, HorizontalSpeed);
        MecanimAnimator.SetFloat (MecanimHashes.VerticalSpeed, VerticalSpeed);

        if (CharInput.InteractionPressed) {
            MecanimAnimator.SetBool (MecanimHashes.Fall, true);
            DropHangTarget ();
            return;
        } else
            MecanimAnimator.SetBool (MecanimHashes.Fall, false);

        if (CharInput.JumpActive) {
            MecanimAnimator.SetBool (MecanimHashes.Jump, true);
            DropHangTarget ();
        } 

    }
    
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
//      MecanimAnimator.SetFloat(MecanimHashes.HorizontalSpeed, HorizontalSpeed);
//      MecanimAnimator.SetFloat(MecanimHashes.VerticalSpeed, VerticalSpeed);
//      MecanimAnimator.SetBool(MecanimHashes.Jump, CharInput.JumpPressed);
//      //MecanimAnimator.SetBool(MecanimHashes.ClimbLadder, CanClimbP);
//  }

    protected void Pickup (float elapsedTime)
    {
        if (MecanimAnimator.GetBool (MecanimHashes.Pickup)) {
            MecanimAnimator.SetBool (MecanimHashes.Pickup, false);

            // remove hte item from the minimap
            GameManager.UI.Map.RemoveMapPoint (_itemPickedup.transform.position.x.ToString ());

            // *** picking up weapon? ***
            if (_itemPickedup.WeaponPrefab != null) {
                int pickupCount = _itemPickedup.Quantity;
                Weapon pickedUpWeapon = _itemPickedup.WeaponPrefab.GetComponent<Weapon> ();

                // try add to an existing weapon
                if (! GameManager.Inventory.TryAddAmmo (pickedUpWeapon, pickupCount)) {
                    // Create a new weapon from the item and destroy the item
                    Transform instantiatedWeapon = (Transform)Instantiate (_itemPickedup.WeaponPrefab);
                    Weapon newWeapon = instantiatedWeapon.GetComponent<Weapon> ();
                    Debug.Log ("Added new weapon qty " + pickupCount);
                    newWeapon.Quantity = pickupCount;
                    GameManager.Inventory.Weapons.Add (newWeapon);

                    // Move the weapon offscreen
                    instantiatedWeapon.position = GameManager.Level.OffscreenPosition;

                }

                GameManager.UI.RefreshWeaponWheel ();

                // *** auto-equip if we have nothing ***
                if (GameManager.Inventory.CurrentWeapon == null)
                    StartCoroutine (AutoEquip ());

            }
            // *** must be picking up item... ***
            else {
                // generate a new inventory item and add it.
                InventoryItem newInvItem = InventoryItemFactory.CreateFromType (_itemPickedup.Type, _itemPickedup.Quantity);
                GameManager.Inventory.AddItem (newInvItem);

                GameManager.UI.CraftingMenu.RefreshItemWheel ();

            }

            Destroy (_itemPickedup.gameObject, 0.5f);

        }

        HorizontalSpeed = 0;
        VerticalSpeed = GroundVerticalSpeed;
    
    }

    public IEnumerator AutoEquip ()
    {
        yield return new WaitForSeconds (0.5f);
        if (GameManager.Inventory.Weapons.Count == 1)
            GameManager.UI.CycleToNextWeapon ();
        else if (GameManager.Inventory.Weapons.Count <= 3)
            GameManager.UI.RefreshWeaponWheel ();

    }
        
    protected override void ApplyRunning (float elapsedTime)
    {
        base.ApplyRunning (elapsedTime);
        MecanimAnimator.SetFloat (MecanimHashes.HorizontalSpeed, Direction.x * HorizontalSpeed / Settings.MaxHorizontalSpeed);

    }

    public void PlayHit ()
    {
        _sound.Play (_sound.Hit, 1.0f);

    }

    public void PlayPickup ()
    {
        _sound.Play (_sound.ItemPickup, 1.0f);

    }

    public void PlayCrafting ()
    {
        _sound.Play (_sound.Craft, 1.0f);

    }

    public void PlayBackflip ()
    {
        _sound.Play (_sound.Flip, 1.0f);

    }

    public void PlayJump ()
    {
        //TODO: Move this wallkick sound to new wall kick animation and event
        if (CurrentState.nameHash == WalljumpingState)
            _sound.Play (_sound.WallKick, 0.6f);
        else
            _sound.Play (_sound.Jump, 0.6f);

    }

    public void PlayWallHit ()
    {
        _sound.Play (_sound.WallHit, 1.0f);

    }

    public void PlayRun ()
    {
        int runIndex = Random.Range (0, _sound.Running.Length);
        _sound.Play (_sound.Running [runIndex], Mathf.Abs(CharInput.Horizontal));

    }

    public override void PlayLand () //where dreams come true
    {
        //FIXME: Volumes of jumping up to a higher area are weird, as well as jumping off walls
        float fallDistance = LastGroundHeight - transform.position.y;
        if (fallDistance < 0)
            fallDistance = 5;
        //TODO: Actually make different sounds for different heights
//      AudioClip landing;
//      if(fallDistance <= 2)
//          landing = _sound.SoftLanding;
//      if(fallDistance > 2 && fallDistance <= 15)
//          landing = _sound.MediumLanding;
//      if(fallDistance > 15)
//          landing = _sound.LoudLanding;

        float fallVolume = fallDistance / 32f + 0.1f; //max volume if height is > 21
        if (fallVolume > 1)
            fallVolume = 1;
        //Debug.Log ("Fall Volume" + fallVolume);
        _sound.Play (_sound.Landing, fallVolume);

    }

    public void PlayAttack ()
    {
        _sound.Play (_sound.Attack, 1.0f);

    }

    public bool CanPickupItem (out GameObject obj)
    {
        RaycastHit hit;
        float radius = Radius * 4.0f;
        Vector3 topRight = transform.position + new Vector3 (Direction.x * Radius * 2.0f, Height * 0.5f + radius, 0);
        if (Physics.SphereCast (topRight, radius, Vector3.down, out hit, Height + radius, 1 << 13)) {
            obj = hit.collider.gameObject;
            return true;
        }
        obj = null;
        return false;

    }
    
    public override bool IsDead {
        get { return CurrentState.nameHash == DeathState || CurrentState.nameHash == DeadState; }
    }

    public override EnemySaveState.EnemyType EnemyType {
        get { return EnemySaveState.EnemyType.Enemy_Olympus; }
    }

    public CharacterAnimator StealthKillable {
        get { return _stealthKillable; }
        set { _stealthKillable = value; } 
    }

}
