using UnityEngine;
using System.Collections;

public class Weapon : MonoBehaviour
{
    public WeaponAudioSource sound = null;

    /// <summary>
    /// Activate the weapon's attack based off its attack number
    /// </summary>
    /// <param name="attackID"></param>
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
