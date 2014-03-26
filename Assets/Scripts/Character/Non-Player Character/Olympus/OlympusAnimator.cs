using UnityEngine;
using System.Collections;
using System.Collections.Generic;

/// <summary>
/// Olympus animator animates/moves the Olympus enemy type.
/// </summary>
[RequireComponent(typeof(OlympusAwareness))]
[AddComponentMenu("Character/Non-Player Character/Olympus/Olympus Animator")]
public class OlympusAnimator : CharacterAnimator
{
    // TODO: REPLACE THIS WITH SOME KIND OF POOL OF HITBOX OBJECTS
    public GameObject MeleeEvent;

    // Mecanim hashes
    private int _verticalSpeedHash;
    private int _horizontalSpeedHash;
    private int _jumpHash;
    private int _fallHash;
    private int _hangHash;
    private int _climbLadderHash;
    private int _isGroundedHash;
    private int _attackHorizontalHash;
    private int _climbLedgeHash;
    private int _climbPipeHash;
    private int _stunHash;
    private int _dieHash;
    private int _stealthDeathHash;
    private int _acquiringTargetHash;
    private int _turnAroundHash;
    private int _xDirectionHash;
	private int _grabWallHash;
	private int _attackVerticalHash;
    
    // Used to keep track of a ledge we are climbing
    private Ledge _ledge;

    //The Olympus's sound effects, yeah!
    private OlympusAudioPlayer _sound;

	private ItemDropper _itemDropper;


    protected override void OnStart ()
    {
        _sound = gameObject.GetComponentInChildren<OlympusAudioPlayer> ();

		_itemDropper = (ItemDropper) gameObject.GetComponentInChildren<ItemDropper> ();

    }
    
    protected override void CreateStateMachine ()
    {
        // First map the states
        StateMachine [Animator.StringToHash ("Base Layer.Idle")] = Idle;
        StateMachine [Animator.StringToHash ("Base Layer.Running")] = Running;
        StateMachine [Animator.StringToHash ("Base Layer.Turn Around")] = TurnAround;
        StateMachine [Animator.StringToHash ("Base Layer.Acquiring Target")] = AcquireTarget;
        StateMachine [Animator.StringToHash ("Base Layer.Stun")] = Stun;
        StateMachine [Animator.StringToHash ("Base Layer.Death")] = Death;
        StateMachine [Animator.StringToHash ("Base Layer.Stealth Death")] = StealthDeath;
        StateMachine [Animator.StringToHash ("Air.Jumping")] = Jumping;
        StateMachine [Animator.StringToHash ("Air.Falling")] = Falling;
		StateMachine [Animator.StringToHash ("Air.Landing")] = Landing;
		StateMachine [Animator.StringToHash ("Wall.Grab Wall")] = GrabWall;
		StateMachine [Animator.StringToHash ("Wall.Climbing")] = ClimbingVertical;
        StateMachine [Animator.StringToHash ("Climbing.Hanging")] = Hanging;
        StateMachine [Animator.StringToHash ("Climbing.ClimbingLedge")] = ClimbingLedge;
        StateMachine [Animator.StringToHash ("Climbing.ClimbingLadder")] = ClimbingVertical;
        StateMachine [Animator.StringToHash ("Climbing.ClimbingPipe")] = ClimbingVertical;

        // Then hash the variables
        _verticalSpeedHash = Animator.StringToHash ("VerticalSpeed");
        _horizontalSpeedHash = Animator.StringToHash ("HorizontalSpeed");
        _jumpHash = Animator.StringToHash ("Jump");
        _fallHash = Animator.StringToHash ("Fall");
        _hangHash = Animator.StringToHash ("Hang");
        _climbLadderHash = Animator.StringToHash ("ClimbLadder");
        _isGroundedHash = Animator.StringToHash ("IsGrounded");
        _attackHorizontalHash = Animator.StringToHash ("AttackHorizontal");
        _climbLedgeHash = Animator.StringToHash ("ClimbLedge");
        _climbPipeHash = Animator.StringToHash ("ClimbPipe");
        _stunHash = Animator.StringToHash ("Stun");
        _dieHash = Animator.StringToHash ("Die");
        _stealthDeathHash = Animator.StringToHash ("StealthDeath");
        _acquiringTargetHash = Animator.StringToHash ("AcquireTarget");
        _turnAroundHash = Animator.StringToHash ("TurnAround");
		_xDirectionHash = Animator.StringToHash ("XDirection");
		_grabWallHash = Animator.StringToHash ("GrabWall");
		_attackVerticalHash = Animator.StringToHash ("AttackVertical");

    }
    
    protected override void UpdateMecanimVariables ()
    {
        if (!MecanimAnimator.GetBool (_jumpHash) && IsGrounded && CharInput.JumpPressed)
            MecanimAnimator.SetBool (_jumpHash, true);
        
        bool facingRightLadder = (ActiveHangTarget && ActiveHangTarget.transform.position.x - transform.position.x > 0.0f);
        bool facingLeftLadder = (ActiveHangTarget && transform.position.x - ActiveHangTarget.transform.position.x > 0.0f);
        
        bool startClimbLadder = CanClimbLadder && ((facingRightLadder && CharInput.Right) ||
            (facingLeftLadder && CharInput.Left));
        bool startClimbPipe = CanClimbPipe;
        
        MecanimAnimator.SetBool (_climbLadderHash, startClimbLadder);
        
        /*
        if(startClimbLadder)
            _autoClimbDir = AutoClimbDirection.AutoClimb_Up;
        // if not in a climb, reset our auto-climb direction for use next climb.
        if( ! (CurrentState.IsName("Climbing.ClimbingLadder") || CurrentState.IsName("Climbing.ClimbingPipe")) )
            _autoClimbDir = AutoClimbDirection.AutoClimb_None;
        */
        
        MecanimAnimator.SetBool (_climbPipeHash, startClimbPipe);
        
        MecanimAnimator.SetBool (_isGroundedHash, IsGrounded);
        
		MecanimAnimator.SetBool (_attackHorizontalHash, CharInput.Attack > 0);
		MecanimAnimator.SetBool (_attackVerticalHash, CharInput.Attack < 0);

        if (!IsGrounded)
            MecanimAnimator.SetBool (_acquiringTargetHash, false);

        // Give Olympus some perfectly hard stops on land
        if (IsLanding)
            HorizontalSpeed = 0;

        // Knowing direction is useful for the turnaround animation
        MecanimAnimator.SetFloat (_xDirectionHash, Direction.x);

    }

    public void OnAcquireTarget ()
    {
        if (IsGrounded)
            MecanimAnimator.SetBool (_acquiringTargetHash, true);

    }

    protected void AcquireTarget (float elapsedTime)
    {
        MecanimAnimator.SetBool (_acquiringTargetHash, false);

        HorizontalSpeed = 0.0f;
        VerticalSpeed = GroundVerticalSpeed;

    }

    protected void Punch (float elapsedTime)
    {
        // find where to place the attack event
        Vector3 meleePos = transform.position;
        meleePos.x += (1.0f * Direction.x);
        
        // attack in front of us
        GameObject o = (GameObject)Instantiate (MeleeEvent, meleePos, Quaternion.identity);
        HitBox d = o.GetComponent<HitBox> ();

		// which direction to player?
		float horizontalDir = 0.0f;
		if(GameManager.Player.transform.position.x < transform.position.x)
			horizontalDir = -1.0f;
		else
			horizontalDir = 1.0f;

        d.MakeOlympusMelee (this.gameObject, horizontalDir);

	}
	
	protected void PunchUp (float elapsedTime)
	{
		// find where to place the attack event
		Vector3 meleePos = transform.position;
		meleePos.y += Height / 2.0f;
		
		// attack in front of us
		GameObject o = (GameObject)Instantiate (MeleeEvent, meleePos, Quaternion.identity);
		HitBox d = o.GetComponent<HitBox> ();
		
		// which direction to player?
		float horizontalDir = 0.0f;
		if(GameManager.Player.transform.position.x < transform.position.x)
			horizontalDir = -1.0f;
		else
			horizontalDir = 1.0f;
		
		d.MakeOlympusMelee (this.gameObject, horizontalDir);
		
	}
    
    protected virtual void Idle (float elapsedTime)
    {
        ApplyRunning (elapsedTime);
        VerticalSpeed = GroundVerticalSpeed;
        ApplyBiDirection ();
        
        if (!MecanimAnimator.GetBool (_fallHash) && !IsGrounded)
            MecanimAnimator.SetBool (_fallHash, true);

        if (CharInput.Pickup)
            MecanimAnimator.SetBool (_turnAroundHash, true);

    }
    
    protected void Running (float elapsedTime)
    {
        ApplyRunning (elapsedTime);
        VerticalSpeed = GroundVerticalSpeed;
        ApplyBiDirection ();
        
        if (!MecanimAnimator.GetBool (_fallHash) && !IsGrounded)
            MecanimAnimator.SetBool (_fallHash, true);

    }
    
    protected void Landing (float elapsedTime)
    {
        HorizontalSpeed = 0;
        VerticalSpeed = GroundVerticalSpeed;

    }

    protected void Stun (float elapsedTime)
    {
        HorizontalSpeed = 0;
        if (IsGrounded)
            VerticalSpeed = GroundVerticalSpeed;
        else
            ApplyGravity (elapsedTime);
        MecanimAnimator.SetBool (_stunHash, false);

    }

    protected void TurnAround (float elapsedTime)
    {
        if (MecanimAnimator.GetBool (_turnAroundHash)) {
            MecanimAnimator.SetBool (_turnAroundHash, false);
            StartCoroutine ("WaitToChangeDirection");
        }
        HorizontalSpeed = 0;
        VerticalSpeed = GroundVerticalSpeed;

    }

    IEnumerator WaitToChangeDirection ()
    {
        IgnoreDirection = true;

        while (CurrentState.IsName("Base Layer.Turn Around"))
            yield return null;

        Direction = -Direction;

        IgnoreDirection = false;

        StopCoroutine ("WaitToChangeDirection");

    }

    void OnAnimatorMove ()
    {
        if (MecanimAnimator != null && CurrentState.IsName ("Base Layer.Turn Around"))
            transform.rotation *= MecanimAnimator.deltaRotation;

    }
    
    protected void Jumping (float elapsedTime)
    {
        if (Mathf.Abs (CharInput.Horizontal) > 0.1)
            ApplyRunning (elapsedTime);
        
        if (MecanimAnimator.GetBool (_jumpHash)) {
            if (CharInput.JumpLeft || CharInput.JumpLeftReleased) {
                Direction = Vector3.left;
                HorizontalSpeed = -1.0f * Settings.MaxHorizontalSpeed;
            } else if (CharInput.JumpRight || CharInput.JumpRightReleased) {
                Direction = Vector3.right;
                HorizontalSpeed = 1.0f * Settings.MaxHorizontalSpeed;
            }
            
            VerticalSpeed = Mathf.Sqrt (2 * Settings.JumpHeight * Settings.Gravity);
            MecanimAnimator.SetBool (_jumpHash, false);
        } else
            ApplyGravity (elapsedTime);
        
        //ApplyBiDirection();
        
        if (transform.position.y >= LastGroundHeight - 1)
            MecanimAnimator.SetBool (_fallHash, false);
        
        MecanimAnimator.SetBool (_hangHash, 
                                (CanHangOffObject && ActiveHangTarget.DoesFaceXAxis () && VerticalSpeed < 0) 
            || (CanHangOffObject && ActiveHangTarget.DoesFaceZAxis () && CharInput.Up));
		
		if( CanGrabWall && ((Direction.x > 0 && IsHangTargetToRight) || (Direction.x < 0 && !IsHangTargetToRight)) )
			MecanimAnimator.SetBool(_grabWallHash, true);
    }
    
    protected void Falling (float elapsedTime)
    {
        if (CharInput.Right || CharInput.Left) // maintain horizontal momentum, but slow down if does input
            ApplyRunning (elapsedTime);
        ApplyGravity (elapsedTime);
        
        MecanimAnimator.SetBool (_fallHash, false);
        
        if (!(ActiveHangTarget is Ledge && ((Ledge)ActiveHangTarget).Obstacle) &&
            (CanHangOffObject && ActiveHangTarget.DoesFaceXAxis () && VerticalSpeed < 0) 
            || (CanHangOffObject && ActiveHangTarget.DoesFaceZAxis () && CharInput.Up)) {
            MecanimAnimator.SetBool (_hangHash, true);
            VerticalSpeed = 0;
            HorizontalSpeed = 0;
        } else 
            MecanimAnimator.SetBool (_hangHash, false);

		if( CanGrabWall && ((Direction.x > 0 && IsHangTargetToRight) || (Direction.x < 0 && !IsHangTargetToRight)) )
			MecanimAnimator.SetBool(_grabWallHash, true);
    }
    
    protected void Hanging (float elapsedTime)
    {
        VerticalSpeed = 0;
        if (MecanimAnimator.GetBool (_hangHash)) {
            
            if (ActiveHangTarget == null) {
                MecanimAnimator.SetBool (_fallHash, true);
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
            
            MecanimAnimator.SetBool (_hangHash, false);
        }
        
        if (ActiveHangTarget != null)
            ActivePlatform = ActiveHangTarget.transform;
        
        MecanimAnimator.SetBool (_fallHash, false);
        
        if (ActiveHangTarget == null) {
            DropHangTarget ();
            MecanimAnimator.SetBool (_fallHash, true);
        } else if (ActiveHangTarget is Ledge && (CharInput.Up || InputMoveForward)) {
            _ledge = ActiveHangTarget as Ledge;
            MecanimAnimator.SetBool (_climbLedgeHash, true);
        } else if (CharInput.JumpPressed) {
            DropHangTarget ();
            MecanimAnimator.SetBool (_jumpHash, true);
        } else if (CharInput.Down) {
            DropHangTarget ();
            MecanimAnimator.SetBool (_fallHash, true);
        }

    }

    protected void ClimbingLedge (float elapsedTime)
    {
        if (_ledge == null) {
            Debug.LogWarning ("Olympus's Ledge Not Found!");
            MecanimAnimator.SetBool (_fallHash, true);
            return;
        }
        
        MecanimAnimator.SetBool (_fallHash, false);
        
        if ((Direction.x > 0 && transform.position.x > _ledge.transform.position.x + _ledge.collider.bounds.extents.x)
            || (Direction.x < 0 && transform.position.x < _ledge.transform.position.x - _ledge.collider.bounds.extents.x)
            || CurrentState.normalizedTime > 0.9) {
            MecanimAnimator.SetBool (_climbLedgeHash, false);
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

	protected void GrabWall(float elapsedTime)
	{
		if (MecanimAnimator.GetBool(_grabWallHash)) {
			HorizontalSpeed = 0;
			VerticalSpeed = 0;
			MecanimAnimator.SetBool(_grabWallHash, false);
		}

	}

    protected void ClimbingVertical (float elapsedTime)
    {
        if (ActiveHangTarget == null) {
            DropHangTarget ();
            MecanimAnimator.SetBool (_fallHash, true);
            return;
        }

        HorizontalSpeed = 0;
        
        float vertical = CharInput.Vertical;
        
        ApplyClimbingVertical (vertical);
        
        if (ActiveHangTarget.DoesFaceZAxis ())
            Direction = Vector3.zero;
        
        MecanimAnimator.SetFloat (_horizontalSpeedHash, HorizontalSpeed);
        MecanimAnimator.SetFloat (_verticalSpeedHash, VerticalSpeed);
        
        if (CharInput.InteractionPressed) {
            MecanimAnimator.SetBool (_fallHash, true);
            DropHangTarget ();
            return;
        } else
            MecanimAnimator.SetBool (_fallHash, false);
        
        if (CharInput.JumpActive) {
            MecanimAnimator.SetBool (_jumpHash, true);
            DropHangTarget ();
        } 
        
    }

    public override bool IsDead ()
    {
        // TODO: fix. slow.
        return (CurrentState.IsName ("Base Layer.Death") || CurrentState.IsName ("Base Layer.Stealth Death"));
        
    }

    protected void StealthDeath (float elapsedTime)
    {
		if(MecanimAnimator.GetBool (_stealthDeathHash)) {
			Invoke("DropItems", 5.0f);
			MecanimAnimator.SetBool (_stealthDeathHash, false);

		}

        HorizontalSpeed = 0;
        VerticalSpeed = 0;

    }


	public void DropItems() {
		_itemDropper.DropItems (transform.position);
		
	}


    public override void OnStealthDeath (Vector2 knockForce)
    {
        MecanimAnimator.SetBool (_stealthDeathHash, true);
        HorizontalSpeed = knockForce.x;
        VerticalSpeed = knockForce.y;
        Invoke ("DoRagDoll", 3.0f);

    }

    protected void Death (float elapsedTime)
    {
		if(MecanimAnimator.GetBool (_dieHash)) { 
			Invoke("DropItems", 5.0f);
       	    MecanimAnimator.SetBool (_dieHash, false);

		}


        if (IsGrounded) {   
            ApplyDeathFriction (elapsedTime);
            VerticalSpeed = GroundVerticalSpeed;

        } else {
            ApplyGravity (elapsedTime);

        }

    }
    
    public override void OnDeath (Vector2 knockForce)
    {
        MecanimAnimator.SetBool (_dieHash, true);
        Invoke ("DoRagDoll", 2.0f);
        HorizontalSpeed = knockForce.x;
        VerticalSpeed = knockForce.y;

    }

    protected override void ApplyRunning (float elapsedTime)
    {
        base.ApplyRunning (elapsedTime);
        
        MecanimAnimator.SetFloat (_horizontalSpeedHash, Direction.x * HorizontalSpeed / Settings.MaxHorizontalSpeed);

    }

    public void PlayJump ()
    {
        _sound.Play (_sound.Jumping, 1.0f);

    }


    public override bool CanTransitionZ {
        get { return false; }
        set { }
    }
}
