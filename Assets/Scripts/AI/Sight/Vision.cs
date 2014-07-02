using UnityEngine;
using System.Collections;

/// <summary>
/// Vision determines whether an NPC character is seeing the player.
/// </summary>
[AddComponentMenu("AI/Sight/Vision")]
public class Vision : MonoBehaviour
{
	// How far away the enemy can visually see the player from
	public float AwarenessRange = 35.0f;
	
	// what is the cutoff for which dot product between player & facing is invalid?
	public float ViewConeCutoff = 0.98f;

	// We have 2 methods of determining whether the player is seen: 1) Settings and 2) Collision
	public bool UseViewCone = false;

    // If we are using viewcone, list it here
	public ViewCone[] ViewCones;
	
	public bool IsSeeingPlayer (Vector3 direction)
	{
		if(UseViewCone)
			return CollisionBasedVision();
		return SettingsBasedVision(direction);

	}

	public bool SettingsBasedVision(Vector3 direction)
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

			// prevents seeing player almost directly above us.
			Vector3 normDir = direction;
			Vector3 normToPlayer = raycastDirection.normalized;
			float fDot = Vector3.Dot (normDir, normToPlayer);
			
			Debug.DrawLine (eyePos, eyePos + normDir * 20.0f, Color.green, 0.5f, false);
			
			// if our facing vector DOT the ray to the player is within a certain dot product range, then it's in view
			if (fDot >= ViewConeCutoff) {
				// only bother to cast rays that could be considered in our view cone.
				if (!Physics.Raycast (eyePos, normToPlayer, raycastDirection.magnitude, 1 << 12)) {
					Debug.DrawLine (eyePos, eyePos + normToPlayer * raycastDirection.magnitude, Color.red, 0.5f, false);
					return true;
				}
			}
			
		}
		
		return false;

	}

	public bool CollisionBasedVision()
	{
		foreach(ViewCone cone in ViewCones) {
			foreach(HeartBox character in cone.CharactersSeen) {
				if(character.Allegiance == TeamAllegiance.Player) {
                    bool clear = true;
                    foreach(Collider col in cone.Barriers.Keys) {
                        if(col.bounds.Contains(character.transform.position))
                           clear = false;
                    }
                    if(clear)
                        return true;
                }
            }
        }

		return false;

	}

    void OnDestroy()
    {
        foreach (ViewCone cone in ViewCones) {
            Destroy(cone.gameObject);
        }

    }

}
