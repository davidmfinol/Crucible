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

	public static string GetCraftResult() {
		string sResult = "";

		foreach (string s in _ingredients.Values) {
			sResult += s;

		}

		if(sResult == "CPPR") {
			return "Moving Computer";

		} else if(sResult == "CPEN") {
			return "Computer Car";

		} else if(sResult == "ENENEN") {
			return "Triple engine";

		} else {
			return "Unknown Item:\n" + sResult;

		}
	
	}
	
};