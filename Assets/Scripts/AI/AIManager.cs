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

	public Vector3 GetRandomSearchPoint(Vector3 startPosition)
	{
		if(Graph.nodes.Length <= 0)
			return Vector3.zero;

        ZoneNode nearestNode = (ZoneNode) Graph.GetNearest(startPosition).node;
        if(nearestNode == null)
            return Vector3.zero;

        int nodeNum = (int) Random.Range (0, Graph.nodes.Length);
        ZoneNode randomNode = Graph.nodes[nodeNum];
        bool isAcceptable = randomNode.Walkable && randomNode.isGround && PathUtilities.IsPathPossible(nearestNode, randomNode);
        while (!isAcceptable) // TODO: STRESS TEST THIS TO ENSURE IT DOESN'T TAKE TOO MUCH TIME (AND IS NOT INFINITE)
        {
            nodeNum = (int) Random.Range (0, Graph.nodes.Length);
            randomNode = Graph.nodes[nodeNum];
            isAcceptable = randomNode.Walkable && randomNode.isGround && PathUtilities.IsPathPossible(nearestNode, randomNode);
        }
        return (Vector3) randomNode.position;
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
