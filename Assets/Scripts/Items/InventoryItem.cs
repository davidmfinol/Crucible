using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class InventoryItem {

	public Item.ItemType Type;
	public int Quantity;
	public int MaxQuantity;
	public string Name;
	public string Caption;
	public string TexturePath;
	public string CraftingCode;

	public Texture2D GetTexture() {
		// TODO: make actual inheritance hierarchy.
		Texture2D t = Resources.Load<Texture2D>(TexturePath);

		return t;

	}
	
};

// craft result could be an inventory item or a weapon.
public class CraftResult {
	public bool IsWeapon;
	public InventoryItem InvItem;

	public WeaponType WeaponType;
	public int WeaponQty;
	public string WeaponName;
	public string WeaponDescr;
	public string WeaponTexture;
	
};

// item factory can not only instantiate items by type, but also
// build items through an ingredients data structure + methods
public static class InventoryItemFactory {
	private static SortedList<string, string> _ingredients = new SortedList<string, string>() ;

	public static InventoryItem CreateFromType(Item.ItemType t, int Quantity) {
		InventoryItem newItem = new InventoryItem();
		newItem.Type = t;
		newItem.Quantity = Quantity;
		
		if (t == Item.ItemType.Item_BatteryPack) {
			newItem.MaxQuantity = 5;
			newItem.Name = "Battery Pack";
			newItem.Caption = "Used to power various devices.";
			newItem.TexturePath = "BatteryPackIcon";
			newItem.CraftingCode = "BP";

		} else if(t == Item.ItemType.Item_ComputerParts) {
			newItem.MaxQuantity = 5;
			newItem.Name = "Computer Parts";
			newItem.Caption = "Components to build electronic devices.";
			newItem.TexturePath = "ComputerPartsIcon";
			newItem.CraftingCode = "CP";

		} else if(t == Item.ItemType.Item_Engine) {
			newItem.MaxQuantity = 5;
			newItem.Name = "Engine";
			newItem.Caption = "Powers various moving devices.";
			newItem.TexturePath = "EngineIcon";
			newItem.CraftingCode = "EN";
		
		} else if(t == Item.ItemType.Item_Fuel) {
			newItem.MaxQuantity = 5;
			newItem.Name = "Fuel";
			newItem.Caption = "Fuel for various devices";
			newItem.TexturePath = "FuelIcon";
			newItem.CraftingCode = "FU";

		} else if(t == Item.ItemType.Item_Propellant) {
			newItem.MaxQuantity = 5;
			newItem.Name = "Propellant";
			newItem.Caption = "Used to propel devices";
			newItem.TexturePath = "PropellantIcon";
			newItem.CraftingCode = "PR";

		} else if(t == Item.ItemType.Item_Binding) {
			newItem.MaxQuantity = 5;
			newItem.Name = "Binding";
			newItem.Caption = "Binds two craftable items together.";
			newItem.TexturePath = "BindingIcon";
			newItem.CraftingCode = "BN";

		} else if(t == Item.ItemType.Item_GunParts) {
			newItem.MaxQuantity = 5;
			newItem.Name = "Guns Parts";
			newItem.Caption = "Used to build projectile weapons.";
			newItem.TexturePath = "GunPartsIcon";
			newItem.CraftingCode = "GP";

		} else if(t == Item.ItemType.Item_HiggsDrive) {
			newItem.MaxQuantity = 5;
			newItem.Name = "Higgs Drive";
			newItem.Caption = "Powers anti-gravity devices.";
			newItem.TexturePath = "HiggsDriveIcon";
			newItem.CraftingCode = "HD";

		} else if(t == Item.ItemType.Item_Isolator) {
			newItem.MaxQuantity = 5;
			newItem.Name = "Isolator";
			newItem.Caption = "Stores energy for energy-based devices.";
			newItem.TexturePath = "IsolatorIcon";
			newItem.CraftingCode = "IS";

		} else if(t == Item.ItemType.Item_Magnet) {
			newItem.MaxQuantity = 5;
			newItem.Name = "Magnet";
			newItem.Caption = "Required to construct magnetic devices.";
			newItem.TexturePath = "MagnetIcon";
			newItem.CraftingCode = "MG";

		} else if(t == Item.ItemType.Item_Transmitter) {
			newItem.MaxQuantity = 5;
			newItem.Name = "Transmitter";
			newItem.Caption = "Used to construct devices that operate remotely.";
			newItem.TexturePath = "TransmitterIcon";
			newItem.CraftingCode = "TR";

		} else if(t == Item.ItemType.Item_Visualizer) {
			newItem.MaxQuantity = 5;
			newItem.Name = "Visualizer";
			newItem.Caption = "An imaging unit to build holographic devices.";
			newItem.TexturePath = "VisualizerIcon";
			newItem.CraftingCode = "VS";

		} else {
			Debug.Log ("ItemFactory: invalid item type " + t);

		}

		return newItem;
	}

	public static void ResetIngredients() {
		_ingredients.Clear ();
	}

	public static void AddIngredient(Item.ItemType t) {
		InventoryItem invItem = InventoryItemFactory.CreateFromType (t, 1);

		string codeToStore = invItem.CraftingCode;

		while (_ingredients.ContainsKey(codeToStore)) {
			codeToStore += "0";

		}

		_ingredients.Add (codeToStore, invItem.CraftingCode);

	}

	public static CraftResult GetCraftResult() {
		string sResult = "";

		foreach (string s in _ingredients.Values) {
			sResult += s;

		}

		// gun parts + higgs drive + isolator = gravity gun
		if(sResult == "GPHDIS") {
			CraftResult res = new CraftResult();
			res.IsWeapon = true;
			res.WeaponType = WeaponType.Weapon_GravityGun;
			res.WeaponQty = 5;
			res.WeaponName = "Gravity Gun";
			res.WeaponDescr = "Stun enemies with antigravity blasts.";
			res.WeaponTexture = "GravityGunIcon";
			return res;

		// anything else builds a mine, except for the parts for the gravity gun.
		} else if((sResult != "") && (!sResult.Contains("GP")) && (!sResult.Contains("HD")) && (!sResult.Contains("IS"))) {
			CraftResult res = new CraftResult();
			res.IsWeapon = true;
			res.WeaponType = WeaponType.Weapon_MINE;
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