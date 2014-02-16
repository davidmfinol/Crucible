using UnityEngine;
using System.Collections;

/// <summary>
/// Pipe weapon is the most basic of melee weapons.
/// It can be used to stun or do a stealth kill.
/// </summary>
[RequireComponent(typeof(HitBox))]
[AddComponentMenu("Weaponry/Pipe Weapon")]
public class PipeWeapon : Weapon
{
	void Start()
	{
		HitBox hitbox = GetComponent<HitBox> ();
		hitbox.Allegiance = TeamAllegiance.Player;
		hitbox.FromObject = this.gameObject;
		hitbox.FromWeaponType = WeaponType.Weapon_Melee;
		hitbox.DamageAmount = 0;
		hitbox.CanStun = true;
		hitbox.CanStealthKill = true;
	}

	public override void ActivateAttack (float attackID)
	{
		collider.enabled = true;
	}
	
	public override void Deactivate ()
	{
		collider.enabled = false;
	}
    
    public override Vector3 Rotation
    {
        get { return new Vector3(90, 0, 0); }
    }
    
    public override Vector3 Translation
    {
        get { return new Vector3(-0.1f, 0.7f, 0.1f); }
    }
}
