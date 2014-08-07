using UnityEngine;
using System.Collections.Generic;

/// <summary>
/// Baby bot animator moves/animates the Baby Bot enemy type.
/// </summary>
[AddComponentMenu("Character/Non-Player Character/BabyBot/BabyBot Animator")]
public class BabyBotAnimator : CharacterAnimator
{
    // TODO: REPLACE THIS WITH SOME KIND OF POOL OF HITBOX OBJECTS
    public GameObject MeleeEvent;

    // Mecanim State Hashes
    public static readonly int IdleState = Animator.StringToHash ("Base Layer.Idle");
    public static readonly int JumpingState = Animator.StringToHash ("Base Layer.Jumping");
    public static readonly int LandingState = Animator.StringToHash ("Base Layer.Landing");
    public static readonly int AttackState = Animator.StringToHash ("Base Layer.Attack");

    // Making cute baby sounds =)
    private BabybotAudioPlayer _sound;

    protected override void OnStart ()
    {
        _sound = GetComponentInChildren<BabybotAudioPlayer> ();

    }

    protected override void CreateStateMachine ()
    {
        StateMachine [IdleState] = Idle;
        StateMachine [JumpingState] = Jump;
        StateMachine [LandingState] = Land;
        StateMachine [AttackState] = Attack;

    }

    protected override void UpdateMecanimVariables ()
    {
        MecanimAnimator.SetBool (MecanimHashes.Jump, CharInput.JumpActive);
        MecanimAnimator.SetBool (MecanimHashes.IsGrounded, IsGrounded);
        MecanimAnimator.SetBool (MecanimHashes.Attack, CharInput.AttackActive);

    }

    protected void Idle (float elapsedTime)
    {
        _sound.DelayedStop ();
        HorizontalSpeed = 0;
        VerticalSpeed = GroundVerticalSpeed;
        Direction = Vector3.back;

    }

    protected void Jump (float elapsedTime)
    {
        // Babybot does all its movement midair
        if (CharInput.Left || CharInput.Right)
            ApplyMovingHorizontal (elapsedTime);

        // Start moving up at the beginning 
        if (TimeInCurrentState == 0) {
            if (CharInput.JumpLeft || CharInput.JumpLeftReleased)
                HorizontalSpeed = -1.0f * Settings.MaxHorizontalSpeed;
            else if (CharInput.JumpRight || CharInput.JumpRightReleased)
                HorizontalSpeed = 1.0f * Settings.MaxHorizontalSpeed;
            
            VerticalSpeed = Mathf.Sqrt (2 * Settings.JumpHeight * Settings.Gravity);
            MecanimAnimator.SetBool (MecanimHashes.Jump, false);
        }

        // Fall down at all other times
        else
            ApplyGravity (elapsedTime);

        // Babybot is capable of turning around mid-air
        ApplyBiDirection ();

    }

    protected void Land (float elapsedTime)
    {
        HorizontalSpeed = 0;
        VerticalSpeed = GroundVerticalSpeed;

    }
    
    protected void Attack (float elapsedTime)
    {
        if (!MecanimAnimator.GetBool (MecanimHashes.Attack))
            return;
        
        // Set up mecanim
        MecanimAnimator.SetBool (MecanimHashes.Attack, false);
        
        // Disable movement
        Controller.enabled = false;
        IgnoreMovement = true;
        IgnoreDirection = true;
        
        // Parent ourselves to the player
        transform.parent = GameManager.Player.transform;
        Vector3 move = transform.localPosition;
        transform.localPosition = Vector3.zero;
        Settings.RootTransform.position = Settings.RootTransform.position + move;
        
    }
    
    public void SelfDestruct ()
    {
        // TODO: OBJECT POOLING
        GameObject o = (GameObject)Instantiate (MeleeEvent, transform.position, Quaternion.identity);
        o.transform.parent = GameManager.Player.transform;
        HitBox d = o.GetComponentInChildren<HitBox> ();
        
        float horizontalDir = 0.0f;
        if (GameManager.Player.transform.position.x < transform.position.x)
            horizontalDir = -1.0f;
        else
            horizontalDir = 1.0f;
        
        d.MakeBabyBotExplosion (this.gameObject, horizontalDir);
        
    }

    public override void OnDeath()
    {
        Destroy(gameObject);

    }

    public void Giggle ()
    {
        _sound.Play (_sound.Giggle, _sound.GiggleVolume);

    }

    public void PlayJump ()
    {
        _sound.Play (_sound.Jump, _sound.JumpVolume);

    }

	public void PlaySnore()
	{
		_sound.Play(_sound.Snoring, _sound.SnoringVolume);

	}

    public BabybotAudioPlayer Sound {
        get { return _sound; }
    }

    public override EnemySaveState.EnemyType EnemyType {
        get { return EnemySaveState.EnemyType.Enemy_BabyBot; }
    }

}
