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
	
	public int EnemiesSearching
	{
		get
		{
			int enemiesSearching = 0;
			foreach(EnemyAI enemy in _enemies)
                if(enemy.Awareness == EnemyAI.AwarenessLevel.Searching)
					enemiesSearching++;
			return enemiesSearching;
		}
	}

	public int EnemiesChasing
	{
		get
		{
			int enemiesChasing = 0;
            foreach(EnemyAI enemy in _enemies)
                if(enemy.Awareness == EnemyAI.AwarenessLevel.Chasing)
					enemiesChasing++;
			return enemiesChasing;
		}
	}
}
