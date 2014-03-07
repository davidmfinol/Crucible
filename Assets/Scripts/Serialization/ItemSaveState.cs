using UnityEngine;
using System.Collections;


public enum ItemType
{
	Item_BatteryPack,
	Item_ComputerParts,
	Item_Engine,
	Item_Flare,
	Item_Fuel,
	Item_Propellant
};

public class ItemSaveState
{
    public ItemType ItemType;
    public WeaponType WeaponType;
    public int Quantity;
    public Vector3 Position;
	public Quaternion Rotation;
}
