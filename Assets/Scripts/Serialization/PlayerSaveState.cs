﻿using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public enum WeaponType
{
    Weapon_None,
    Weapon_PipeWeapon,
    Weapon_HandMINE,
    Weapon_GravityGun
    
}
;

public class PlayerSaveState
{
    public WeaponSaveState[] WeaponsHeld;
    public InventoryItem[] ItemsHeld;
    public int CurrentWeapon;

    public PlayerSaveState ()
    {
        WeaponsHeld = null;
        ItemsHeld = null;
        CurrentWeapon = 0;

    }
}