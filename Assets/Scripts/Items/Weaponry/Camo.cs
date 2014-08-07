using UnityEngine;
using System.Collections;

/// <summary>
/// Camo weapon allows the player to go invisible.
/// </summary>
[AddComponentMenu("Items/Weaponry/Camo")]
public class Camo : Weapon
{
    private static Texture2D _texture;

    public override void ActivateAttack(float attackID)
    {
        GameManager.PlayerShader.ActivateCamo();

    }

    public override Vector3 Translation {
        get { return new Vector3(-0.172f, -0.082f, 0.004f); }
    }

    public override Vector3 Rotation {
        get { return new Vector3(47f, 275f, 120f); }
    }

    public override WeaponType Type {
        get { return Weapon.WeaponType.Weapon_Camo; }
    }

    public override string Title {
        get { return "Camo"; }
    }
    
    public override string Description {
        get { return "By gathering visual information about your environment, the Invisibility Cloak camouflages the user based on the direction of combatants.  The tag on the device says “Caution: Doesn’t keep the user from making noise!”"; }
    }
    
    public override Texture2D IconTexture {
        get {
            if (_texture == null)
                _texture = Resources.Load <Texture2D> ("Textures/Item Icons/Weapon Icons/CamoIcon");
            return _texture;
        }
    }
}
