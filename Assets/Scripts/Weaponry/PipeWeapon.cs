using UnityEngine;
using System.Collections;

/// <summary>
/// Pipe weapon is the most basic of melee weapons.
/// It should just spawn a hitbox when you attack with it (instead of re-using the same one like current).
/// </summary>
[RequireComponent(typeof(HitBox))]
[AddComponentMenu("Weaponry/Pipe Weapon")]
public class PipeWeapon : Weapon
{
	private HitBox _hitbox;
	// TODO: HITBOXES SHOULD BE CREATED AT RUNTIME
    
	void Start()
	{
		_hitbox = GetComponent<HitBox>();
	}
	
	public override void ActivateAttack (int attackID)
	{
		collider.enabled = true;
	}
	
	public override void Deactivate ()
	{
		collider.enabled = false;
	}
    
    public override Vector3 Rotation
    {
        get { return base.Rotation; }
    }
    
    public override Vector3 Translation
    {
        get { return base.Translation; }
    }
}
