using UnityEngine;
using System.Collections;

/// <summary>
/// Pipe weapon is the most basic of melee weapons.
/// It can be used to stun or do a stealth kill.
/// </summary>
[RequireComponent(typeof(HitBox))]
[AddComponentMenu("Items/Weaponry/Pipe Weapon")]
public class PipeWeapon : Weapon
{
	void Start()
	{
		HitBox hitbox = GetComponent<HitBox> ();
		hitbox.Allegiance = TeamAllegiance.Player;
		hitbox.FromObject = this.gameObject;
		hitbox.DamageAmount = 0;
		hitbox.CanStun = true;
		hitbox.CanStealthKill = false;
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
        get { return new Vector3(0, 0, 180); }
    }
    
    public override Vector3 Translation
    {
        get { return new Vector3(0.15f, 0.7f, 0.15f); }
    }

	// can the weapon stealth kill
	public override bool CanStealthKill
	{ 
		get { return true; }
	}

	public override WeaponType WeaponType
	{
		get { return WeaponType.Weapon_Pipe; }
	}

	public override string Title {
		get { return "Pipe"; }
		
	}
	
	public override string Description {
		get { return "A melee weapon that can stun enemies."; }
		
	}

	public override Texture2D GetTexture() {
		return Resources.Load <Texture2D> ("Item Icons/PipeIcon");

	}



}
