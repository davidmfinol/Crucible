using UnityEngine;
using Pathfinding;
using System.Collections.Generic;

/// <summary>
/// AI manager keeps track of all the AI components used in the game.
/// </summary>
[AddComponentMenu("AI/AI Manager")]
public class AIManager : MonoBehaviour
{
    // These components are accesible by other classes
    private List<EnemyAI> _enemies;
    private ZoneGraph _graph;

    // We keep track of the enemy statuses in Update
    private int _enemiesSearching;
    private int _enemiesChasing;

    // All managers keep track of their ready status for the game manager
    private bool _ready;

    void Awake()
    {
        // Get the list of enemies ready
        _enemies = new List<EnemyAI> ();

        // Make sure we have the correct tag
        gameObject.tag = "AI Manager";

    }

    void Start ()
    {
        // Make sure astar is set up in the scene
        AstarPath astar = AstarPath.active;
        foreach (NavGraph graph in astar.astarData.graphs)
            if (graph is ZoneGraph)
                _graph = (ZoneGraph) graph;

        // If we couldn't find a graph, create one
        if (_graph == null) {
            astar.astarData.AddGraph (typeof(ZoneGraph));
            _graph = (ZoneGraph)astar.graphs [0];
        }

        _ready = true;

    }

    public void Update ()
    {
        // We're going to re-count these values each frame, so reset them
        _enemiesSearching = 0;
        _enemiesChasing = 0;

        foreach (EnemyAI enemy in _enemies) {

            // De-activate enemies that are too far away from the player, to save on performance
            if(GameManager.Player != null && Vector3.Distance (enemy.transform.position, GameManager.Player.transform.position) > enemy.Settings.MaxActiveDistance) {
                if(enemy.gameObject.activeSelf)
                    enemy.gameObject.SetActive(false);
                continue;
            }

            // Re-activate the enemies as necessary
            if(!enemy.gameObject.activeSelf)
                enemy.gameObject.SetActive(true);

            // Count up the number of aware enemies
            if (enemy.Awareness == EnemyAI.AwarenessLevel.Searching)
                _enemiesSearching++;
            else if (enemy.Awareness == EnemyAI.AwarenessLevel.Chasing)
               _enemiesChasing++;
        }

        // Turn on the alarms if any on the enemies are chasing the player
        if (GameManager.Level.Alarms != null)
            GameManager.Level.Alarms.On = (_enemiesChasing > 0);
        
    }

    public void ResetEnemies ()
    {
        foreach (EnemyAI enemy in _enemies)
            Destroy (enemy.gameObject);
        _enemies = new List<EnemyAI> ();

    }
    
    public List<EnemyAI> Enemies {
        get { return _enemies; }
    }
    
    public int EnemiesSearching {
        get { return _enemiesSearching; }
    }

    public int EnemiesChasing {
        get { return _enemiesChasing; }
    }

    public ZoneGraph Graph {
        get { return _graph; }
    }
    
    public bool Ready {
        get { return _ready; }
    }
}
