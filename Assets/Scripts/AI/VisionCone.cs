using UnityEngine;
using System.Collections;

/// <summary>
/// Vision Cone represents the area around an enemy AI characters where they can see.
/// </summary>
[RequireComponent(typeof(SphereCollider))]
[AddComponentMenu("AI/Vision Cone")]
public class VisionCone : MonoBehaviour
{
	// How far away the enemy can visually see the player from
	public float AwarenessRange = 25.0f;
	
	// what is the cutoff for which dot product between player & facing is invalid?
	public float ViewConeCutoff = 0.65f;

	// The stealth mode of the player affects vision
	private PlayerCharacterShader _playerShader;

	void Start()
	{
		_playerShader = GameManager.Player.GetComponent<PlayerCharacterShader> ();

	}
	
	public bool IsSeeingPlayer (Vector3 direction)
	{
		CharacterAnimator player = GameManager.Player;
		
		if (player == null || player.MecanimAnimator == null || player.IsDead)
			return false;
		
		GameObject playerGO = player.gameObject;
		
		if (playerGO == null)
			return false;
		
		
		Vector3 eyePos = transform.position;
		
		Vector3 playerPos = player.transform.position;
		float playerHalfHeight = player.Height / 2;
		
		Vector3 dirToPlayer = playerPos - eyePos;
		
		// must be closer if player is stealth.
		float visionRange = AwarenessRange;
		if ((_playerShader != null && _playerShader.InShadow))
			visionRange *= 0.3f;
		
		if (dirToPlayer.magnitude > visionRange)
			return false;
		
		//for (float y = playerPos.y; y == playerPos.y; y-= playerHalfHeight) {
		for (float y = playerPos.y + playerHalfHeight; y >= playerPos.y - playerHalfHeight; y-= playerHalfHeight) {
			Vector3 endPoint = playerPos;
			endPoint.y = y;
			
			Vector3 raycastDirection = endPoint - eyePos;
			
			// if our facing vector DOT the ray to the player is within a certain dot product range, then it's in view
			// (prevents seeing player almost directly above us.)
			Vector3 normDir = direction;
			Vector3 normToPlayer = raycastDirection.normalized;
			float fDot = Vector3.Dot (normDir, normToPlayer);
			
			Debug.DrawLine (eyePos, eyePos + normDir * 20.0f, Color.green, 0.5f, false);
			
			// only bother to cast rays that could be considered in our view cone.
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
