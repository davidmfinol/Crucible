using UnityEngine;
using System.Collections;

/// <summary>
/// Gravity gun causes enemies to float in the air for a while.
/// </summary>
[AddComponentMenu("Weaponry/Gravity Gun")]
public class GravityGun : Weapon
{
	
    
    public override Vector3 Rotation
    {
        get { return new Vector3(90, 0, 90); }
    }
    
    public override Vector3 Translation
    {
        get { return new Vector3(0.2f, 0.1f, 0.1f); }
    }
}
