using UnityEngine;
using System.Collections;

/// <summary>
/// Veto weapons allows the player to control enemy robots.
/// </summary>
[AddComponentMenu("Items/Weaponry/Veto")]
public class Veto : Weapon
{
    // TODO: OBJECT POOLING FOR HITBOXES
    public GameObject GunHitbox;
    private static Texture2D _texture;
    
    public override void ActivateAttack(float attackID)
    {
        // TODO: OBJECT POOLING FOR HITBOXES
        GameObject hitbox = (GameObject)Instantiate(GunHitbox, GameManager.Player.transform.position, Quaternion.identity);
        float offsetX = hitbox.collider.bounds.extents.x;
        Vector3 offset = new Vector3((GameManager.Player.Direction.x > 0 ? offsetX : -offsetX), 0, 0);
        hitbox.transform.position = hitbox.transform.position + offset;
        
    }
    
    public override Vector3 Translation {
        get { return Vector3.zero; }
    }
    
    public override Vector3 Rotation {
        get { return Vector3.zero; }
    }
    
    public override WeaponType Type {
        get { return Weapon.WeaponType.Weapon_VETO; }
    }
    
    public override string Title {
        get { return "V.E.T.O"; }
    }
    
    public override string Description {
        get { return "The Vicious Electronic Topology Override allowed for programmers to manipulate primarily malfunctioning Cogs.  Used for testing and bug-fixing.  "; }
    }
    
    public override Texture2D IconTexture {
        get {
            if (_texture == null) {
                _texture = Resources.Load <Texture2D>("Textures/Item Icons/Weapon Icons/VETOIcon");
            }
            return _texture;
        }
    }
}
