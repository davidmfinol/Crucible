using UnityEngine;
using System.Collections;

/// <summary>
/// Weapon defines a weapon that the player character can wield.
/// </summary>
[AddComponentMenu("Weaponry/Weapon")]
public class Weapon : MonoBehaviour
{
	public Transform GUIImage;

    /// <summary>
    /// Activate the weapon's attack based off its attack number
    /// </summary>
    /// <param name="attackID">a number reffering to which attack to activate</param>
    public virtual void ActivateAttack(float attackID = 0) { }

    /// <summary>
    /// Deactivate the weapon
    /// </summary>
    public virtual void Deactivate() { }
    
    // How the weapon should be rotated while in hand
    public virtual Vector3 Rotation
    {
        get { return Vector3.zero; }
    }
    
    // How the weapon should be translated to be in hand
    public virtual Vector3 Translation
    {
        get { return Vector3.zero; }
    }

	// can the weapon stealth kill
	public virtual bool CanStealthKill
	{
		get { return false; }
	}
}
