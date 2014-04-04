using UnityEngine;
using System.Collections;

/// <summary>
/// Item indicates an item that the player can pickup and add to its inventory.
/// </summary>
[RequireComponent(typeof(BoxCollider))]
[RequireComponent(typeof(OutlinePulse))]
[AddComponentMenu("Items/Item")]
public class Item : MonoBehaviour
{
    public enum ItemType
    {
        Item__Weapon,
        Item_BatteryPack,
        Item_ComputerParts,
        Item_Engine,
        Item_Fuel,
        Item_Propellant,
        Item_Binding,
        Item_GunParts,
        Item_HiggsDrive,
        Item_Isolator,
        Item_Magnet,
        Item_Transmitter,
        Item_Visualizer

    }
    ;


    public Item.ItemType Type;
    public int Quantity;
    public Transform WeaponPrefab;
    public bool WasPlaced;
    
    public ItemSaveState SaveState ()
    {
        ItemSaveState itemSave = new ItemSaveState ();

        if (WeaponPrefab != null)
            itemSave.WeaponType = WeaponPrefab.GetComponent<Weapon> ().WeaponType;
        else
            itemSave.ItemType = Type;

        itemSave.Quantity = Quantity;
        itemSave.Position = transform.position;
        itemSave.Rotation = transform.rotation;
        itemSave.WasPlaced = WasPlaced;

        return itemSave;

    }

    public void MakeFalling ()
    {
        // enable rigid body so it'll fall.
        rigidbody.useGravity = true;

    }
    
}