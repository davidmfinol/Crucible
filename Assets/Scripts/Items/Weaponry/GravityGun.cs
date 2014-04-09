using UnityEngine;
using System.Collections;

/// <summary>
/// Gravity gun causes enemies to float in the air for a while.
/// </summary>
[AddComponentMenu("Items/Weaponry/Gravity Gun")]
public class GravityGun : Weapon
{
    // TODO: OBJECT POOLING FOR HITBOXES
    public GameObject GunHitbox;
    private static Texture2D _texture;

    public override void ActivateAttack (float attackID)
    {
        // TODO: OBJECT POOLING FOR HITBOXES
        GameObject hitbox = (GameObject)Instantiate (GunHitbox, GameManager.Player.transform.position, Quaternion.identity);
        float offsetX = hitbox.collider.bounds.extents.x;
        Vector3 offset = new Vector3 ((GameManager.Player.Direction.x > 0 ? offsetX : -offsetX), 0, 0);
        hitbox.transform.position = hitbox.transform.position + offset;

    }

    public override Vector3 Rotation {
        get { return new Vector3 (0, 90, 180); }
    }
    
    public override Vector3 Translation {
        get { return new Vector3 (0.25f, 0, -0.4f); }
    }
    
    public override WeaponType Type {
        get { return WeaponType.Weapon_GravityGun; }
    }

    public override string Title {
        get { return "Gravity Gun"; }
    }
    
    public override string Description {
        get { return "Temporarily levitates an enemy, stunning it."; }
    }

    public override Texture2D Texture {
        get { 
            if (_texture == null)
                _texture = Resources.Load <Texture2D> ("Item Icons/GravityGunIcon");
            return _texture;
        }
    }

}
