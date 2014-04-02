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

    // Mecanim State Hashes
    public static readonly int IdleState = Animator.StringToHash ("Base Layer.Idle");
    public static readonly int RunningState = Animator.StringToHash ("Base Layer.Running");
    public static readonly int TurnAroundState = Animator.StringToHash ("Base Layer.Turn Around");
    public static readonly int AcquireTargetState = Animator.StringToHash ("Base Layer.Acquiring Target");
    public static readonly int StunState = Animator.StringToHash ("Base Layer.Stun");
    public static readonly int DeathState = Animator.StringToHash ("Base Layer.Death");
    public static readonly int StealthDeathState = Animator.StringToHash ("Base Layer.Stealth Death");
    public static readonly int JumpingState = Animator.StringToHash ("Air.Jumping");
    public static readonly int FallingState = Animator.StringToHash ("Air.Falling");
    public static readonly int LandingState = Animator.StringToHash ("Air.Landing");
    public static readonly int GrabWallState = Animator.StringToHash ("Wall.Grab Wall");
    public static readonly int WallclimbingState = Animator.StringToHash ("Wall.Climbing");
    public static readonly int HangingState = Animator.StringToHash ("Climbing.Hanging");
    public static readonly int ClimbingLedgeState = Animator.StringToHash ("Climbing.ClimbingLedge");
    public static readonly int ClimbingLadderState = Animator.StringToHash ("Climbing.ClimbingLadder");
    public static readonly int ClimbingPipeState = Animator.StringToHash ("Climbing.ClimbingPipe");
    
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
        StateMachine [IdleState] = Idle;
        StateMachine [RunningState] = Running;
        StateMachine [TurnAroundState] = TurnAround;
        StateMachine [AcquireTargetState] = AcquireTarget;
        StateMachine [StunState] = Stun;
        StateMachine [DeathState] = Death;
        StateMachine [StealthDeathState] = StealthDeath;
        StateMachine [JumpingState] = Jumping;
        StateMachine [FallingState] = Falling;
		StateMachine [LandingState] = Landing;
		StateMachine [GrabWallState] = GrabWall;
        StateMachine [WallclimbingState] = ClimbingVertical;
        StateMachine [HangingState] = Hanging;
        StateMachine [ClimbingLedgeState] = ClimbingLedge;
        StateMachine [ClimbingLadderState] = ClimbingVertical;
        StateMachine [ClimbingPipeState] = ClimbingVertical;

    }
    
    protected override void UpdateMecanimVariables ()
    {
        if (!MecanimAnimator.GetBool (MecanimHashes.Jump) && IsGrounded && CharInput.JumpPressed)
            MecanimAnimator.SetBool (MecanimHashes.Jump, true);
        
        bool facingRightLadder = (ActiveHangTarget && ActiveHangTarget.transform.position.x - transform.position.x > 0.0f);
        bool facingLeftLadder = (ActiveHangTarget && transform.position.x - ActiveHangTarget.transform.position.x > 0.0f);
        
        bool startClimbLadder = CanClimbLadder && ((facingRightLadder && CharInput.Right) ||
            (facingLeftLadder && CharInput.Left));
        bool startClimbPipe = CanClimbPipe;
        
        MecanimAnimator.SetBool (MecanimHashes.ClimbLadder, startClimbLadder);
        
        /*
        if(startClimbLadder)
            _autoClimbDir = AutoClimbDirection.AutoClimb_Up;
        // if not in a climb, reset our auto-climb direction for use next climb.
        if( ! (CurrentState.IsName("Climbing.ClimbingLadder") || CurrentState.IsName("Climbing.ClimbingPipe")) )
            _autoClimbDir = AutoClimbDirection.AutoClimb_None;
        */
        
        MecanimAnimator.SetBool (MecanimHashes.ClimbPipe, startClimbPipe);
        
        MecanimAnimator.SetBool (MecanimHashes.IsGrounded, IsGrounded);
        
		MecanimAnimator.SetBool (MecanimHashes.AttackHorizontal, CharInput.Attack > 0);
		MecanimAnimator.SetBool (MecanimHashes.AttackVertical, CharInput.Attack < 0);

        if (!IsGrounded)
            MecanimAnimator.SetBool (MecanimHashes.AcquiringTarget, false);

        // Give Olympus some perfectly hard stops on land
        if (IsLanding)
            HorizontalSpeed = 0;

        // Knowing direction is useful for the turnaround animation
        MecanimAnimator.SetFloat (MecanimHashes.XDirection, Direction.x);

    }

    public void OnAcquireTarget ()
    {
        if (IsGrounded)
            MecanimAnimator.SetBool (MecanimHashes.AcquiringTarget, true);

    }

    protected void AcquireTarget (float elapsedTime)
    {
        MecanimAnimator.SetBool (MecanimHashes.AcquiringTarget, false);

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
		meleePos.y += Height * 0.5f;
		
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
        
        if (!MecanimAnimator.GetBool (MecanimHashes.Fall) && !IsGrounded)
            MecanimAnimator.SetBool (MecanimHashes.Fall, true);

        if (CharInput.Pickup)
            MecanimAnimator.SetBool (MecanimHashes.TurnAround, true);

    }
    
    protected void Running (float elapsedTime)
    {
        ApplyRunning (elapsedTime);
        VerticalSpeed = GroundVerticalSpeed;
        ApplyBiDirection ();
        
        if (!MecanimAnimator.GetBool (MecanimHashes.Fall) && !IsGrounded)
            MecanimAnimator.SetBool (MecanimHashes.Fall, true);

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
        MecanimAnimator.SetBool (MecanimHashes.Stun, false);

    }

    protected void TurnAround (float elapsedTime)
    {
        if (MecanimAnimator.GetBool (MecanimHashes.TurnAround)) {
            MecanimAnimator.SetBool (MecanimHashes.TurnAround, false);
            StartCoroutine (WaitToChangeDirection ());
        }
        HorizontalSpeed = 0;
        VerticalSpeed = GroundVerticalSpeed;

    }

    public IEnumerator WaitToChangeDirection ()
    {
        IgnoreDirection = true;

        while (CurrentState.IsName("Base Layer.Turn Around"))
            yield return null;

        Direction = -Direction;

        IgnoreDirection = false;

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
        
        MecanimAnimator.SetBool (MecanimHashes.Hang, 
                                (CanHangOffObject && ActiveHangTarget.DoesFaceXAxis () && VerticalSpeed < 0) 
            || (CanHangOffObject && ActiveHangTarget.DoesFaceZAxis () && CharInput.Up));
		
		if( CanGrabWall && ((Direction.x > 0 && IsHangTargetToRight) || (Direction.x < 0 && !IsHangTargetToRight)) )
			MecanimAnimator.SetBool(MecanimHashes.GrabWall, true);
    }
    
    protected void Falling (float elapsedTime)
    {
        if (CharInput.Right || CharInput.Left) // maintain horizontal momentum, but slow down if does input
            ApplyRunning (elapsedTime);
        ApplyGravity (elapsedTime);
        
        MecanimAnimator.SetBool (MecanimHashes.Fall, false);
        
        if (!(ActiveHangTarget is Ledge && ((Ledge)ActiveHangTarget).Obstacle) &&
            (CanHangOffObject && ActiveHangTarget.DoesFaceXAxis () && VerticalSpeed < 0) 
            || (CanHangOffObject && ActiveHangTarget.DoesFaceZAxis () && CharInput.Up)) {
            MecanimAnimator.SetBool (MecanimHashes.Hang, true);
            VerticalSpeed = 0;
            HorizontalSpeed = 0;
        } else 
            MecanimAnimator.SetBool (MecanimHashes.Hang, false);

		if( CanGrabWall && ((Direction.x > 0 && IsHangTargetToRight) || (Direction.x < 0 && !IsHangTargetToRight)) )
			MecanimAnimator.SetBool(MecanimHashes.GrabWall, true);
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
            Debug.LogWarning ("Olympus's Ledge Not Found!");
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

	protected void GrabWall(float elapsedTime)
	{
		if (MecanimAnimator.GetBool(MecanimHashes.GrabWall)) {
			HorizontalSpeed = 0;
			VerticalSpeed = 0;
			MecanimAnimator.SetBool(MecanimHashes.GrabWall, false);
		}

	}

    protected void ClimbingVertical (float elapsedTime)
    {
        if (ActiveHangTarget == null) {
            DropHangTarget ();
            MecanimAnimator.SetBool (MecanimHashes.Fall, true);
            return;
        }

        HorizontalSpeed = 0;
        
        float vertical = CharInput.Vertical;
        
        ApplyClimbingVertical (vertical);
        
        if (ActiveHangTarget.DoesFaceZAxis ())
            Direction = Vector3.zero;
        
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

    public override bool IsDead ()
    {
        // TODO: fix. slow.
        return (CurrentState.IsName ("Base Layer.Death") || CurrentState.IsName ("Base Layer.Stealth Death"));
        
    }

    protected void StealthDeath (float elapsedTime)
    {
		if(MecanimAnimator.GetBool (MecanimHashes.StealthDeath)) {
			Invoke("DropItems", 5.0f);
			MecanimAnimator.SetBool (MecanimHashes.StealthDeath, false);

		}

        HorizontalSpeed = 0;
        VerticalSpeed = 0;

    }


	public void DropItems() {
		_itemDropper.DropItems (transform.position);
		
	}


    public override void OnStealthDeath (Vector2 knockForce)
    {
        MecanimAnimator.SetBool (MecanimHashes.StealthDeath, true);
        HorizontalSpeed = knockForce.x;
        VerticalSpeed = knockForce.y;
        Invoke ("DoRagDoll", 3.0f);

    }

    protected void Death (float elapsedTime)
    {
		if(MecanimAnimator.GetBool (MecanimHashes.Die)) { 
			Invoke("DropItems", 5.0f);
       	    MecanimAnimator.SetBool (MecanimHashes.Die, false);

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
        MecanimAnimator.SetBool (MecanimHashes.Die, true);
        Invoke ("DoRagDoll", 2.0f);
        HorizontalSpeed = knockForce.x;
        VerticalSpeed = knockForce.y;

    }

    protected override void ApplyRunning (float elapsedTime)
    {
        base.ApplyRunning (elapsedTime);
        
        MecanimAnimator.SetFloat (MecanimHashes.HorizontalSpeed, Direction.x * HorizontalSpeed / Settings.MaxHorizontalSpeed);

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
