using UnityEngine;
using System.Collections.Generic;

/// <summary>
/// AI manager keeps track of all the AI components used in the game.
/// Currently, this only includes extensions to the A* Pathfinding project.
/// Plans to include rtNEAT are on the way.
/// </summary>
[AddComponentMenu("AI/AI Manager")]
public class AIManager : MonoBehaviour
{
	private List<EnemyInput> _enemies;
	
	
	void Awake()
	{
		_enemies = new List<EnemyInput>();
	}
	
	
	public List<EnemyInput> Enemies
	{
		get { return _enemies; }
	}
	
	public int EnemiesAware
	{
		get
		{
			int EnemiesAware = 0;
			foreach(EnemyInput Enemy in _enemies)
				if(Enemy.Awareness == EnemyInput.AwarenessType.Searching || Enemy.Awareness == EnemyInput.AwarenessType.Chasing)
					EnemiesAware++;
			return EnemiesAware;
		}
	}
}
