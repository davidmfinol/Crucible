﻿using UnityEngine;
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

    public Transform IndicatorOffset;
    public float IndicatorFadeSpeed = 0.5f;
    public float IndicatorFadeDistance = 15;

    private Fader _itemIndicator;
    private Fader _itemSign;

    void Start()
    {
        // Make sure our settings are correct
        collider.isTrigger = false;
        rigidbody.constraints = RigidbodyConstraints.FreezePositionZ;
        rigidbody.freezeRotation = true;
        gameObject.layer = LayerMask.NameToLayer ("Item"); // NOTE: THIS DOESN'T WORK WITH HOLOSHIELD OBJECT

        // Make the item have an indicator appear above it
        string type = Type == ItemType.Item__Weapon ? "Weapon" : "Item";
        GameObject indicator = Instantiate(Resources.Load("Prefabs/" + type + "Indicator")) as GameObject;
        indicator.transform.position = IndicatorOffset == null ? transform.position + Vector3.up * 2.5f : IndicatorOffset.transform.position + Vector3.up * 2.5f;

        GameObject sign = Instantiate(indicator) as GameObject;
        sign.transform.position = indicator.transform.position + Vector3.up * 0.5f + Vector3.back * 0.5f;
        sign.transform.localScale = new Vector3(1, 1, 1);
        sign.renderer.material.mainTexture = Type == ItemType.Item__Weapon ? WeaponPrefab.GetComponent<Weapon>().Texture : InventoryItemFactory.CreateFromType(Type, 1).GetTexture();

        indicator.transform.parent = transform;
        sign.transform.parent = transform;
        _itemIndicator = indicator.AddComponent<Fader>();
        _itemSign = sign.AddComponent<Fader>();

        // Register ourselves with the LevelManager
        GameManager.Level.Items.Add (this);
        transform.parent = GameManager.Level.ItemContainer;

    }
    
    // Fade the item indicator as appropriate
    void Update()
    {
        if (Vector3.Distance (transform.position, GameManager.Player.transform.position) < IndicatorFadeDistance) {
            _itemIndicator.FadeIn(IndicatorFadeSpeed, false);
            _itemSign.FadeIn(IndicatorFadeSpeed, false);
        }
        else {
            _itemIndicator.FadeOut(IndicatorFadeSpeed, false);
            _itemSign.FadeOut(IndicatorFadeSpeed, false);
        }

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