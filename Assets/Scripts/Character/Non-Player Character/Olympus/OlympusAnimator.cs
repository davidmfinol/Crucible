using UnityEngine;
using System.Collections;
using System.Collections.Generic;

/// <summary>
/// Olympus animator animates/moves the Olympus enemy type.
/// </summary>
[AddComponentMenu("Character/Non-Player Character/Olympus/Olympus Animator")]
public class OlympusAnimator : CharacterAnimator
{
    // Olympus has screens in front that we need to fade in/out based off idle state
    public Animation IdleScreenAnimation;
    public Fader[] IdleScreens;

    // Mecanim State Hashes
    public static readonly int IdleState = Animator.StringToHash("Base Layer.Idle");
    public static readonly int TurnAroundState = Animator.StringToHash("Base Layer.Turn Around");
    public static readonly int AcquireTargetState = Animator.StringToHash("Base Layer.Acquiring Target");
    public static readonly int RunningState = Animator.StringToHash("Ground.Running");
    public static readonly int SearchingState = Animator.StringToHash("Ground.Searching");
    public static readonly int JumpingState = Animator.StringToHash("Air.Jumping");
    public static readonly int FallingState = Animator.StringToHash("Air.Falling");
    public static readonly int LandingState = Animator.StringToHash("Air.Landing");
    public static readonly int GrabWallState = Animator.StringToHash("Wall.Grab Wall");
    public static readonly int WallclimbingState = Animator.StringToHash("Wall.Climbing");
    public static readonly int HangingState = Animator.StringToHash("Climbing.Hanging");
    public static readonly int ClimbingLedgeState = Animator.StringToHash("Climbing.ClimbingLedge");
    public static readonly int ClimbingLadderState = Animator.StringToHash("Climbing.ClimbingLadder");
    public static readonly int ClimbingRopeState = Animator.StringToHash("Climbing.ClimbingRope");
    public static readonly int StealthDeathState = Animator.StringToHash("Base Layer.Stealth Death");
    
    // Used to keep track of a ledge we are climbing
    private Ledge _ledge;

    //The Olympus's sound effects, yeah!
    private OlympusAudioPlayer _sound;

    // Olympus drops items on death
    private ItemDropper _itemDropper;

    protected override void OnStart()
    {
        _sound = gameObject.GetComponentInChildren<OlympusAudioPlayer>();

        _itemDropper = (ItemDropper)gameObject.GetComponentInChildren<ItemDropper>();

    }
    
    protected override void CreateStateMachine()
    {
        StateMachine [IdleState] = Idle;
        StateMachine [TurnAroundState] = TurnAround;
        StateMachine [AcquireTargetState] = AcquireTarget;
        StateMachine [RunningState] = Running;
        StateMachine [SearchingState] = Searching;
        StateMachine [JumpingState] = Jumping;
        StateMachine [FallingState] = Falling;
        StateMachine [LandingState] = Landing;
        StateMachine [GrabWallState] = GrabWall;
        StateMachine [WallclimbingState] = ClimbingVertical;
        StateMachine [HangingState] = Hanging;
        StateMachine [ClimbingLedgeState] = ClimbingLedge;
        StateMachine [ClimbingLadderState] = ClimbingVertical;
        StateMachine [ClimbingRopeState] = ClimbingVertical;
        StateMachine [StealthDeathState] = StealthDeath;

    }
    
    protected override void UpdateMecanimVariables()
    {
        if (IgnoreXYMovement) {
            return;
        }

        if (!MecanimAnimator.GetBool(MecanimHashes.Jump) && IsGrounded && CharInput.JumpPressed) {
            MecanimAnimator.SetBool(MecanimHashes.Jump, true);
        }
        
        bool facingRightLadder = (ActiveHangTarget && ActiveHangTarget.transform.position.x - transform.position.x > 0.0f);
        bool facingLeftLadder = (ActiveHangTarget && transform.position.x - ActiveHangTarget.transform.position.x > 0.0f);
        
        bool startClimbLadder = CanClimbLadder && ((facingRightLadder && CharInput.Right) ||
            (facingLeftLadder && CharInput.Left));
        
        MecanimAnimator.SetBool(MecanimHashes.ClimbLadder, startClimbLadder);
        
        /*
        if(startClimbLadder)
            _autoClimbDir = AutoClimbDirection.AutoClimb_Up;
        // if not in a climb, reset our auto-climb direction for use next climb.
        if(  (CurrentState.fullPathHash != ClimbingLadderState || CurrentState.fullPathHash != ClimbingPipeState) )
            _autoClimbDir = AutoClimbDirection.AutoClimb_None;
        */
        
        MecanimAnimator.SetBool(MecanimHashes.ClimbRope, CanClimbRope);
        
        MecanimAnimator.SetBool(MecanimHashes.IsGrounded, IsGrounded);
        
        MecanimAnimator.SetBool(MecanimHashes.AttackHorizontal, CharInput.Attack > 0);
        MecanimAnimator.SetBool(MecanimHashes.AttackVertical, CharInput.Attack < 0);

        if (!IsGrounded) {
            MecanimAnimator.SetBool(MecanimHashes.AcquiringTarget, false);
        }

        // Give Olympus some perfectly hard stops on land
        if (IsLanding) {
            HorizontalSpeed = 0;
        }

        // Knowing direction is useful for the turnaround animation
        MecanimAnimator.SetFloat(MecanimHashes.XDirection, Direction.x);

        // Olympus needs to turn off the screens when moving
        // TODO: THINK OF A MORE EFFICIENT WAY INSTEAD OF DOING THIS EVERY FRAME
        if (CharInput.Left || CharInput.Right) {
            foreach (Fader screen in IdleScreens) { 
                screen.FadeOut();
            }
        }

    }
    
    protected virtual void Idle(float elapsedTime)
    {
        if (IgnoreXYMovement) {
            return;
        }
        
        // Turn on the screens when he begines to idle
        if (TimeInCurrentState == 0) {
            IdleScreenAnimation.Play("Take 001");
            foreach (Fader screen in IdleScreens) {
                screen.FadeIn();
            }
        }
        
        ApplyMovingHorizontal(elapsedTime);
        VerticalSpeed = GroundVerticalSpeed;
        ApplyBiDirection();
        
        if (!MecanimAnimator.GetBool(MecanimHashes.Fall) && !IsGrounded) {
            MecanimAnimator.SetBool(MecanimHashes.Fall, true);
        }
        
        if (CharInput.Pickup) {
            MecanimAnimator.SetBool(MecanimHashes.TurnAround, true);
        }
        
    }
    
    protected void TurnAround(float elapsedTime)
    {
        if (MecanimAnimator.GetBool(MecanimHashes.TurnAround)) {
            MecanimAnimator.SetBool(MecanimHashes.TurnAround, false);
            StartCoroutine(WaitToChangeDirection());
        }
        HorizontalSpeed = 0;
        VerticalSpeed = GroundVerticalSpeed;
        
    }
    
    public IEnumerator WaitToChangeDirection()
    {
        IgnoreDirection = true;
        
        while (CurrentState.fullPathHash == TurnAroundState) {
            yield return null;
        }
        
        Direction = -Direction;
        
        IgnoreDirection = false;
        
    }
    
    protected override void OnAnimatorMove()
    {
        if (MecanimAnimator != null && CurrentState.fullPathHash == TurnAroundState) {
            transform.rotation *= MecanimAnimator.deltaRotation;
        }
        
    }

    public void OnAcquireTarget()
    {
        if (IsGrounded) {
            MecanimAnimator.SetBool(MecanimHashes.AcquiringTarget, true);
        }

    }

    protected void AcquireTarget(float elapsedTime)
    {
        MecanimAnimator.SetBool(MecanimHashes.AcquiringTarget, false);

        HorizontalSpeed = 0.0f;
        VerticalSpeed = GroundVerticalSpeed;

    }
    
    protected void Running(float elapsedTime)
    {
        ApplyMovingHorizontal(elapsedTime);
        VerticalSpeed = GroundVerticalSpeed;
        ApplyBiDirection();
        
        if (!MecanimAnimator.GetBool(MecanimHashes.Fall) && !IsGrounded) {
            MecanimAnimator.SetBool(MecanimHashes.Fall, true);
        }

    }
    
    public void StartSearch()
    {
        if (IsGrounded) {
            MecanimAnimator.SetBool(MecanimHashes.Search, true);
        }
        
    }
    
    protected void Searching(float elapsedTime)
    {
        if (MecanimAnimator.GetBool(MecanimHashes.Search)) {
            HorizontalSpeed = 0;
            VerticalSpeed = GroundVerticalSpeed;
            MecanimAnimator.SetBool(MecanimHashes.Search, false);
        }
        
        if (!MecanimAnimator.GetBool(MecanimHashes.Fall) && !IsGrounded) {
            MecanimAnimator.SetBool(MecanimHashes.Fall, true);
        }
        
    }
    
    protected void Jumping(float elapsedTime)
    {
        if (Mathf.Abs(CharInput.Horizontal) > 0.1) {
            ApplyMovingHorizontal(elapsedTime);
        }
        
        if (MecanimAnimator.GetBool(MecanimHashes.Jump)) {
            if (CharInput.JumpLeft || CharInput.JumpLeftReleased) {
                Direction = Vector3.left;
                HorizontalSpeed = -1.0f * Settings.MaxHorizontalSpeed;
            } else if (CharInput.JumpRight || CharInput.JumpRightReleased) {
                Direction = Vector3.right;
                HorizontalSpeed = 1.0f * Settings.MaxHorizontalSpeed;
            }
            
            VerticalSpeed = Mathf.Sqrt(2 * Settings.JumpHeight * Settings.Gravity);
            MecanimAnimator.SetBool(MecanimHashes.Jump, false);
        } else {
            ApplyGravity(elapsedTime);
        }
        
        //ApplyBiDirection();
        
        if (transform.position.y >= LastGroundHeight - 1) {
            MecanimAnimator.SetBool(MecanimHashes.Fall, false);
        }
        
        MecanimAnimator.SetBool(MecanimHashes.Hang, 
                                (CanHangOffObject && ActiveHangTarget.DoesFaceXAxis() && VerticalSpeed < 0) 
            || (CanHangOffObject && ActiveHangTarget.DoesFaceZAxis() && CharInput.Up));
        
        if (CanGrabWall && ((Direction.x > 0 && IsHangTargetToRight) || (Direction.x < 0 && !IsHangTargetToRight))) {
            MecanimAnimator.SetBool(MecanimHashes.GrabWall, true);
        }

    }
    
    protected void Falling(float elapsedTime)
    {
        if (CharInput.Right || CharInput.Left) { // maintain horizontal momentum, but slow down if does input
            ApplyMovingHorizontal(elapsedTime);
        }
        ApplyGravity(elapsedTime);
        
        MecanimAnimator.SetBool(MecanimHashes.Fall, false);
        
        if (!(ActiveHangTarget is Ledge && ((Ledge)ActiveHangTarget).Obstacle) &&
            (CanHangOffObject && ActiveHangTarget.DoesFaceXAxis() && VerticalSpeed < 0) 
            || (CanHangOffObject && ActiveHangTarget.DoesFaceZAxis() && CharInput.Up)) {
            MecanimAnimator.SetBool(MecanimHashes.Hang, true);
            VerticalSpeed = 0;
            HorizontalSpeed = 0;
        } else { 
            MecanimAnimator.SetBool(MecanimHashes.Hang, false);
        }

        if (CanGrabWall && ((Direction.x > 0 && IsHangTargetToRight) || (Direction.x < 0 && !IsHangTargetToRight))) {
            MecanimAnimator.SetBool(MecanimHashes.GrabWall, true);
        }

    }
    
    protected void Landing(float elapsedTime)
    {
        HorizontalSpeed = 0;
        VerticalSpeed = GroundVerticalSpeed;
        
    }
    
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
        } else if (CharInput.Down) {
            DropHangTarget();
            MecanimAnimator.SetBool(MecanimHashes.Fall, true);
        }

    }

    protected void ClimbingLedge(float elapsedTime)
    {
        if (_ledge == null) {
            Debug.LogWarning("Olympus's Ledge Not Found!");
            MecanimAnimator.SetBool(MecanimHashes.Fall, true);
            return;
        }
        
        MecanimAnimator.SetBool(MecanimHashes.Fall, false);
        
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

    }

    protected void GrabWall(float elapsedTime)
    {
        if (MecanimAnimator.GetBool(MecanimHashes.GrabWall)) {
            HorizontalSpeed = 0;
            VerticalSpeed = 0;
            MecanimAnimator.SetBool(MecanimHashes.GrabWall, false);
        }

    }

    protected void ClimbingVertical(float elapsedTime)
    {
        if (ActiveHangTarget == null) {
            DropHangTarget();
            MecanimAnimator.SetBool(MecanimHashes.Fall, true);
            return;
        }

        HorizontalSpeed = 0;
        
        float vertical = CharInput.Vertical;
        
        ApplyClimbingVertical(vertical);
        
        if (ActiveHangTarget.DoesFaceZAxis()) {
            Direction = Vector3.zero;
        }
        
        MecanimAnimator.SetFloat(MecanimHashes.HorizontalSpeed, HorizontalSpeed);
        MecanimAnimator.SetFloat(MecanimHashes.VerticalSpeed, VerticalSpeed);
        
        if (CharInput.InteractionPressed) {
            MecanimAnimator.SetBool(MecanimHashes.Fall, true);
            DropHangTarget();
            return;
        } else {
            MecanimAnimator.SetBool(MecanimHashes.Fall, false);
        }
        
        if (CharInput.JumpActive) {
            MecanimAnimator.SetBool(MecanimHashes.Jump, true);
            DropHangTarget();
        }
        
    }
    
    protected void StealthDeath(float elapsedTime)
    {
        if (MecanimAnimator.GetBool(MecanimHashes.StealthDeath)) {
            MecanimAnimator.SetBool(MecanimHashes.StealthDeath, false);
        }
        
    }

    public override void OnStealthDeath()
    {
        StartCoroutine(ShowStealthDeath());

    }

    public IEnumerator ShowStealthDeath()
    {
        IgnoreXYMovement = true;

        yield return new WaitForSeconds(3.0f);

        MecanimAnimator.SetBool(MecanimHashes.StealthDeath, true);
        
        yield return new WaitForSeconds(1.2f);

        bool isToRightOfPlayer = transform.position.x > GameManager.Player.transform.position.x;
        Vector3 directional = isToRightOfPlayer ? Vector3.right : Vector3.left;
        directional *= 25000;

        base.OnDeath(directional + Vector3.up * 15000);
        _itemDropper.DropItems(transform.position);

    }
    
    public override void OnDeath(Vector3 knockForce)
    {
        StartCoroutine(ShowDeath(knockForce));

    }

    public IEnumerator ShowDeath(Vector3 knockForce)
    {
        MecanimAnimator.SetBool(MecanimHashes.Die, true);
        HorizontalSpeed = knockForce.x;
        VerticalSpeed = knockForce.y;

        yield return new WaitForSeconds(2.0f);

        base.OnDeath();

        yield return new WaitForSeconds(3.0f);

        _itemDropper.DropItems(transform.position);

    }

    public override void DoRagDoll(Vector3 push)
    {
        // Olympus needs to get rid of his screens when he dies.
        IdleScreens = new Fader[0];
        Destroy(IdleScreenAnimation.gameObject);
        base.DoRagDoll(push);

    }

    protected override void ApplyMovingHorizontal(float elapsedTime)
    {
        base.ApplyMovingHorizontal(elapsedTime);
        MecanimAnimator.SetFloat(MecanimHashes.HorizontalSpeed, Direction.x * HorizontalSpeed / Settings.MaxHorizontalSpeed);

    }
    
    public void Punch()
    {
        _sound.Play(_sound.Attacking, _sound.AttackingVolume);

        // Attack in front of us
        Vector3 meleePos = transform.position;
        meleePos.x += (2.5f * Direction.x);
        GameManager.ObjectPool.CreateOlympusMelee(meleePos);
        
    }
    
    public void PunchUp()
    {
        _sound.Play(_sound.Attacking, _sound.AttackingVolume);

        // Attack above us
        Vector3 meleePos = transform.position;
        meleePos.y += Height * 0.5f;
        GameManager.ObjectPool.CreateOlympusMelee(meleePos);
        
    }
    
    public void CreateFootstep()
    {
        if (!IsSneaking) {
            int footIndex = Random.Range(0, _sound.Footsteps.Length);
            Vector3 footStepPosition = transform.position;
            footStepPosition.y -= Height * 0.5f;
            GameManager.ObjectPool.CreateRobotFootstep(footStepPosition, _sound.Footsteps [footIndex], _sound.FootstepsVolume);
        }
        
    }

    public void PlayJump()
    {
        _sound.Play(_sound.Jumping, _sound.JumpingVolume);

    }
    
    public void PlayLand() // Where dreams come true
    {
        if (!IsSneaking) {
            Vector3 footStepPosition = transform.position;
            footStepPosition.y -= Height * 0.5f;
            GameManager.ObjectPool.CreateRobotFootstep(footStepPosition, _sound.Landing, _sound.LandingVolume);
        }
        
    }

    public void PlayServo()
    {
        // TODO:

    }
    
    public override bool IsTurningAround {
        get { return CurrentState.fullPathHash == TurnAroundState; }
    }
    
    public override bool IsJumping {
        get { return CurrentState.fullPathHash == JumpingState; }
    }

    public override bool IsLanding {
        get { return CurrentState.fullPathHash == LandingState || (IsGrounded && (CurrentState.fullPathHash == JumpingState || CurrentState.fullPathHash == FallingState)); }
    }

    public override bool IsClimbing {
        get { return CurrentState.fullPathHash == ClimbingLedgeState || CurrentState.fullPathHash == ClimbingLadderState || CurrentState.fullPathHash == WallclimbingState; }
    }
    
    public override bool IsDead {
        get { return CurrentState.fullPathHash == StealthDeathState || Settings.RootRigidBody.GetComponent<Collider>().enabled; }
    }

    public override bool CanTransitionZ {
        get { return false; }
        set { }
    }

    public override EnemySaveState.EnemyType EnemyType {
        get { return EnemySaveState.EnemyType.Enemy_Olympus; }
        
    }

}
