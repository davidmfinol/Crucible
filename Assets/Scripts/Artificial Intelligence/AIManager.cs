using UnityEngine;
using Pathfinding;
using System.Collections.Generic;

/// <summary>
/// AI manager keeps track of all the AI components used in the game.
/// </summary>
[RequireComponent(typeof(AstarPath))]
[AddComponentMenu("Artificial Intelligence/AI Manager")]
public class AIManager : MonoBehaviour
{
    // We keep track of all the enmies here
    private List<EnemyAI> _enemies;
    private int _enemiesCouldHear;
    private int _enemiesSearching;
    private int _enemiesChasing;
    private int _olympusesAlive;

    // This is the graph used by A* pathfinding
    private ZoneGraph _graph;

    // All managers keep track of their ready status for the game manager
    private bool _ready;

    void Awake()
    {
        // Make sure we have the correct tag
        gameObject.tag = "AI Manager";
        
        // Confirm that there is a zone for the AI system to use
        if (GameObject.FindGameObjectWithTag("Zone") == null) {
            Instantiate(Resources.Load("Prefabs/Platforming/_Zone"));
        } // NOTE: WE DON'T POOL THIS SINCE WE ONLY NEED THE 1
        
        // Get the list of enemies ready
        _enemies = new List<EnemyAI>();

    }

    void Start()
    {
        // Make sure astar is set up in the scene
        AstarPath astar = AstarPath.active;
        foreach (NavGraph graph in astar.astarData.graphs) {
            if (graph is ZoneGraph) {
                _graph = (ZoneGraph)graph;
            }
        }

        // If we couldn't find a graph, create one
        if (_graph == null) {
            astar.astarData.AddGraph(typeof(ZoneGraph));
            _graph = (ZoneGraph)astar.graphs [0];
        }

        // All managers need to report to the main GameManager when they are ready
        _ready = true;

    }

    public void Update()
    {
        // We're going to re-count these values each frame, so reset them
        _enemiesCouldHear = 0;
        _enemiesSearching = 0;
        _enemiesChasing = 0;
        _olympusesAlive = 0;

        foreach (EnemyAI enemy in _enemies) {

            // De-activate enemies that are too far away from the player, to save on performance
            if (enemy.Awareness == EnemyAI.AwarenessLevel.Unaware && GameManager.Player != null && Vector3.Distance(enemy.transform.position, GameManager.Player.transform.position) > enemy.Settings.MaxActiveDistance) {
                if (enemy.gameObject.activeSelf) {
                    enemy.gameObject.SetActive(false);
                }
                continue;
            }

            // Re-activate the enemies as necessary
            if (!enemy.gameObject.activeSelf) {
                enemy.gameObject.SetActive(true);
            }

            // Count up the number of aware enemies
            if (enemy.CouldHearPlayer) {
                _enemiesCouldHear++;
            }
            if (enemy.Awareness == EnemyAI.AwarenessLevel.Searching) {
                _enemiesSearching++;
            } else if (enemy.Awareness == EnemyAI.AwarenessLevel.Chasing) {
                _enemiesChasing++;
            }
            
            // Check for living olympuses WITHIN THE ACTIVE RANGE.
            if ((enemy.Animator.EnemyType == EnemySaveState.EnemyType.Enemy_Olympus) && !enemy.Animator.IsDead) {
                _olympusesAlive += 1;
                
            }
        }

        // Turn on the alarms if any on the enemies are chasing the player
        if (GameManager.Level.Alarms != null) {
            GameManager.Level.Alarms.On = (_enemiesChasing > 0);
        }
        
    }

    // Are there enemies within a radius?
    public bool EnemiesWithin(float radius)
    {
        Vector3 pos = GameManager.Player.transform.position;
        foreach (EnemyAI enemy in _enemies) {
            if (Vector3.Distance(pos, enemy.transform.position) <= radius) {
                return true;
            }
        }

        return false;

    }

    public void ResetEnemies()
    {
        foreach (EnemyAI enemy in _enemies) {
            Destroy(enemy.gameObject);
        }
        _enemies = new List<EnemyAI>();

    }
    
    public List<EnemyAI> Enemies {
        get { return _enemies; }
    }

    public int EnemiesCouldHear {
        get { return _enemiesCouldHear; }
    }
    
    public int EnemiesSearching {
        get { return _enemiesSearching; }
    }

    public int EnemiesChasing {
        get { return _enemiesChasing; }
    }

    public int OlympusesAlive {
        get { return _olympusesAlive; }
    }

    public ZoneGraph Graph {
        get { return _graph; }
    }
    
    public bool Ready {
        get { return _ready; }
    }
}
