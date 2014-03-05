using UnityEngine;
using System.Collections;

/// <summary>
/// Item indicates an item that the player can pickup and add to it's inventory
/// </summary>
[RequireComponent(typeof(BoxCollider))]
[AddComponentMenu("Items/Item")]
public class Item : MonoBehaviour
{
	public ItemType ItemType;
	public int Quantity;
	public Transform WeaponPrefab;

    public ItemSaveState SaveState()
    {
        ItemSaveState itemSave = new ItemSaveState();

        if(WeaponPrefab != null)
            itemSave.WeaponType = WeaponPrefab.GetComponent<Weapon>().WeaponType;
        else
            itemSave.ItemType = ItemType;
        itemSave.Quantity = Quantity;
        itemSave.Position = transform.position;

        return itemSave;
    }

}
