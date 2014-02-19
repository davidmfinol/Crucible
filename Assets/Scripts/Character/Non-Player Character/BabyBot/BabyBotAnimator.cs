﻿using UnityEngine;
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


	protected override void CreateStateMachine()
	{
		// First map the states
		StateMachine[Animator.StringToHash("Base Layer.Idle")] = Idle;
		StateMachine[Animator.StringToHash("Base Layer.Awake")] = Idle;
		StateMachine[Animator.StringToHash("Base Layer.Run")] = Run;
		StateMachine[Animator.StringToHash("Base Layer.Attack")] = Attack;
		StateMachine[Animator.StringToHash("Air.Landing")] = Run;
		StateMachine[Animator.StringToHash("Air.Jumping")] = Jump;
		StateMachine[Animator.StringToHash("Air.Falling")] = Fall;

		// Then hash the variables
		_awakeHash = Animator.StringToHash ("Awake");
		_horizontalSpeedHash = Animator.StringToHash ("HorizontalSpeed");
		_attackHash = Animator.StringToHash("Attack");
		_fallHash = Animator.StringToHash("Fall");
		_jumpHash = Animator.StringToHash("Jump");
		_isGroundedHash = Animator.StringToHash("IsGrounded");
	}
	protected override void UpdateMecanimVariables ()
	{
		MecanimAnimator.SetBool (_fallHash, !IsGrounded);
		MecanimAnimator.SetBool (_isGroundedHash, IsGrounded);
	}
	protected void Idle(float elapsedTime)
	{
		if (CharInput.Left || CharInput.Right)
			MecanimAnimator.SetBool (_awakeHash, true);
		HorizontalSpeed = 0;
		VerticalSpeed = GroundVerticalSpeed;
		ApplyBiDirection ();
		MecanimAnimator.SetBool (_jumpHash, CharInput.JumpActive);
	}
	protected void Run(float elapsedTime)
	{
		MecanimAnimator.SetBool (_awakeHash, false);
		MecanimAnimator.SetFloat (_horizontalSpeedHash, Mathf.Abs(CharInput.Horizontal));
		HorizontalSpeed = 0;
		VerticalSpeed = GroundVerticalSpeed;
		ApplyBiDirection ();
		MecanimAnimator.SetBool (_jumpHash, CharInput.JumpActive);
		MecanimAnimator.SetBool (_attackHash, CharInput.AttackActive);
	}
	protected void Attack(float elapsedTime)
	{
		if (!MecanimAnimator.GetBool (_attackHash))
			return;

		MecanimAnimator.SetBool(_attackHash, false);
		//MecanimAnimator.applyRootMotion = false;

		Controller.enabled = false;
		IgnoreDirection = true;

		Transform selfRoot = CharacterSettings.SearchHierarchyForBone(transform, Settings.RootBoneName);
		Transform playerRoot = CharacterSettings.SearchHierarchyForBone(GameManager.Player.transform, GameManager.Player.transform.GetComponent<CharacterSettings>().RootBoneName);
		transform.parent = GameManager.Player.transform;
		Vector3 move = transform.localPosition;
		transform.localPosition = Vector3.zero;
		selfRoot.position = selfRoot.position + move;
	}
	protected override List<int> DefineRootMotionCorrectionState()
	{
		List<int> states = new List<int> ();
		states.Add (Animator.StringToHash ("Base Layer.Attack"));
		return states;
	}
	protected void Jump(float elapsedTime)
	{
		if(Mathf.Abs(CharInput.Horizontal) > 0.1)
			ApplyRunning(elapsedTime/2.0f);
		
		if(MecanimAnimator.GetBool(_jumpHash))
		{
			if(CharInput.JumpLeft || CharInput.JumpLeftReleased)
				HorizontalSpeed = -1.0f * Settings.MaxHorizontalSpeed;
			else if(CharInput.JumpRight || CharInput.JumpRightReleased)
				HorizontalSpeed = 1.0f * Settings.MaxHorizontalSpeed;
			
			VerticalSpeed = Mathf.Sqrt(2 * Settings.JumpHeight * Settings.Gravity);
			MecanimAnimator.SetBool(_jumpHash, false);
		}
		else
			ApplyGravity(elapsedTime);
		
		if(transform.position.y >= LastGroundHeight - 1)
			MecanimAnimator.SetBool(_fallHash, false);
	}
	protected void Fall(float elapsedTime)
	{
		ApplyRunning(elapsedTime);
		ApplyGravity(elapsedTime);
		
		MecanimAnimator.SetBool(_fallHash, false);
	}

    public void SelfDestruct()
    {
        GameObject o = (GameObject) Instantiate (MeleeEvent, transform.position, Quaternion.identity);
        HitBox d = o.GetComponentInChildren<HitBox> ();
        d.MakeBabyBotExplosion(this.gameObject);
    }
}