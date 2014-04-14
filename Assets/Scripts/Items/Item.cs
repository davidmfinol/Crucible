using UnityEngine;
using System.Collections;

/// <summary>
/// Item indicates an item that the player can pickup and add to its inventory.
/// </summary>
[RequireComponent(typeof(Rigidbody))]
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
        Item_HiggsDrive = 8,
        Item_Isolator = 9,
        Item_Magnet = 10,
        Item_Transmitter = 11,
        Item_Visualizer = 12,
		Item_HoloShield = 13,

    };


    public Item.ItemType Type;
    public int Quantity;
    public Transform WeaponPrefab;
    public bool WasPlaced;

    void Start()
    {
        // Make sure our collider is correct
        collider.isTrigger = false;

        // Register ourselves with the LevelManager
        GameManager.Level.Items.Add (this);
        transform.parent = GameManager.Level.ItemContainer;

    }
    
    public ItemSaveState SaveState ()
    {
        ItemSaveState itemSave = new ItemSaveState ();

        if (WeaponPrefab != null)
            itemSave.WeaponType = WeaponPrefab.GetComponent<Weapon> ().Type;
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