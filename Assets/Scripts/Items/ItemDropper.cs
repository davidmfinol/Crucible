using UnityEngine;
using System.Collections;
using System.Collections.Generic;

/// <summary>
/// Item dropper can be used to drop items when enemies are killed, etc.
/// </summary>
[AddComponentMenu("Items/Item Dropper")]
public class ItemDropper : MonoBehaviour
{
    public List<Item.ItemType> ItemsToDrop;
        
    // Drop items at the position specified
    public void AddItem(Item.ItemType t)
    {
        ItemsToDrop.Add(t);

    }

    public void DropItems(Vector3 pos)
    {
        foreach (Item.ItemType t in ItemsToDrop) {
            float randX = Random.Range(-1.0f, 1.0f); // Randomize the drop a bit.
            Vector3 dropPos = new Vector3(pos.x + randX, pos.y, pos.z);
            InventoryItemFactory.InstantiateFromType(t, dropPos);

        }

    }
    
}