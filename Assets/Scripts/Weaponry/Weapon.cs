using UnityEngine;
using System.Collections;

/// <summary>
/// Weapon defines a weapon that the player character can wield.
/// </summary>
[AddComponentMenu("Weaponry/Weapon")]
public class Weapon : MonoBehaviour
{
    /// <summary>
    /// Activate the weapon's attack based off its attack number
    /// </summary>
    /// <param name="attackID">a number reffering to which attack to activate</param>
    public virtual void ActivateAttack(int attackID) { }

    /// <summary>
    /// Deactivate the weapon
    /// </summary>
    public virtual void Deactivate() { }
}
