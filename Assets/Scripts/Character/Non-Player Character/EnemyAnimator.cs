using UnityEngine;
using System.Collections;

/// <summary>
/// Enemy animator moves the Enemy.
/// </summary>
[RequireComponent(typeof(EnemySettings))]
[RequireComponent(typeof(EnemyInput))]
[AddComponentMenu("Character/Enemy/Enemy Animator")]
public class EnemyAnimator : CharacterAnimator
{
    // So we can find the arms to use as weapons
    public string LeftForearmBoneName;
    public string RightForearmBoneName;
	
	// Enemy should play it's own sound effects
    private EnemyAudioPlayer _enemyAudioSource;

	// Mecanim hashes
	private int _verticalSpeedHash;
	private int _horizontalSpeedHash;
	private int _jumpHash;
	private int _fallHash;
	private int _hangHash;
	private int _climbLadderHash;
	private int _isGroundedHash;
	private int _meleeAttackHash;
	private int _climbLedgeHash;
	private int _climbPipeHash;
	private int _stunHash;
	private int _dieHash;
	
	// Used to keep track of a ledge we are climbing
	private Ledge _ledge;
    
    // Bones for our left and right hands
    private Transform _bone_L;
    private Transform _bone_R;
	
	protected override void Initialize ()
	{
        _enemyAudioSource = GetComponentInChildren<EnemyAudioPlayer>();

        // We need to find the bones for our hands so we can attack with them
        _bone_L = CharacterSettings.SearchHierarchyForBone(transform, LeftForearmBoneName);
        _bone_R = CharacterSettings.SearchHierarchyForBone(transform, RightForearmBoneName);
	}
	
	protected override void CreateStateMachine()
	{
		// First map the states
		StateMachine[Animator.StringToHash("Base Layer.Idle")] = Idle;
		StateMachine[Animator.StringToHash("Base Layer.Running")] = Running;
		StateMachine[Animator.StringToHash("Base Layer.Stun")] = Stun;
		StateMachine[Animator.StringToHash("Base Layer.Death")] = Death;
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
		_meleeAttackHash = Animator.StringToHash("AttackMelee");
		_climbLedgeHash = Animator.StringToHash("ClimbLedge");
		_climbPipeHash = Animator.StringToHash("ClimbPipe");
		_stunHash = Animator.StringToHash("Stun");
		_dieHash = Animator.StringToHash("Die");
	}
	
	protected override void UpdateMecanimVariables()
	{
		if(!MecanimAnimator.GetBool(_jumpHash) && IsGrounded && CharInput.JumpActive)
			MecanimAnimator.SetBool(_jumpHash, true);

		MecanimAnimator.SetBool(_climbLadderHash, CanClimbLadder && (CharInput.Up || CharInput.Down) );
		MecanimAnimator.SetBool(_climbPipeHash, CanClimbPipe && (CharInput.Up || CharInput.Down) );
		MecanimAnimator.SetBool(_isGroundedHash, IsGrounded);

		// FIXME: NEXT TWO LINES
		bool shouldAttack = !MecanimAnimator.GetCurrentAnimatorStateInfo(0).IsName("Base Layer.TakingDamage") && Mathf.Abs(CharInput.Attack) > 0.1;
		MecanimAnimator.SetBool(_meleeAttackHash, shouldAttack);
	}
	void StartMelee()
	{
		//FIXME: THIS FOLLOWING LINES ARE TOO LONG AND SLOW
		_bone_L.GetComponent<Collider>().enabled = true;
		_bone_L.GetComponent<HitBox>().enabled = true;
		_bone_R.GetComponent<Collider>().enabled = true;
		_bone_R.GetComponent<HitBox>().enabled = true;
		//TODO: FIX THE PRECEDING; SHOULD FIND SOLUTION FOR ALL CHARACTERS?
	}
	void EndMelee()
	{
		//FIXME: THIS FOLLOWING LINES ARE TOO LONG AND SLOW
		_bone_L.GetComponent<Collider>().enabled = false;
		_bone_L.GetComponent<HitBox>().enabled = false;
		_bone_R.GetComponent<Collider>().enabled = false;
		_bone_R.GetComponent<HitBox>().enabled = false;
		//TODO: FIX THE PRECEDING; SHOULD FIND SOLUTION FOR ALL CHARACTERS?
	}
	
	protected virtual void Idle(float elapsedTime)
	{
		ApplyRunning(elapsedTime);
		VerticalSpeed = GroundVerticalSpeed;
		ApplyTriDirection();
		
		if(!MecanimAnimator.GetBool(_fallHash) && !IsGrounded)
			MecanimAnimator.SetBool(_fallHash, true);
	}
	
	protected void Running(float elapsedTime)
	{
		ApplyRunning(elapsedTime);
		VerticalSpeed = GroundVerticalSpeed;
		ApplyBiDirection();
		
		if(!MecanimAnimator.GetBool(_fallHash) && !IsGrounded)
			MecanimAnimator.SetBool(_fallHash, true);
	}

	protected void Stun(float elapsedTime)
	{
		HorizontalSpeed = 0;
		if (IsGrounded)
			VerticalSpeed = GroundVerticalSpeed;
		else
			ApplyGravity (elapsedTime);
		MecanimAnimator.SetBool (_stunHash, false);
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
		
         if(transform.position.y >= LastGroundHeight - 1)
    		MecanimAnimator.SetBool(_fallHash, false);
		
		MecanimAnimator.SetBool(_hangHash, 
			(CanHangOffObject && ActiveHangTarget.DoesFaceXAxis() && VerticalSpeed < 0) 
			|| (CanHangOffObject && ActiveHangTarget.DoesFaceZAxis() && CharInput.Up));
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
		else if (ActiveHangTarget is Ledge && (CharInput.Up || InputMoveForward))	
		{
			MecanimAnimator.SetBool(_climbLedgeHash, true);
		}
		else if(CharInput.JumpActive)
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
		if(MecanimAnimator.GetBool(_climbLedgeHash))
		{
			_ledge = ActiveHangTarget as Ledge;
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
			MecanimAnimator.SetBool(_climbLedgeHash, false);
		}
		else
		{
	        if (transform.position.y > _ledge.transform.position.y + _ledge.collider.bounds.extents.y + Height / 2)
	            VerticalSpeed = GroundVerticalSpeed;
	        if (transform.position.x > _ledge.transform.position.x + _ledge.collider.bounds.extents.x
				|| transform.position.x < _ledge.transform.position.x - _ledge.collider.bounds.extents.x)
	            HorizontalSpeed = 0;
		}
	}
	
	protected void ClimbingVertical(float elapsedTime)
	{
		ApplyClimbingVertical(CharInput.Vertical);
		
		if(VerticalSpeed != 0)
			ApplyClimbingStrafing(CharInput.Horizontal);
		else
			HorizontalSpeed = 0;
		
		Direction = Vector3.zero;
		
		
        if(CharInput.JumpActive)
		{
			MecanimAnimator.SetBool(_jumpHash, true);
		}
        else if(ActiveHangTarget == null)
		{
			DropHangTarget();
			MecanimAnimator.SetBool(_fallHash, true);
		}
		else
			MecanimAnimator.SetFloat(_verticalSpeedHash, VerticalSpeed);
	}
	
	protected void ClimbingStrafe(float elapsedTime)
	{
		ApplyClimbingStrafing(CharInput.Horizontal);
		
		if(HorizontalSpeed != 0)
			ApplyClimbingVertical(CharInput.Vertical);
		else
			VerticalSpeed = 0.0f;
		
		Direction = Vector3.zero;
		
		MecanimAnimator.SetFloat(_horizontalSpeedHash, HorizontalSpeed);
		
        if(CharInput.JumpActive)
		{
			MecanimAnimator.SetBool(_jumpHash, true);
		}
		else if(ActiveHangTarget == null)
		{
			DropHangTarget();
			MecanimAnimator.SetBool(_fallHash, true);
		}
	}
    	
	protected override void ApplyRunning (float elapsedTime)
	{
		base.ApplyRunning(elapsedTime);

		MecanimAnimator.SetFloat(_horizontalSpeedHash, Direction.x * HorizontalSpeed/Settings.MaxHorizontalSpeed);
	}

	public void DoRagDoll()
	{
		ActivateRagDoll(transform, false, true);
		CharacterAnimatorDebugger debug = GetComponent<CharacterAnimatorDebugger>();
		if (debug != null)
			Destroy(debug);
		EnemyAIDebugger debug2 = GetComponent<EnemyAIDebugger>();
		if (debug2 != null)
			Destroy(debug2);
		Destroy(this);
		GameManager.AI.Enemies.Remove(CharInput);
		Destroy(CharInput);
		Destroy(Settings);
		Destroy(Controller);
		Destroy(MecanimAnimator);
		Destroy(GetComponent<Seeker>());

	}

	protected void Death(float elapsedTime)
	{
		HorizontalSpeed = 0;
		VerticalSpeed = 0;
		MecanimAnimator.SetBool (_dieHash, false);
	}

	public override void OnDeath()
	{
		Debug.Log ("Called");
		//EnemyAudioSource.PlayDeath();
		MecanimAnimator.SetBool (_dieHash, true);
		Invoke ("DoRagDoll", 3.0f);
	}
	
	// Helper Method to activate the ragdoll of the Enemy
    public void ActivateRagDoll(Transform current, bool disable, bool useGravity)
    {
        // activate the ragdoll for all child bones
        for (int i = 0; i < current.childCount; ++i)
            ActivateRagDoll(current.GetChild(i), disable, useGravity);

        // activate the ragdoll for the bone we're on
        if (current.GetComponent<EnemyHeartBox>() != null)
            Destroy(current.gameObject);
        else if (current.rigidbody != null && current.collider != null)
        {
            current.collider.enabled = !disable;
            current.rigidbody.isKinematic = disable;
			current.rigidbody.useGravity = useGravity;
        }
    }
	
	public void ActivateFloat()
	{
		Debug.Log ("I should float");
		MecanimAnimator.enabled = false;
		collider.enabled = false;
        ActivateRagDoll(transform, false, false);
		Vector3 pos = transform.position;
		pos.y += 1;
		transform.position = pos;
		StartCoroutine("ReEnable");
		this.enabled = false;
	}
	
	IEnumerator ReEnable()
	{
		float timePassed = 0;
		while (timePassed < 5)
		{
			Debug.Log ("I should be floating...");
			timePassed += Time.deltaTime;
			yield return null;
		}
		this.enabled = true;
        ActivateRagDoll(transform, true, true);
		//Transform root = CharacterSettings.SearchHierarchyForBone(transform, "Root");
		//transform.position = root.transform.position;
		collider.enabled = true;
		MecanimAnimator.enabled = true;
		StopCoroutine("ReEnable");
	}
	
    public EnemyAudioPlayer EnemyAudioSource
    {
        get { return _enemyAudioSource; }
    }
	public new EnemySettings Settings
	{
		get { return (EnemySettings) base.Settings; }
	}
	public new EnemyInput CharInput
	{
		get { return (EnemyInput) base.CharInput; }
	}
}
