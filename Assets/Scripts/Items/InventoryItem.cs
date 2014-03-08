using UnityEngine;
using System.Collections;

public class InventoryItem {

	public ItemType Type;
	public int Quantity;
	public int MaxQuantity;
	public string Name;
	public string Caption;
	
	public Texture GetTexture() {
		// TODO: make actual inheritance hierarchy.
		return null;

	}

}