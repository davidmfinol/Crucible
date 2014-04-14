using UnityEngine;
using System.Collections;

/// <summary>
/// Spark Plug used to do a stealth kill.
/// </summary>
[AddComponentMenu("Items/Weaponry/Spark Plug")]
public class SparkPlug : Weapon
{

    private static Texture2D _texture;
    
    public override Vector3 Rotation {
        get { return new Vector3(90, 0, -90); }
    }
    
    public override Vector3 Translation {
        get { return new Vector3(-0.1f, -0.69f, 0); }
    }
    
    public override bool CanStealthKill { 
        get { return true; }
    }
    
    public override WeaponType Type {
        get { return WeaponType.Weapon_SparkPlug; }
    }
    
    public override string Title {
        get { return "Spark Plug"; }
    }
    
    public override string Description {
        get { return "An electronic weapon that can short-circuit robots."; }
    }
    
    public override Texture2D Texture {
        get { 
            if (_texture == null)
                _texture = Resources.Load <Texture2D> ("Textures/User Interface/Item Icons/SparkPlugIcon");
            return _texture;
        }
    }

}
