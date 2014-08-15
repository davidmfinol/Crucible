using UnityEngine;
using System.Collections;

/// <summary>
/// Gravity gun causes enemies to float in the air for a while.
/// </summary>
[AddComponentMenu("Items/Weaponry/Gravity Gun")]
public class GravityGun : Weapon
{
    private static Texture2D _texture;

    public override void ActivateAttack(float attackID)
    {
        GameManager.ObjectPool.CreatePlayerGravityGun(transform.position);
        // TODO: COOL PARTICLE EFFECT

    }
    
    public override Vector3 Translation {
        get { return new Vector3(0.38f, 0.25f, -0.05f); }
    }

    public override Vector3 Rotation {
        get { return new Vector3(0, 270, 90); }
    }
    
    public override WeaponType Type {
        get { return WeaponType.Weapon_GravityGun; }
    }

    public override string Title {
        get { return "Gravity Gun"; }
    }
    
    public override string Description {
        get { return "Non-lethal and painless device given to police enforcement to handle those disturbing the peace.  "; }
    }

    public override Texture2D IconTexture {
        get { 
            if (_texture == null) {
                _texture = Resources.Load <Texture2D>("Textures/Item Icons/Weapon Icons/GravityGunIcon");
            }
            return _texture;
        }
    }

}
