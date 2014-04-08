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
    public enum ItemType : int
    {
        Item__Weapon = 0,
        Item_BatteryPack = 1,
        Item_ComputerParts = 2,
        Item_Engine = 3,
        Item_Fuel = 4,
        Item_Propellant = 5,
        Item_Binding = 6,
        Item_GunParts = 7,
        Item_HiggsDrive = 7,
        Item_Isolator = 8,
        Item_Magnet = 9,
        Item_Transmitter = 10,
        Item_Visualizer = 11

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

    void OnDestroy()
    {
        GameManager.Level.Items.Remove(this);

    }
    
}