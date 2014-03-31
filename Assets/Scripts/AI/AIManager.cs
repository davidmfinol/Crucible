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

	private int _enemiesSearching;
	private int _enemiesChasing;

    void Awake ()
    {
        _enemies = new List<EnemyAI> ();

    }

    void Start ()
    {
        _graph = (ZoneGraph)AstarPath.active.graphs [0];
        _ready = true;

    }

	public void Update() {
		int enemiesSearching = 0;
		foreach (EnemyAI enemy in _enemies)
			if (enemy.Awareness == EnemyAI.AwarenessLevel.Searching)
				enemiesSearching++;
		_enemiesSearching = enemiesSearching;
		
		
		int enemiesChasing = 0;
		foreach (EnemyAI enemy in _enemies)
			if (enemy.Awareness == EnemyAI.AwarenessLevel.Chasing)
				enemiesChasing++;
		_enemiesChasing = enemiesChasing;
		
		GameManager.Level.Alarms.On = (_enemiesChasing > 0);
		
	}

    public void Reset ()
    {
        _enemies = new List<EnemyAI> ();

    }
    
    public List<EnemyAI> Enemies {
        get { return _enemies; }
    }
    
    public int EnemiesSearching {
        get {
			return _enemiesSearching;
        }
    }

    public int EnemiesChasing {
        get {
			return _enemiesChasing;
        }
    }


    public ZoneGraph Graph {
        get { return _graph; }
    }
    
    public bool Ready {
        get { return _ready; }
    }
}
