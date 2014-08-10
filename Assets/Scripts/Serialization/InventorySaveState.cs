using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class InventorySaveState
{
    public InventoryItem[] ItemsHeld;
    public WeaponSaveState[] WeaponsHeld;
    public int CurrentWeapon;

    public InventorySaveState ()
    {
        ItemsHeld = null;
        WeaponsHeld = null;
        CurrentWeapon = 0;

    }
}