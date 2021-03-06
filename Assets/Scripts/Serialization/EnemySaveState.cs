﻿using UnityEngine;
using System.Collections;

public class EnemySaveState
{
    public enum EnemyType
    {
        Enemy_BabyBot,
        Enemy_CameraSpotter,
        Enemy_Olympus,
        Enemy_Seeker
    }
    ;

    public EnemyType Type;
    public Vector3 Position;
    public Quaternion Rotation;
    public Vector3 Direction;
    public int Health;
    
}