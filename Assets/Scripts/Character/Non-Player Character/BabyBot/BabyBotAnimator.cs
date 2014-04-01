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

    // Mecanim hashes
    private int _awakeHash;
    private int _horizontalSpeedHash;
    private int _attackHash;
    private int _fallHash;
    private int _jumpHash;
    private int _isGroundedHash;
    private BabybotAudioPlayer _sound;

    protected override void OnStart ()
    {
        _sound = GetComponentInChildren<BabybotAudioPlayer> ();

    }

    protected override void CreateStateMachine ()
    {
        // First map the states
        StateMachine [Animator.StringToHash ("Base Layer.Idle")] = Idle;
        StateMachine [Animator.StringToHash ("Base Layer.Awake")] = Idle;
        StateMachine [Animator.StringToHash ("Base Layer.Run")] = Run;
        StateMachine [Animator.StringToHash ("Base Layer.Attack")] = Attack;
        StateMachine [Animator.StringToHash ("Air.Landing")] = Run;
        StateMachine [Animator.StringToHash ("Air.Jumping")] = Jump;
        StateMachine [Animator.StringToHash ("Air.Falling")] = Fall;

        // Then hash the variables
        _awakeHash = Animator.StringToHash ("Awake");
        _horizontalSpeedHash = Animator.StringToHash ("HorizontalSpeed");
        _attackHash = Animator.StringToHash ("Attack");
        _fallHash = Animator.StringToHash ("Fall");
        _jumpHash = Animator.StringToHash ("Jump");
        _isGroundedHash = Animator.StringToHash ("IsGrounded");

    }

    protected override void UpdateMecanimVariables ()
    {
        MecanimAnimator.SetBool (_fallHash, !IsGrounded);
        MecanimAnimator.SetBool (_isGroundedHash, IsGrounded);

    }

    protected void Idle (float elapsedTime)
    {
        _sound.DelayedStop ();
        if (CharInput.Left || CharInput.Right)
            MecanimAnimator.SetBool (_awakeHash, true);
        HorizontalSpeed = 0;
        VerticalSpeed = GroundVerticalSpeed;
        ApplyBiDirection ();
        MecanimAnimator.SetBool (_jumpHash, CharInput.JumpActive);

    }

    protected void Run (float elapsedTime)
    {
        if (TimeInCurrentState == 0)
            _sound.PlayLoop (_sound.Running, 1.0f); //TODO: Make baby bot sounds separate footsteps as well and add animation event
        MecanimAnimator.SetBool (_awakeHash, false);
        MecanimAnimator.SetFloat (_horizontalSpeedHash, Mathf.Abs (CharInput.Horizontal));
        HorizontalSpeed = 0;
        VerticalSpeed = GroundVerticalSpeed;
        ApplyBiDirection ();
        MecanimAnimator.SetBool (_jumpHash, CharInput.JumpActive);
        MecanimAnimator.SetBool (_attackHash, CharInput.AttackActive);

    }

    protected void Attack (float elapsedTime)
    {
        if (!MecanimAnimator.GetBool (_attackHash))
            return;

        // Set up mecanim
        MecanimAnimator.SetBool (_attackHash, false);
        //MecanimAnimator.applyRootMotion = false;

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

    protected override List<int> DefineRootMotionCorrectionState ()
    {
        List<int> states = new List<int> ();
        states.Add (Animator.StringToHash ("Base Layer.Attack"));
        return states;

    }

    protected void Jump (float elapsedTime)
    {
        if (Mathf.Abs (CharInput.Horizontal) > 0.1)
            ApplyRunning (elapsedTime * 0.5f);
        
        if (MecanimAnimator.GetBool (_jumpHash)) {
            if (CharInput.JumpLeft || CharInput.JumpLeftReleased)
                HorizontalSpeed = -1.0f * Settings.MaxHorizontalSpeed;
            else if (CharInput.JumpRight || CharInput.JumpRightReleased)
                HorizontalSpeed = 1.0f * Settings.MaxHorizontalSpeed;
            
            VerticalSpeed = Mathf.Sqrt (2 * Settings.JumpHeight * Settings.Gravity);
            MecanimAnimator.SetBool (_jumpHash, false);
        } else
            ApplyGravity (elapsedTime);
        
        if (transform.position.y >= LastGroundHeight - 1)
            MecanimAnimator.SetBool (_fallHash, false);

    }

    protected void Fall (float elapsedTime)
    {
        ApplyRunning (elapsedTime);
        ApplyGravity (elapsedTime);
        
        MecanimAnimator.SetBool (_fallHash, false);

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
