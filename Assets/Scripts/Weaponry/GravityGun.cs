using UnityEngine;
using System.Collections;

/// <summary>
/// Gravity gun causes enemies to float in the air for a while.
/// </summary>
[AddComponentMenu("Weaponry/Gravity Gun")]
public class GravityGun : Weapon
{
	public override void ActivateAttack (int attackID)
	{
		//Physics.RaycastAll();
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
