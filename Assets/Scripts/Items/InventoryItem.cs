using UnityEngine;
using System.Collections;

public class InventoryItem {

	public ItemType Type;
	public int Quantity;
	public int MaxQuantity;

	public Texture GetTexture() {
		// TODO: make actual inheritance hierarchy.
		return null;

	}

}