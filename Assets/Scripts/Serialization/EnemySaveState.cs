using UnityEngine;
using System.Collections;


public class EnemySaveState
{
	public enum EnemyType
	{
		Enemy_Olympus,
		Enemy_BabyBot,
		Enemy_CameraSpotter
	};

    public EnemyType Type;
    public Vector3 Position;
	public Quaternion Rotation;
    public Vector3 Direction;
    public int Health;
    
}