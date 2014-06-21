using UnityEngine;
using System.Collections;

/// <summary>
/// Vision represents the area around an enemy AI character where it can see.
/// </summary>
[AddComponentMenu("AI/Vision")]
public class Vision : MonoBehaviour
{
	// How far away the enemy can visually see the player from
	public float AwarenessRange = 25.0f;
	
	// TODO: what is the cutoff for which dot product between player & facing is invalid?
	public float ViewConeCutoff = 0.65f;
	
	public bool IsSeeingPlayer (Vector3 direction)
	{
		// First make sure that a living player exists
		CharacterAnimator player = GameManager.Player;
		if (player == null || player.MecanimAnimator == null || player.IsDead)
			return false;

		// Then make sure that the player is within range 
		Vector3 playerPos = player.transform.position;
		if (Vector3.Distance(playerPos, transform.position) > AwarenessRange)
			return false;

		// Finally, make sure that view to the player isn't completely blocked by obstacles
		float playerHalfHeight = player.Height / 2;
		for (float y = playerPos.y + playerHalfHeight; y >= playerPos.y - playerHalfHeight; y-= playerHalfHeight) {
			Vector3 endPoint = playerPos;
			endPoint.y = y;

			Vector3 eyePos = transform.position;
			Vector3 raycastDirection = endPoint - eyePos;
			
			// if our facing vector DOT the ray to the player is within a certain dot product range, then it's in view
			// TODO: (prevents seeing player almost directly above us.)
			Vector3 normDir = direction;
			Vector3 normToPlayer = raycastDirection.normalized;
			float fDot = Vector3.Dot (normDir, normToPlayer);
			
			Debug.DrawLine (eyePos, eyePos + normDir * 20.0f, Color.green, 0.5f, false);
			
			// TODO: only bother to cast rays that could be considered in our view cone.
			if (fDot >= ViewConeCutoff) {
				if (!Physics.Raycast (eyePos, normToPlayer, raycastDirection.magnitude, 1 << 12)) {
					Debug.DrawLine (eyePos, eyePos + normToPlayer * raycastDirection.magnitude, Color.red, 0.5f, false);
					return true;
				}
			}
			
		}
		
		return false;

	}

}
