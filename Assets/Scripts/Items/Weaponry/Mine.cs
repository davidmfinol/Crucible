using UnityEngine;
using System.Collections;
using System.Collections.Generic;

/// <summary>
/// Mine is a basic explosive that can be placed onto the scene and detonated.
/// </summary>
[AddComponentMenu("Items/Weaponry/Mine")]
public class Mine : Weapon
{
    public Transform OnFieldMine;
    public Transform Explosion1;
    public Transform Explosion2;

    private static Texture2D _texture;

    public override void ActivateAttack (float attackID)
    {
        // Create the new mine on the field
        Vector3 minePos = new Vector3 (transform.position.x, transform.position.y, transform.position.z);// + 1.5f);
        Transform mineCopy = (Transform)Instantiate (OnFieldMine, minePos, Quaternion.identity);
        mineCopy.animation ["MineAboutToExplode"].speed = 2.0f;

    }
    
    public override Vector3 Translation {
        get { return new Vector3 (0.15f, 0.33f, 0.45f); }
    }
    
    public override WeaponType Type {
        get { return WeaponType.Weapon_MINE; }
    }

    public override string Title {
        get { return "M.I.N.E."; }
    }
    
    public override string Description {
        get { return "The Massive Interconnected Network of Explosives is the go-to offensive weapon against the Cogs.  It was developed after the turn of the Cogs, ingeniously devised using the tools of the KamiTech product, Eltroid Kit, plus the potentially explosive effects of the Crav-Ctrl.  The downside is that the noise typically spells the end of the survivor, as more Cogs come to inspect the cause of the explosion."; }
    }
    
    public override Texture2D IconTexture {
        get {
            if (_texture == null)
                _texture = Resources.Load <Texture2D> ("Textures/Item Icons/Weapon Icons/MINEIcon");
            return _texture;
        }
    }

}
