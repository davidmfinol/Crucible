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
	// TODO: HITBOXES SHOULD BE CREATED AT RUNTIME
	//private HitBox _hitbox;
    
	void Start()
	{
		//_hitbox = GetComponent<HitBox>();
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
        get { return new Vector3(90, 0, 270); }
    }
    
    public override Vector3 Translation
    {
        get { return new Vector3(-0.1f, 0.7f, 0.1f); }
    }
}
