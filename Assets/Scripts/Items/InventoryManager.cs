using UnityEngine;
using System.Collections;
using System.Collections.Generic;

/// <summary>
/// Inventory manager keeps track of all the player's items.
/// </summary>
[AddComponentMenu("Items/Inventory Manager")]
public class InventoryManager : MonoBehaviour
{
	// Keep track of all the weapons in the player's inventory
	public List<Weapon> Weapons;
	
	// Keep track of all the items in the player's inventory
	public List<InventoryItem> Items;
	
	// We keep track of the player's hand to put weapons in it
	private Transform _rightHand;
    
    // We keep track of which weapon is currently equipped here
    private Weapon _currentWeapon;

	private bool _ready;


	void Start()
	{
        Weapons = new List<Weapon>();

		Items = new List<InventoryItem> ();

		StartCoroutine ("FindRightHand");

		_ready = true;
	}

    IEnumerator FindRightHand()
    {
        while(GameManager.Player == null)
            yield return null;

        _rightHand = CharacterSettings.SearchHierarchyForBone(GameManager.Player.transform, "hand_R");
        StopCoroutine("FindRightHand");
    }
    
    public bool HasWeapon(Weapon w)
    {
        foreach (Weapon weaponHeld in Weapons)
            if (weaponHeld.WeaponType == w.WeaponType)
                return true;
        
        return false;
    }

	public void AddItem(InventoryItem newItem)
    {
		// if item already exists, add quantity
		foreach (InventoryItem item in Items)
        {
			if (item.Type == newItem.Type)
			{
				item.Quantity += newItem.Quantity;
				item.Quantity = Mathf.Min (item.MaxQuantity, item.Quantity);
				Debug.Log ("Update item: " + item.Quantity + " " + item.Name);
				return;

			}
        }

		Items.Add (newItem);
		Debug.Log ("New item: " + newItem.Quantity + " " + newItem.Name);
	}
    
    public PlayerSaveState SaveState()
    {
        PlayerSaveState save = new PlayerSaveState ();
        
        // persist weapons as savestates since weapons themselves are monobehaviors
		List<WeaponSaveState> weaponSaves = new List<WeaponSaveState> ();

		foreach (Weapon w in Weapons) {
			weaponSaves.Add (w.SaveState());

		}

		save.WeaponsHeld = weaponSaves.ToArray ();
		save.ItemsHeld = Items.ToArray ();        
        save.CurrentWeapon = GameManager.UI.CurrentWeapon;
        
        return save;

    }

	public bool TryAddAmmo(Weapon w, int ammoCount) {
		foreach (Weapon weapon in Weapons) {
			if(weapon.WeaponType == w.WeaponType) {
				weapon.Quantity += Mathf.Min (ammoCount, weapon.MaxQuantity);
				return true;

			}

		}

		return false;
	
	}

	public void RemoveWeapon(WeaponType t) {
		// remove in descending order in case more than one occurrence.
		for(int weaponIndex = Weapons.Count - 1; weaponIndex >= 0; weaponIndex--) {
			if(Weapons[weaponIndex].WeaponType == t)
				Weapons.RemoveAt(weaponIndex);

		}

	}
	
	public Weapon CurrentWeapon
	{
		get { return _currentWeapon; }
		set
		{
			// Move the current weapon off screen
			if(_currentWeapon != null)
				_currentWeapon.transform.position = GameManager.Level.OffscreenPosition;

            // Set the new weapon
            _currentWeapon = value;
            if(_currentWeapon == null || _rightHand == null) // TODO: WARNING ABOUT NULL RIGHT HAND
                return;

			_currentWeapon.transform.parent = _rightHand;
			_currentWeapon.transform.localPosition = Vector3.zero;
			_currentWeapon.transform.rotation = _rightHand.rotation;
			_currentWeapon.transform.Rotate(_currentWeapon.Rotation);
			_currentWeapon.transform.Translate(_currentWeapon.Translation);
		}
	}

	public bool CanWeaponStealthKill
    {
		get { return _currentWeapon.CanStealthKill ; }
	}
	
	public bool Ready
	{
		get { return _ready; }
	}
}
