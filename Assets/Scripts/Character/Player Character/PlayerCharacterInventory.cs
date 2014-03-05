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
	public List<Item> Items;
	
	// We keep track of the player's hand to put weapons in it
	private Transform _rightHand;
    
    // We keep track of which weapon is currently equipped here
    private Weapon _currentWeapon;


	void Start()
	{
		_rightHand = CharacterSettings.SearchHierarchyForBone(transform, "hand_R");
	}

	public PlayerSaveState SaveState()
	{
		PlayerSaveState save = new PlayerSaveState ();

		// items
		List<ItemType> items = new List<ItemType> ();
		foreach(Item item in Items)
			items.Add(item.ItemType);

		save.ItemsHeld = items.ToArray ();

		// weapons
		List<WeaponType> weapons = new List<WeaponType> ();
		foreach(Weapon weapon in Weapons)
			weapons.Add(weapon.WeaponType);
		
		save.WeaponsHeld = weapons.ToArray ();

		save.CurrentWeapon = GameManager.UI.CurrentWeapon;

		return save;
	}
	
	
	public Weapon CurrentWeapon
	{
		get { return _currentWeapon; }
		set
		{
			// Move the current weapon off screen
			if(_currentWeapon != null)
			{
				Rect levelBounds = GameManager.Level.Boundaries;
				_currentWeapon.transform.position = new Vector3(levelBounds.xMax + 1, levelBounds.yMax + 1, 0);
			}

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
	
}
