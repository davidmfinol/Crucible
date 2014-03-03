using UnityEngine;
using System.Collections;

public enum EnemyType
{
	Enemy_Olympus,
	Enemy_BabyBot

}

public class EnemySaveState
{
	public EnemyType type;
	public Vector3 pos;
	public Vector3 dir;
	public int health;
	
}