using UnityEngine;
using Pathfinding;
using System.Collections.Generic;

/// <summary>
/// AI manager keeps track of all the AI components used in the game.
/// </summary>
[AddComponentMenu("AI/AI Manager")]
public class AIManager : MonoBehaviour
{
    private List<EnemyAI> _enemies;

    private ZoneGraph _graph;

	private bool _ready;
	

	void Awake()
	{
		_enemies = new List<EnemyAI>();
	}

	void Start()
    {
        _graph = (ZoneGraph)AstarPath.active.graphs[0];

		_ready = true;
	}

	public void Reset()
	{
		_enemies = new List<EnemyAI> ();
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

    public ZoneGraph Graph
    {
        get { return _graph; }
    }
	
	public bool Ready
	{
		get { return _ready; }
	}
}
