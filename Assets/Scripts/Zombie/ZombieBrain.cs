using UnityEngine;
using System.Collections;
using Pathfinding;
using System;

public class ZombieBrain
{
    // Zombie Brain Memory
    public Vector3 Target = Vector3.zero; // where the zombie wants to go
    public Path Path = null; // how it plans to get there
    private int _currentPathWaypoint = 0; // where it is on that path
    private bool _searchingForPath = false; // Is the zombie currently looking for a path?

    // Zombie Brain componenents
    private Seeker _seeker; // A* PathFinding
    private ZombieFSM _zombieController;

    // Zombie Brain outputs
    private float _horizontal = 0;
    private float _vertical = 0;
    private bool _attack = false;
    private bool _jump = false;

    public ZombieBrain(ZombieFSM zombie)
    {
        _zombieController = zombie;
        _seeker = _zombieController.GetComponent<Seeker>();
    }

    // Zombie using it's brain, yo
    public void Update()
    {
        // We do this by default
        _attack = _zombieController.PlayerIsInAttackRange();
        _horizontal = 0;
        _vertical = 0;
        _jump = false;

        // Zombie doesn't need to think when player is too far away
        if (!_zombieController.AwareOfPlayer)
            return;

        // Hunt that player down
        if (GameLevel.Instance.Player != null)
            Target = GameLevel.Instance.Player.transform.position;

        // We need to make sure we have a plan for reaching our target
        if (Path == null || (Target - Path.vectorPath[Path.vectorPath.Count-1]).sqrMagnitude > 10 ) //TODO: MAKE ZOMBIE REPATH BASED ON TIME, NOT MOVEMENT OF TARGET
        {
            if(!_searchingForPath)
            {
                _seeker.StartPath(_zombieController.transform.position, Target, OnPathFound);
                _searchingForPath = true;
            }
            return;
        }

        if (_currentPathWaypoint >= Path.vectorPath.Count) // that's the end of the line for you, jack!
            return;

        // Move on if we reached our waypoint
        if (_zombieController.CharacterController.bounds.Contains(Path.vectorPath[_currentPathWaypoint]))
            _currentPathWaypoint++;

        if (_currentPathWaypoint >= Path.vectorPath.Count) // that's the end of the line for you, jack!
            return;

        // We check if the player is our next target
        if(_currentPathWaypoint < Path.vectorPath.Count - 1)
        {
            _jump = Path.vectorPath[_currentPathWaypoint].y > _zombieController.transform.position.y;
            _vertical = Path.vectorPath[_currentPathWaypoint].z > _zombieController.ZLevel ? 1 : -1;
        }
        // Go left or right based on horizontal position
        _horizontal = Path.vectorPath[_currentPathWaypoint].x > _zombieController.transform.position.x ? 1 : -1;
    }

    public void OnPathFound(Path p)
    {
        _searchingForPath = false;
        if (!p.error)
        {
            Path = p;
            _currentPathWaypoint = 0;
        }
    }

    public float Horizontal
    {
        get { return _horizontal; }
    }
    public float Vertical
    {
        get { return _vertical; }
    }
    public bool Attack
    {
        get { return _attack; }
    }
    public bool Jump
    {
        get { return _jump; }
    }
}
