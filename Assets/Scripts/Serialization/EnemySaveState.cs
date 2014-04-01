using UnityEngine;
using System.Collections;

public enum EnemyType
{
    Enemy_Olympus,
    Enemy_BabyBot
}

public class EnemySaveState
{
    public EnemyType Type;
    public Vector3 Position;
    public Vector3 Direction;
    public int Health;
    
}