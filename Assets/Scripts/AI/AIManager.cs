using UnityEngine;
using System.Collections.Generic;

/// <summary>
/// AI manager keeps track of all the AI components used in the game.
/// </summary>
[AddComponentMenu("AI/AI Manager")]
public class AIManager : MonoBehaviour
{
	private List<EnemyAI> _enemies;
	private GameObject[] _searchPoints;

	private bool _ready;
	
	void Awake()
	{
		_enemies = new List<EnemyAI>();
	}

	void Start()
	{
		_searchPoints = GameObject.FindGameObjectsWithTag("SearchPoint");
		_ready = true;
	}

	public void Reset()
	{
		_enemies = new List<EnemyAI> ();
		_searchPoints = GameObject.FindGameObjectsWithTag("SearchPoint");
	}

	public Vector3 GetRandomSearchPoint()
	{
		if(_searchPoints.Length <= 0)
			return Vector3.zero;
		int pointNum = (int) Random.Range (0, _searchPoints.Length);
		return _searchPoints [pointNum].transform.position;
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
	
	public bool Ready
	{
		get { return _ready; }
	}
}
