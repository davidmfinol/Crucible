using UnityEngine;
using System.Collections;

/// <summary>
/// Pipe weapon can be used to do a stealth kill.
/// </summary>
[AddComponentMenu("Items/Weaponry/Pipe Weapon")]
public class PipeWeapon : Weapon
{
    private static Texture2D _texture;

    public override Vector3 Rotation {
        get { return new Vector3 (0, 0, 180); }
    }
    
    public override Vector3 Translation {
        get { return new Vector3 (0.15f, 0.7f, 0.15f); }
    }

    public override bool CanStealthKill { 
        get { return true; }
    }

    public override WeaponType Type {
        get { return WeaponType.Weapon_PipeWeapon; }
    }

    public override string Title {
        get { return "Pipe"; }
    }
    
    public override string Description {
        get { return "A melee weapon that can destroy unaware robots."; }
    }

    public override Texture2D Texture {
        get { 
            if (_texture == null)
                _texture = Resources.Load <Texture2D> ("Item Icons/PipeIcon");
            return _texture;
        }
    }

}
