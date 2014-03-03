using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public enum WeaponType
{
	Weapon_Pipe,
	Weapon_MINE,
	Weapon_GravityGun
	
};

public enum ItemType
{

};

public class PlayerSaveState
{
	public List<WeaponType> WeaponsHeld;
	public List<ItemType> ItemsHeld;


	public PlayerSaveState()
	{
		WeaponsHeld = new List<WeaponType> ();
		ItemsHeld = new List<ItemType> ();
	}
}