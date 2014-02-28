﻿using UnityEngine;
using System.Collections;

/// <summary>
/// Gravity gun causes enemies to float in the air for a while.
/// </summary>
[AddComponentMenu("Items/Weaponry/Gravity Gun")]
public class GravityGun : Weapon
{
    // TODO: OBJECT POOLING FOR HITBOXES
    public GameObject GunHitbox;

	private PlayerCharacterAnimator _player;


	void Start()
	{
		_player = GameManager.Player.GetComponent<PlayerCharacterAnimator>();
	}

	public override void ActivateAttack (float attackID)
	{
        // TODO: OBJECT POOLING FOR HITBOXES
        GameObject hitbox = (GameObject) Instantiate(GunHitbox, _player.transform.position, Quaternion.identity);
        float offsetX = hitbox.collider.bounds.extents.x;
        Vector3 offset = new Vector3( (_player.Direction.x > 0 ? offsetX : -offsetX), 0, 0 );
        hitbox.transform.position = hitbox.transform.position + offset;
	}


    public override Vector3 Rotation
    {
        get { return new Vector3(270, 0, 90); }
    }
    
    public override Vector3 Translation
    {
        get { return new Vector3(0.1f, -0.05f, -0.25f); }
    }
}