using UnityEngine;
using System.Collections.Generic;

/// <summary>
/// Player character inventory contains information about the spawn point and weapons.
/// </summary>
[AddComponentMenu("Character/Player Character/Player Character Inventory")]
public class PlayerCharacterInventory : MonoBehaviour
{
    // Keep track of the last checkpoint here
	public Transform SpawnPoint;

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
		_rightHand = CharacterSettings.SearchHierarchyForBone(transform, "hand_R");

		Items = new List<InventoryItem> ();

		// TODO: DontDestroyOnLoad(transform.gameObject);
		// MAIN PROBLEM IS THE FACT THAT THE ITEMS ARE OFFSCREEN FOR THE LEVEL, AND ON LEVEL LOAD, THE OFFSCREEN POSITION CHANGES

		_ready = true;

	}

	public PlayerSaveState SaveState()
	{
		PlayerSaveState save = new PlayerSaveState ();

		// items
		save.ItemsHeld = Items.ToArray ();

		// weapons
		List<WeaponType> weapons = new List<WeaponType> ();
		foreach(Weapon weapon in Weapons)
			weapons.Add(weapon.WeaponType);
		
		save.WeaponsHeld = weapons.ToArray ();

		save.CurrentWeapon = GameManager.UI.CurrentWeapon;

		return save;
	}

	public void AddItem(InventoryItem newItem) {
		// if item already exists, add quantity
		foreach (InventoryItem item in Items)
			if (item.Type == newItem.Type)
			{
				item.Quantity += newItem.Quantity;
				item.Quantity = Mathf.Min (item.MaxQuantity, item.Quantity);
				Debug.Log ("Update item: " + item.Quantity + " " + item.Name);
				return;

			}	

		Items.Add (newItem);
		Debug.Log ("New item: " + newItem.Quantity + " " + newItem.Name);

	}
	
	public bool HasWeapon(Weapon w) {
		foreach (Weapon weaponHeld in Weapons)
			if (weaponHeld.WeaponType == w.WeaponType)
					return true;

		return false;

	}

	public Weapon CurrentWeapon
	{
		get { return _currentWeapon; }
		set
		{
			// Move the current weapon off screen
			if(_currentWeapon != null)
				_currentWeapon.transform.position = GameManager.Level.OffscreenPosition;

			// Move the new weapon into the player's hand
			_currentWeapon = value;
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
