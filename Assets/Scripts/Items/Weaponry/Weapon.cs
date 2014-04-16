using UnityEngine;
using System.Collections;

/// <summary>
/// Weapon defines a weapon that the player character can wield.
/// </summary>
[AddComponentMenu("Items/Weaponry/Weapon")]
public abstract class Weapon : MonoBehaviour
{
    public enum WeaponType : int
    {
        Weapon_None = 0,
        Weapon_PipeWeapon = 1,
        Weapon_HandMINE = 2,
        Weapon_GravityGun = 3,
		Weapon_SparkPlug = 4,
		Weapon_HoloShield = 5
        
    };


    // Refers to the ammo for this weapon
    public int Quantity;
    public int MaxQuantity;

    // Child classes should override this to allow different actions when the weapon is used
    public virtual void ActivateAttack (float attackID = 0)
    {
    }
    
    public WeaponSaveState SaveState ()
    {
        WeaponSaveState weaponSave = new WeaponSaveState ();
        
        weaponSave.WeaponType = Type;
        weaponSave.Quantity = Quantity;
        return weaponSave;
        
    }


    // How the weapon should be rotated while in hand
    public virtual Vector3 Rotation {
        get { return Vector3.zero; }
    }
    
    // How the weapon should be translated to be in hand
    public virtual Vector3 Translation {
        get { return Vector3.zero; }
    }

    // Can the weapon stealth kill?
    public virtual bool CanStealthKill {
        get { return false; }
    }

    // Each weapon keeps track of its type
    public abstract WeaponType Type {
        get;
    }

    // The rest of the properties are used to display information in the crafting menu
    public abstract string Title {
        get;
    }
    
    public abstract string Description {
        get;
    }
    
    public abstract Texture2D Texture {
        get;
    }
    
}
