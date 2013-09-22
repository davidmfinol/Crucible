using UnityEngine;
using System.Collections;

/// <summary>
/// Weapon defines a weapon that the player character can wield.
/// </summary>
[AddComponentMenu("Weaponry/Weapon")]
public class Weapon : MonoBehaviour
{
    public WeaponAudioPlayer sound = null;

    /// <summary>
    /// Activate the weapon's attack based off its attack number
    /// </summary>
    /// <param name="attackID">a number reffering to which attack to activate</param>
    public virtual void ActivateAttack(int attackID)
    {
        if(sound != null)
            sound.Play(attackID);
    }

    /// <summary>
    /// Deactivate the weapon
    /// </summary>
    public virtual void Deactivate() { }
}
