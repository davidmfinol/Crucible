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
	
	protected override void CreateStateMachine()
	{
		StateMachine[Animator.StringToHash("Base Layer.Idle")] = Idle;
		StateMachine[Animator.StringToHash("Base Layer.Running")] = Running;
		StateMachine[Animator.StringToHash("Base Layer.Death")] = Die;
		StateMachine[Animator.StringToHash("Jumping.Jumping")] = Jumping;
		StateMachine[Animator.StringToHash("Jumping.JumpFalling")] = JumpFalling;
		StateMachine[Animator.StringToHash("Jumping.JumpLanding")] = JumpLanding;
		StateMachine[Animator.StringToHash("Falling.Falling")] = Falling;
		StateMachine[Animator.StringToHash("Falling.Landing")] = Landing;
		StateMachine[Animator.StringToHash("Hanging.Hanging")] = Hanging;
		StateMachine[Animator.StringToHash("Hanging.ClimbingLedge")] = ClimbingLedge;
		StateMachine[Animator.StringToHash("Climbing.ClimbingVertical")] = ClimbingVertical;
		StateMachine[Animator.StringToHash("Climbing.ClimbingStrafe")] = ClimbingStrafe;
	}
}
