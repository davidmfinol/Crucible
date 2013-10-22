using UnityEngine;
using System.Collections;

/// <summary>
/// Zombie animator moves the zombie.
/// </summary>
[RequireComponent(typeof(ZombieSettings))]
[RequireComponent(typeof(ZombieInput))]
[AddComponentMenu("Character/Zombie/Zombie Animator")]
public class ZombieAnimator : CharacterAnimator
{
    // So we can find the arms to use as weapons
    // TODO: SHOULD SET THIS ANOTHER WAY
    public string LeftForearmBoneName;
    public string RightForearmBoneName;
    
	// Mecanim hashes
	private int _verticalSpeedHash;
	private int _horizontalSpeedHash;
	private int _jumpHash;
	private int _fallHash;
	private int _climbHash;
	private int _isGroundedHash;
	private int _attackHash;
	private int _takeHitHash;
	
	// Zombie should play it's own sound effects
    private ZombieAudioPlayer _zombieAudioSource;
    
    // Bones for our left and right hands
    private Transform _bone_L;
    private Transform _bone_R;

	
	protected override void CreateStateMachine()
	{
		// Map States
		StateMachine[Animator.StringToHash("Base Layer.Idle")] = Idle;
		//Debug.LogWarning("Base Layer.Idle:" + Animator.StringToHash("Base Layer.Idle"));
		StateMachine[Animator.StringToHash("Base Layer.Running")] = Running;
		//Debug.LogWarning("Base Layer.Running:" + Animator.StringToHash("Base Layer.Running"));
		StateMachine[Animator.StringToHash("Base Layer.Climbing")] = Climbing;
		//Debug.LogWarning("Base Layer.Climbing:" + Animator.StringToHash("Base Layer.Climbing"));
		StateMachine[Animator.StringToHash("Base Layer.TakingDamage")] = TakingDamage;
		//Debug.LogWarning("Base Layer.TakingDamage:" + Animator.StringToHash("Base Layer.TakingDamage"));
		StateMachine[Animator.StringToHash("Jumping.Jumping")] = Jumping;
		//Debug.LogWarning("Jumping.Jumping:" + Animator.StringToHash("Jumping.Jumping"));
		StateMachine[Animator.StringToHash("Jumping.JumpFalling")] = Falling;
		//Debug.LogWarning("Jumping.JumpFalling:" + Animator.StringToHash("Jumping.JumpFalling"));
		StateMachine[Animator.StringToHash("Jumping.JumpLanding")] = Running;
		//Debug.LogWarning("Jumping.JumpLanding:" + Animator.StringToHash("Jumping.JumpLanding"));
		StateMachine[Animator.StringToHash("Falling.Falling")] = Falling;
		//Debug.LogWarning("Falling.Falling:" + Animator.StringToHash("Falling.Falling"));
		StateMachine[Animator.StringToHash("Falling.Landing")] = Running;
		//Debug.LogWarning("Falling.Landing:" + Animator.StringToHash("Falling.Landing"));
		
		// Hash Variables
		_verticalSpeedHash = Animator.StringToHash("VerticalSpeed");
		_horizontalSpeedHash = Animator.StringToHash("HorizontalSpeed");
		_jumpHash = Animator.StringToHash("Jump");
		_fallHash = Animator.StringToHash("Fall");
		_climbHash = Animator.StringToHash("Climb");
		_isGroundedHash = Animator.StringToHash("IsGrounded");
		_attackHash = Animator.StringToHash("Attack");
		_takeHitHash = Animator.StringToHash("TakeHit");
	}
	protected override void Initialize ()
	{
        _zombieAudioSource = GetComponentInChildren<ZombieAudioPlayer>();

        // We need to find the bones for our hands so we can attack with them
        _bone_L = CharacterSettings.SearchHierarchyForBone(transform, LeftForearmBoneName);
        _bone_R = CharacterSettings.SearchHierarchyForBone(transform, RightForearmBoneName);
	}
	
	protected override void UpdateMecanimVariables()
	{
		if(!MecanimAnimator.GetBool(_jumpHash) && IsGrounded && CharInput.Jump)
			MecanimAnimator.SetBool(_jumpHash, true);
		MecanimAnimator.SetBool(_fallHash, !IsGrounded);
		MecanimAnimator.SetBool(_climbHash, (CanClimbPipe || CanClimbLadder) && CharInput.Up );
		MecanimAnimator.SetBool(_isGroundedHash, IsGrounded);
        //FIXME: THIS FOLLOWING LINES ARE TOO LONG AND SLOW
        bool shouldAttack = !MecanimAnimator.GetBool(_takeHitHash) && !MecanimAnimator.GetCurrentAnimatorStateInfo(0).IsName("Base Layer.TakingDamage") && CharInput.Attack1;
        // REALISTICALLY, THE HITBOXES SHOULD BE CREATED AT RUNTIME AND THEN PARENTED TO THE BONE (THEN DESTROYED AT RUNTIME AS WELL)
        // THEN THE ENTIRE RIG CAN USE THE RAGDOLL LAYER AGAIN ( CURRENTLY THE ARMS ARE USING THE HITBOX LAYER)
		MecanimAnimator.SetBool(_attackHash, shouldAttack);
        _bone_L.GetComponent<Collider>().enabled = shouldAttack;
        _bone_L.GetComponent<HitBox>().enabled = shouldAttack;
        _bone_R.GetComponent<Collider>().enabled = shouldAttack;
        _bone_R.GetComponent<HitBox>().enabled = shouldAttack;
        //TODO: FIX THE PRECEDING; SHOULD FIND SOLUTION FOR ALL CHARACTERS?
	}
	
	protected virtual void Idle(float elapsedTime)
	{
		ApplyRunning(elapsedTime);
		VerticalSpeed = GroundVerticalSpeed;
		ApplyTriDirection();
		_zombieAudioSource.PlayIdle();
	}
	
	protected void Running(float elapsedTime)
	{
		ApplyRunning(elapsedTime);
		VerticalSpeed = GroundVerticalSpeed;
		ApplyBiDirection();
		_zombieAudioSource.PlayRunning();
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
		
		MecanimAnimator.SetBool(_fallHash, false);
	}
	
	protected void Falling(float elapsedTime)
	{
		ApplyRunning(elapsedTime);
		ApplyGravity(elapsedTime);
	}
	
	protected void Climbing(float elapsedTime)
	{
		HorizontalSpeed = 0;
		ApplyClimbingVertical();
		Direction = Vector3.zero;
		
		MecanimAnimator.SetFloat(_verticalSpeedHash, VerticalSpeed);
		MecanimAnimator.SetBool(_fallHash, false);
		
        if(CharInput.Jump)
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
	
	protected void TakingDamage(float elapsedTime)
	{
		HorizontalSpeed = 0;
		VerticalSpeed = GroundVerticalSpeed;
		
		MecanimAnimator.SetBool(_takeHitHash, false);
	}
	
    public override void OnDeath()
    {
        ZombieAudioSource.PlayDeath();
        ActivateRagDoll(transform);
        CharacterAnimatorDebugger debug = GetComponent<CharacterAnimatorDebugger>();
        if (debug != null)
            Destroy(debug);
        ZombieAIDebugger debug2 = GetComponent<ZombieAIDebugger>();
        if (debug2 != null)
            Destroy(debug2);
        Destroy(this);
		GameManager.AI.Zombies.Remove(CharInput);
		Destroy(CharInput);
		Destroy(Settings);
        Destroy(Controller);
		Destroy(MecanimAnimator);
        Destroy(GetComponent<Seeker>());
    }
	
    // Helper Method to activate the ragdoll of the zombie
    public void ActivateRagDoll(Transform current)
    {
        // activate the ragdoll for all child bones
        for (int i = 0; i < current.childCount; ++i)
            ActivateRagDoll(current.GetChild(i));

        // activate the ragdoll for the bone we're on
        if (current.GetComponent<ZombieHeartBox>() != null)
            Destroy(current.gameObject);
        else if (current.rigidbody != null && current.collider != null)
        {
            current.collider.enabled = true;
            current.rigidbody.isKinematic = false;
        }
    }
	
	
    public ZombieAudioPlayer ZombieAudioSource
    {
        get { return _zombieAudioSource; }
    }
	public new ZombieSettings Settings
	{
		get { return (ZombieSettings) base.Settings; }
	}
	public new ZombieInput CharInput
	{
		get { return (ZombieInput) base.CharInput; }
	}
}
