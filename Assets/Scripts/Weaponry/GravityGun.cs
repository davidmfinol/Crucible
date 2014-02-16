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
		Vector3 shootDirection = _player.Direction.x > 0.1 ? Vector3.right : Vector3.left;
		if(Mathf.Abs(_player.Direction.x) < 0.1)
			shootDirection = Vector3.forward;
		RaycastHit[] hits = Physics.SphereCastAll(_player.transform.position, 100, shootDirection, Mathf.Infinity, 1 << 11);
		Debug.Log("shooting");
		foreach(RaycastHit hit in hits)
		{
			Debug.Log("hit something");
			OlympusAnimator Enemy = hit.collider.gameObject.GetComponent<OlympusAnimator>();
			if(Enemy != null)
			{
				Debug.Log("Best start jumping");
				//Enemy.ActivateFloat();
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
