using UnityEngine;
using System.Collections;

/// <summary>
/// MSweep causes a gravity bubble in a set area to stop nearby enemies.
/// </summary>
[AddComponentMenu("Items/Weaponry/MSweep")]
public class MSweep : Weapon
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
        get { return Weapon.WeaponType.Weapon_MSweep; }
    }
    
    public override string Title {
        get { return "MSweep"; }
    }
    
    public override string Description {
        get { return "Used as a tool to gather scrap metal and clean up the industrial area, it stayed stabilized while drifting through the environment despite the heavy metal that is attracted to it by its Grav-Ctrl.  Will lose its magnetism after a while if other magnetic materials rub against it, such as unfortunate Cogs. "; }
    }
    
    public override Texture2D IconTexture {
        get {
            if (_texture == null) {
                _texture = Resources.Load <Texture2D>("Textures/Item Icons/Weapon Icons/MSweepIcon");
            }
            return _texture;
        }
    }
}
