using UnityEngine;
using System.Collections;

public class InventoryItem {

	public Item.ItemType Type;
	public int Quantity;
	public int MaxQuantity;
	public string Name;
	public string Caption;
	public string TexturePath;
	
	public Texture2D GetTexture() {
		// TODO: make actual inheritance hierarchy.
		Texture2D t = Resources.Load<Texture2D>(TexturePath);

		return t;

	}
	
};

public static class InventoryItemFactory {
	public static InventoryItem CreateFromType(Item.ItemType t, int Quantity) {
		InventoryItem newItem = new InventoryItem();
		newItem.Type = t;
		newItem.Quantity = Quantity;
		
		if (t == Item.ItemType.Item_BatteryPack) {
			newItem.MaxQuantity = 5;
			newItem.Name = "Battery Pack";
			newItem.Caption = "Used to power various devices.";
			newItem.TexturePath = "BatteryPackIcon";

		} else if(t == Item.ItemType.Item_ComputerParts) {
			newItem.MaxQuantity = 5;
			newItem.Name = "Computer Parts";
			newItem.Caption = "Components to build electronic devices.";
			newItem.TexturePath = "ComputerPartsIcon";

		} else if(t == Item.ItemType.Item_Engine) {
			newItem.MaxQuantity = 5;
			newItem.Name = "Engine";
			newItem.Caption = "EngineIcon";

		} else if(t == Item.ItemType.Item_Fuel) {
			newItem.MaxQuantity = 5;
			newItem.Name = "Fuel";
			newItem.Caption = "FuelIcon";

		} else if(t == Item.ItemType.Item_Propellant) {
			newItem.MaxQuantity = 5;
			newItem.Name = "Propellant";
			newItem.Caption = "PropellantIcon";

		} else {
			Debug.Log ("ItemFactory: invalid item type " + t);

		}

		return newItem;
	}
	
};