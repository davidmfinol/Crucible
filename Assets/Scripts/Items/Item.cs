using UnityEngine;
using System.Collections;

public enum ItemTypes 
{
	PipeWeapon,
	Mine,
	GravityGun
};

/// <summary>
/// Item indicates an item that the player can pickup and add to it's inventory
/// </summary>
[RequireComponent(typeof(Collider))]
[AddComponentMenu("Items/Item")]
public class Item : MonoBehaviour
{
	public ItemTypes ItemType;
	public int Quantity;
	public Transform WeaponPrefab;
}
