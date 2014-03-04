using UnityEngine;
using System.Collections;


public enum ItemType
{
    Item_None
};

public class ItemSaveState
{
    public ItemType ItemType;
    public WeaponType WeaponType;
    public int Quantity;
    public Vector3 Position;
}
