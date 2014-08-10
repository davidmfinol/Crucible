using UnityEngine;
using System.Collections;
using System.Collections.Generic;

/// <summary>
/// Inventory manager keeps track of all the player's items.
/// </summary>
[AddComponentMenu("Items/Inventory Manager")]
public class InventoryManager : MonoBehaviour
{
    // Keep track of all the items in the player's inventory
    public List<InventoryItem> Items;

    // Keep track of all the weapons in the player's inventory
    public List<Weapon> Weapons;

    // We need to be able to find the player's right hand bone to put weapons in it
    public string PlayerRightHandName = "be_r_wrist01";
    private Transform _rightHand;
    
    // We keep track of which weapon is currently equipped here
    private Weapon _currentWeapon;

    // All managers need to let the GameManager know when it is ready
    private bool _ready;
    
    void Start ()
    {
        Weapons = new List<Weapon> ();

        Items = new List<InventoryItem> ();

        StartCoroutine (FindRightHand ());

        _ready = true;

    }

    public IEnumerator FindRightHand ()
    {
        while (GameManager.Player == null)
            yield return null;

        _rightHand = CharacterSettings.SearchHierarchyForBone (GameManager.Player.transform, PlayerRightHandName);

    }
    
    public void AddItem (InventoryItem newItem)
    {
        // If item already exists, add quantity
        foreach (InventoryItem item in Items) {
            if (item.Type == newItem.Type) {
                item.Quantity += newItem.Quantity;
                item.Quantity = Mathf.Min (item.MaxQuantity, item.Quantity);
                return;
            }
        }
        
        Items.Add (newItem);
        
    }

    public bool TryAddAmmo (Weapon w, int ammoCount)
    {
        foreach (Weapon weapon in Weapons) {
            if (weapon.Type == w.Type) {
                weapon.Quantity += ammoCount;
                weapon.Quantity = Mathf.Min (weapon.Quantity, weapon.MaxQuantity);
                return true;
            }
        }

        return false;
    
    }
    
    public bool TryRemoveItemQty (Item.ItemType t, int qty)
    {
        for (int itemIndex = Items.Count - 1; itemIndex >= 0; itemIndex--) {
            if (Items [itemIndex].Type == t) {
                Items [itemIndex].Quantity -= qty;
                Items [itemIndex].Quantity = Mathf.Max (Items [itemIndex].Quantity, 0);
                if (Items [itemIndex].Quantity == 0) {
                    Items.RemoveAt (itemIndex);
                }
                return true;
            }
        }
        
        return false;
        
    }

    public bool TryRemoveAmmo (Weapon.WeaponType t, int ammoCount)
    {
        for (int weaponIndex = Weapons.Count - 1; weaponIndex >= 0; weaponIndex--) {
            if (Weapons [weaponIndex].Type == t) {
                Weapons [weaponIndex].Quantity -= ammoCount;
                Weapons [weaponIndex].Quantity = Mathf.Max (Weapons [weaponIndex].Quantity, 0);

                if (Weapons [weaponIndex].Quantity == 0) {
                    Destroy(Weapons [weaponIndex].gameObject);
                    Weapons.RemoveAt (weaponIndex);
                    GameManager.Inventory.CurrentWeapon = null;
                    GameManager.UI.CycleToNextWeapon ();
                }

				GameManager.UI.RefreshWeaponWheel();
                return true;
            }
            
        }

        return false;

    }

    public void RemoveWeapon (Weapon.WeaponType t)
    {
        // Remove in descending order in case of more than one occurrence.
        for (int weaponIndex = Weapons.Count - 1; weaponIndex >= 0; weaponIndex--) {
            if (Weapons [weaponIndex].Type == t)
                Weapons.RemoveAt (weaponIndex);
        }

    }
    
    public bool HasWeapon (Weapon w)
    {
        foreach (Weapon weaponHeld in Weapons)
            if (weaponHeld.Type == w.Type)
                return true;
        
        return false;
        
    }
    
    public InventorySaveState SaveState ()
    {
        InventorySaveState save = new InventorySaveState ();
        
        // persist weapons as savestates since weapons themselves are monobehaviors
        List<WeaponSaveState> weaponSaves = new List<WeaponSaveState> ();
        foreach (Weapon w in Weapons)
            weaponSaves.Add (w.SaveState ());
        
        save.WeaponsHeld = weaponSaves.ToArray ();
        save.ItemsHeld = Items.ToArray ();        
        save.CurrentWeapon = GameManager.UI.CurrentWeapon;
        
        return save;
        
    }
    
    public Weapon CurrentWeapon {
        get { return _currentWeapon; }
        set {
            // Move the current weapon off screen
            if (_currentWeapon != null) {
                _currentWeapon.transform.parent = transform;
                _currentWeapon.transform.position = GameManager.Level.OffscreenPosition;
                _currentWeapon.gameObject.SetActive(false);
            }

            // Set the new weapon
            _currentWeapon = value;
            if (_currentWeapon == null || _rightHand == null) {
                if(_rightHand == null)
                    Debug.LogWarning("Player's right hand not found!");
                return;
            }

            _currentWeapon.transform.parent = _rightHand;
            _currentWeapon.transform.localPosition = _currentWeapon.Translation;
            _currentWeapon.transform.localRotation =  Quaternion.Euler(_currentWeapon.Rotation);
        }
    }

    public bool CanWeaponStealthKill {
        get { return _currentWeapon != null && _currentWeapon.CanStealthKill; }
    }
    
    public bool Ready {
        get { return _ready; }
    }
}
