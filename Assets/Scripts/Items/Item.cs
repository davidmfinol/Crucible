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
        Item_TeslaPack = 1,
        Item_KamiTech = 2,
        Item_GravCtrl = 3,
        Item_EltroidKit = 4
    };


    public Item.ItemType Type;
    public int Quantity;
    public Transform WeaponPrefab;
    public bool WasPlaced;

    public Transform IndicatorOffset;
    public float IndicatorFadeSpeed = 0.5f;
    public float IndicatorFadeDistance = 15;
    public float IndicatorFadeDistance2 = 3;
    private float _midFadeDistance;

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
        indicator.transform.position = IndicatorOffset == null ? transform.position + Vector3.up * 4.5f : IndicatorOffset.transform.position + Vector3.up * 4.5f;

        GameObject sign = Instantiate(indicator) as GameObject;
        sign.transform.position = indicator.transform.position + Vector3.up * 0.75f + Vector3.back * 0.01f;
        sign.transform.localScale = new Vector3(2, 2, 2);
        sign.renderer.material.mainTexture = Type == ItemType.Item__Weapon ? WeaponPrefab.GetComponent<Weapon>().IconTexture : InventoryItemFactory.CreateFromType(Type, 1).GetTexture();

        indicator.transform.parent = transform;
        sign.transform.parent = transform;
        _midFadeDistance = (IndicatorFadeDistance + IndicatorFadeDistance2) * 0.5f;
        _itemIndicator = indicator.AddComponent<Fader>();
        _itemSign = sign.AddComponent<Fader>();

        // Register ourselves with the LevelManager
        GameManager.Level.Items.Add (this);
        transform.parent = GameManager.Level.ItemContainer;

    }
    
    // Fade the item indicator as appropriate
    void Update()
    {
        float dist = Vector3.Distance(transform.position, GameManager.Player.transform.position);
        if (dist < IndicatorFadeDistance) {
            if(dist > _midFadeDistance) {
                _itemIndicator.FadeIn(IndicatorFadeSpeed, false);
                _itemSign.FadeIn(IndicatorFadeSpeed, false);
            }
            else {
                Color currColor = _itemIndicator.renderer.material.color;
                float alpha = 0.3f + 0.7f * ((dist - IndicatorFadeDistance2) / _midFadeDistance);
                _itemIndicator.renderer.material.color = new Color (currColor.r, currColor.g, currColor.b, Mathf.Max(alpha, 0.3f));
            }
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