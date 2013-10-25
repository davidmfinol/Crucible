using UnityEngine;
using System.Collections;

/// <summary>
/// Gravity gun causes enemies to float in the air for a while.
/// </summary>
[AddComponentMenu("Weaponry/Gravity Gun")]
public class GravityGun : Weapon
{
	
	private PlayerCharacterAnimator _player;
	
	void Start()
	{
		_player = GameManager.Player.GetComponent<PlayerCharacterAnimator>();
	}
	public override void ActivateAttack (int attackID)
	{
		// TODO: clean this up
		if(_player.Direction.x > 0.1)
		{
			RaycastHit[] hits = Physics.RaycastAll(transform.position, Vector3.right, Mathf.Infinity);
			foreach(RaycastHit hit in hits)
			{
				ZombieAnimator zombie = hit.collider.gameObject.GetComponent<ZombieAnimator>();
				if(zombie != null)
				{
					zombie.ActivateFloat();
				}
			}
		}
		else if(_player.Direction.x < 0.1)
		{
			RaycastHit[] hits = Physics.RaycastAll(transform.position, Vector3.left, Mathf.Infinity);
			foreach(RaycastHit hit in hits)
			{
				ZombieAnimator zombie = hit.collider.gameObject.GetComponent<ZombieAnimator>();
				if(zombie != null)
				{
					zombie.ActivateFloat();
				}
			}
		}
	}
	
    public override Vector3 Rotation
    {
        get { return new Vector3(270, 80, 90); }
    }
    
    public override Vector3 Translation
    {
        get { return new Vector3(0.1f, -0.05f, -0.25f); }
    }
}
