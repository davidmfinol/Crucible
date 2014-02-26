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
	private List<EnemyAI> _enemies;
	
	
	void Awake()
	{
		_enemies = new List<EnemyAI>();
	}
	
	
	public List<EnemyAI> Enemies
	{
		get { return _enemies; }
	}
	
	public int EnemiesAware
	{
		get
		{
			int EnemiesAware = 0;
			foreach(EnemyAI Enemy in _enemies)
				if(Enemy.Awareness == EnemyAI.AwarenessLevel.Searching || Enemy.Awareness == EnemyAI.AwarenessLevel.Chasing)
					EnemiesAware++;
			return EnemiesAware;
		}
	}

	public int EnemiesChasing
	{
		get
		{
			int Enemies = 0;
			foreach(EnemyAI Enemy in _enemies)
				if(Enemy.Awareness == EnemyAI.AwarenessLevel.Chasing)
					Enemies++;
			return Enemies;
		}
	}
}
