using UnityEngine;
using System.Collections;
using System.Collections.Generic;

/// <summary>
/// Mine is a basic explosive that can be placed onto the scene and detonated.
/// </summary>
[AddComponentMenu("Items/Weaponry/Mine")]
public class Mine : Weapon
{
    public Transform mineObject;
    public Transform explosion1;
    public Transform explosion2;
    public string IdleAnimationName = "Idle";
    public string AttackAnimationName = "Attack";
    private bool _minesCurrentlyExploding = false;
    private float _mineLastPlacedTime;
    // mines found in scene for detonation
    private Object[] _foundMines;
    private static Texture2D _texture;

    public override void ActivateAttack (float attackID)
    {
        PlaceMine ();

    }
    
    public void PlaceMine ()
    {
        // Don't place a mine if we've placed one within a past second, or if they're already exploding
        if (Time.time - _mineLastPlacedTime < 1 || _minesCurrentlyExploding)
            return;
                
        // Create the new mine
        Vector3 minePos = new Vector3 (transform.position.x, transform.position.y, transform.position.z);// + 1.5f);
        Transform mineCopy = (Transform)Instantiate (mineObject, minePos, Quaternion.identity);
        mineCopy.animation ["MineAboutToExplode"].speed = 2.0f;

        Item i = mineCopy.GetComponent<Item> ();
        i.WasPlaced = true; // flag as placed so we can detonate it.
        _mineLastPlacedTime = Time.time;

    }
    
    public void DetonateMines ()
    {
        // store mines found in scene
        _foundMines = GameObject.FindObjectsOfType (typeof(Item)); // FIXME: SLOW

        foreach (Object o in _foundMines) {
            Item i = (Item)o;
            GameObject obj = i.gameObject;

            if (i.WeaponPrefab != null && (i.WeaponPrefab.GetComponent<Mine> () != null) && i.WasPlaced) {
                obj.animation.CrossFade ("MineAboutToExplode");

            }

        }

        // Time it takes to animate mine before exploding
        StartCoroutine (AnimateExplosions (0.44f));

    }
    
    // Waits until animation is over to explode mines.
    public IEnumerator AnimateExplosions (float waitTime)
    {
        _minesCurrentlyExploding = true;

        yield return new WaitForSeconds (waitTime);

        foreach (Object o in _foundMines) {
            Item i = (Item)o;
            GameObject obj = i.gameObject;

            if (i.WeaponPrefab != null && (i.WeaponPrefab.GetComponent<Mine> () != null) && i.WasPlaced) {
                Instantiate (explosion1, obj.transform.position, Quaternion.identity);
                // TODO: SET UP HITBOX
                Instantiate (explosion2, obj.transform.position, Quaternion.identity);      

                // spawn the sound event.
                // TODO: Instantiate (GameManager.Player.Settings.MineSoundEventPrefab, obj.transform.position, Quaternion.identity);

                Destroy ((GameObject)obj);
                
            }
            
        }

        _minesCurrentlyExploding = false;

    }
    
    public override Vector3 Translation {
        get { return new Vector3 (-0.21f, 0, 0.7f); }
    }
    
    public override Vector3 Rotation {
        get { return Vector3.zero; }
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
    
    public override Texture2D Texture {
        get {
            if (_texture == null)
                _texture = Resources.Load <Texture2D> ("Textures/Item Icons/Weapon Icons/MINEIcon");
            return _texture;
        }
    }

}
