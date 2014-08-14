using UnityEngine;
using System.Collections;

/// <summary>
/// ASharp distracts enemy robots by making a sound at the thrown location.
/// </summary>
[AddComponentMenu("Items/Weaponry/ASharp")]
public class ASharp : Weapon
{
    private static Texture2D _texture;
    
    public override void ActivateAttack(float attackID)
    {
        // TODO: 
        
    }
    
    public override Vector3 Translation {
        get { return Vector3.zero; }
    }
    
    public override Vector3 Rotation {
        get { return Vector3.zero; }
    }
    
    public override WeaponType Type {
        get { return Weapon.WeaponType.Weapon_ASharp; }
    }
    
    public override string Title {
        get { return "ASharp"; }
    }
    
    public override string Description {
        get { return "Used to incapacitate malfunctioning Cogs.  By releasing a constant stream of high-frequency, covert acoustical networking transmissions the A-Sharp is able to aggravate the internal processing of Cogs.  If in the sound radius of the device, Cogs will flock to the device to destroy it."; }
    }
    
    public override Texture2D IconTexture {
        get {
            if (_texture == null) {
                _texture = Resources.Load <Texture2D>("Textures/Item Icons/Weapon Icons/ASharpIcon");
            }
            return _texture;
        }
    }
}
