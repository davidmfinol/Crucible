using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class InventoryItem
{

    public Item.ItemType Type;
    public int Quantity;
    public int MaxQuantity;
    public string Name;
    public string Caption;
    public string TexturePath;
    public string CraftingCode;
    public string PrefabName;

    public Texture2D GetTexture()
    {
        // TODO: make actual inheritance hierarchy.
        Texture2D t = Resources.Load<Texture2D>(TexturePath);

        return t;

    }
    
};

// craft result could be an inventory item or a weapon.
public class CraftResult
{
    public bool IsWeapon;
    public InventoryItem InvItem;
    public Weapon.WeaponType WeaponType;
    public int WeaponQty;
    public string WeaponName;
    public string WeaponDescr;
    public string WeaponTexture;
    
};

// item factory can not only instantiate items by type, but also
// build items through an ingredients data structure + methods
public static class InventoryItemFactory
{
    private static SortedList<string, string> _ingredients = new SortedList<string, string>() ;

    public static InventoryItem CreateFromType(Item.ItemType t, int Quantity)
    {
        InventoryItem newItem = new InventoryItem();
        newItem.Type = t;
        newItem.Quantity = Quantity;

        switch (t) {

            case Item.ItemType.Item_TeslaPack: 
                newItem.MaxQuantity = 5;
                newItem.Name = "Tesla Pack";
                newItem.Caption = "One of the first inventions that put the city of Tesla 101 on the map as a leader for engineers and dreamers.  As a structural supercapacitor, it’s superior energy storage was a milestone for portable electronics and made the Tesla Pack an energy standard. ";
                newItem.TexturePath = "Textures/User Interface/Item Icons/BatteryPackIcon";
                newItem.CraftingCode = "TP";
                newItem.PrefabName = "Prefabs/Items/TeslaPack";
                break;

            case Item.ItemType.Item_KamiTech : 
                newItem.MaxQuantity = 5;
                newItem.Name = "KamiTech";
                newItem.Caption = "Modular and interchangeable standard of electronics developed by KamiTech, Inc under its CEO and founder, Dr. Toyukami.  Built under the philosophy of allowing the sum to be greater than its parts and providing more power and control to the user.";
                newItem.TexturePath = "Textures/User Interface/Item Icons/IsolatorIcon";
                newItem.CraftingCode = "KT";
                newItem.PrefabName = "Prefabs/Items/KamiTech";
                break;

            case Item.ItemType.Item_GravCtrl : 
                newItem.MaxQuantity = 5;
                newItem.Name = "Grav-Ctrl";
                newItem.Caption = "By directionally manipulating the attractions of an object, Grav-Ctrl is able to mimic the imaginations of anti-gravity.  Though intended for engineering and architectural stabilization, Grav-Ctrl became a favorite device by younger Tesla citizens for pranks and urban parkouring.";
                newItem.TexturePath = "Textures/User Interface/Item Icons/BindingIcon";
                newItem.CraftingCode = "GC";
                newItem.PrefabName = "Prefabs/Items/Grav-Ctrl";
                break;

            case Item.ItemType.Item_EltroidKit : 
                newItem.MaxQuantity = 5;
                newItem.Name = "Eltroid Kit";
                newItem.Caption = "By providing mechanisms, structural components, and control components that are designed to be an extension of KamiTech’s products, the open source project expanded KamiTech’s capabilities to work better with mechanical elements.  ";
                newItem.TexturePath = "Textures/User Interface/Item Icons/GunPartsIcon";
                newItem.CraftingCode = "EK";
                newItem.PrefabName = "Prefabs/Items/EltroidKit";
                break;

            default: 
                Debug.Log("ItemFactory: invalid item type " + t);
                break;
        }

        return newItem;

    }

    public static GameObject InstantiateFromType(Item.ItemType t, Vector3 pos)
    {
        InventoryItem i = CreateFromType(t, 1);
    
        GameObject obj = (GameObject)GameObject.Instantiate(Resources.Load(i.PrefabName), pos, Quaternion.identity);

        return obj;

    }
    
    public static void ResetIngredients()
    {
        _ingredients.Clear();

    }

    public static void AddIngredient(Item.ItemType t)
    {
        InventoryItem invItem = InventoryItemFactory.CreateFromType(t, 1);

        string codeToStore = invItem.CraftingCode;

        while (_ingredients.ContainsKey(codeToStore)) {
            codeToStore += "0";

        }

        _ingredients.Add(codeToStore, invItem.CraftingCode);

    }

    public static CraftResult GetCraftResult()
    {
        string sResult = "";

        foreach (string s in _ingredients.Values) {
            sResult += s;

        }

        // gun parts + higgs drive + isolator = gravity gun
        if (sResult == "GPHDIS") {
            CraftResult res = new CraftResult();
            res.IsWeapon = true;
            res.WeaponType = Weapon.WeaponType.Weapon_GravityGun;
            res.WeaponQty = 5;
            res.WeaponName = "Gravity Gun";
            res.WeaponDescr = "Stun enemies with antigravity blasts.";
            res.WeaponTexture = "GravityGunIcon";
            return res;

            // anything else builds a mine, except for the parts for the gravity gun.
        } else if ((sResult != "") && (!sResult.Contains("GP")) && (!sResult.Contains("HD")) && (!sResult.Contains("IS"))) {
            CraftResult res = new CraftResult();
            res.IsWeapon = true;
            res.WeaponType = Weapon.WeaponType.Weapon_HandMINE;
            res.WeaponQty = 3;
            res.WeaponName = "M.I.N.E.";
            res.WeaponDescr = "Massive Interconnected Network of Explosives.";
            res.WeaponTexture = "MINEIcon";
            return res;

        } else {
            return null;

        }
    
    }
    
};