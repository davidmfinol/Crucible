using UnityEngine;
using System.Collections;

/// <summary>
/// Grabbable object represents an area where the player can grab onto and jump off of.
/// </summary>
[RequireComponent(typeof(Collider))]
[AddComponentMenu("Platforming/Grabbable Object")]
public class GrabbableObject : MonoBehaviour
{
	// TODO: Should move animation values to be handled internally by animator
	void OnTriggerStay(Collider other)
	{
		PlayerCharacterAnimator character = other.GetComponent<PlayerCharacterAnimator>();
		if (character != null)
		{
			// TODO: MAKE CURRENT STATE A PROPERY OF CHARACTERANIMATOR
			AnimatorStateInfo currentState = character.MecanimAnimator.IsInTransition(0) ? character.MecanimAnimator.GetNextAnimatorStateInfo(0) : character.MecanimAnimator.GetCurrentAnimatorStateInfo(0);
			character.MecanimAnimator.SetBool(Animator.StringToHash("GrabWall"), character.IsTouchingWall && currentState.IsName("Air.Jumping") );
		}
	}
}
