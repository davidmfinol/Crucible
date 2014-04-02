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
    public static readonly int AwakeState = Animator.StringToHash ("Base Layer.Awake");
    public static readonly int RunState = Animator.StringToHash ("Base Layer.Run");
    public static readonly int AttackState = Animator.StringToHash ("Base Layer.Attack");
    public static readonly int LandingState = Animator.StringToHash ("Air.Landing");
    public static readonly int JumpingState = Animator.StringToHash ("Air.Jumping");
    public static readonly int FallingState = Animator.StringToHash ("Air.Falling");

    // Making cute baby sounds =)
    private BabybotAudioPlayer _sound;

    protected override void OnStart ()
    {
        _sound = GetComponentInChildren<BabybotAudioPlayer> ();

    }

    protected override void CreateStateMachine ()
    {
        StateMachine [IdleState] = Idle;
        StateMachine [AwakeState] = Idle;
        StateMachine [RunState] = Run;
        StateMachine [AttackState] = Attack;
        StateMachine [LandingState] = Run;
        StateMachine [JumpingState] = Jump;
        StateMachine [FallingState] = Fall;

    }

    protected override void OnUpdate()
    {
        // HACK: WE'RE TRYING TO PREVENT MOVING THE MESH TOO FAR AWAY FROM THE COLLIDER
        if (Root != null && CurrentState.nameHash == AttackState )
            Root.localPosition = Vector3.zero;
    }

    protected override void UpdateMecanimVariables ()
    {
        MecanimAnimator.SetBool (MecanimHashes.Fall, !IsGrounded);
        MecanimAnimator.SetBool (MecanimHashes.IsGrounded, IsGrounded);

    }

    protected void Idle (float elapsedTime)
    {
        _sound.DelayedStop ();
        if (CharInput.Left || CharInput.Right)
            MecanimAnimator.SetBool (MecanimHashes.Awake, true);
        HorizontalSpeed = 0;
        VerticalSpeed = GroundVerticalSpeed;
        ApplyBiDirection ();
        MecanimAnimator.SetBool (MecanimHashes.Jump, CharInput.JumpActive);

    }

    protected void Run (float elapsedTime)
    {
        if (TimeInCurrentState == 0)
            _sound.PlayLoop (_sound.Running, 1.0f); //TODO: Make baby bot sounds separate footsteps as well and add animation event

        HorizontalSpeed = 0;
        VerticalSpeed = GroundVerticalSpeed;
        ApplyBiDirection ();

        MecanimAnimator.SetBool (MecanimHashes.Awake, false);
        MecanimAnimator.SetFloat (MecanimHashes.HorizontalSpeed, Mathf.Abs (CharInput.Horizontal));
        MecanimAnimator.SetBool (MecanimHashes.Jump, CharInput.JumpActive);
        MecanimAnimator.SetBool (MecanimHashes.Attack, CharInput.AttackActive);

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
        Transform selfRoot = CharacterSettings.SearchHierarchyForBone (transform, Settings.RootBoneName);
        transform.parent = GameManager.Player.transform;
        Vector3 move = transform.localPosition;
        transform.localPosition = Vector3.zero;
        selfRoot.position = selfRoot.position + move;

    }

    protected void Jump (float elapsedTime)
    {
        if (Mathf.Abs (CharInput.Horizontal) > 0.1)
            ApplyRunning (elapsedTime * 0.5f);
        
        if (MecanimAnimator.GetBool (MecanimHashes.Jump)) {
            if (CharInput.JumpLeft || CharInput.JumpLeftReleased)
                HorizontalSpeed = -1.0f * Settings.MaxHorizontalSpeed;
            else if (CharInput.JumpRight || CharInput.JumpRightReleased)
                HorizontalSpeed = 1.0f * Settings.MaxHorizontalSpeed;
            
            VerticalSpeed = Mathf.Sqrt (2 * Settings.JumpHeight * Settings.Gravity);
            MecanimAnimator.SetBool (MecanimHashes.Jump, false);
        } else
            ApplyGravity (elapsedTime);
        
        if (transform.position.y >= LastGroundHeight - 1)
            MecanimAnimator.SetBool (MecanimHashes.Fall, false);

    }

    protected void Fall (float elapsedTime)
    {
        ApplyRunning (elapsedTime);
        ApplyGravity (elapsedTime);
        
        MecanimAnimator.SetBool (MecanimHashes.Fall, false);

    }

    protected void Awaken ()
    {
        if (Mathf.Abs (CharInput.Horizontal) >= 0.8)
            _sound.Play (_sound.FastAwake, 1.0f);
        else
            _sound.Play (((int)(Time.timeSinceLevelLoad % 2)) == 0 ? _sound.SlowAwake : _sound.SlowAwake2, 1.0f);

    }

    public void Giggle ()
    {
        _sound.Play (_sound.Giggle, 1.0f);

    }

    public void PlayJump ()
    {
        _sound.Play (_sound.Jump, 1.0f);

    }

    public void SelfDestruct ()
    {
        // TODO: OBJECT POOLING
        GameObject o = (GameObject)Instantiate (MeleeEvent, transform.position, Quaternion.identity);
        o.transform.parent = GameManager.Player.transform;
        HitBox d = o.GetComponentInChildren<HitBox> ();

		float horizontalDir = 0.0f;
		if(GameManager.Player.transform.position.x < transform.position.x)
			horizontalDir = -1.0f;
		else
			horizontalDir = 1.0f;

        d.MakeBabyBotExplosion (this.gameObject, horizontalDir);

    }

}
