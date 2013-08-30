using UnityEngine;
using System.Collections;
using Pathfinding;
using System;

public class ZombieBrain
{
    // Zombie Brain Memory
	private PlayerCharacterFSM _player = null;
    private Vector3 _target = Vector3.zero; // where the zombie wants to go
    private Path _path = null; // how it plans to get there
    private int _currentPathWaypoint = 0; // where it is on that path
    private bool _searchingForPath = false; // Is the zombie currently looking for a path?
    private float _timeSinceRepath = 0;
	private bool _hasTransitionRecent = false;

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
        _seeker.pathCallback += OnPathFound;
    }

    // Zombie using it's brain, yo
    public void Update()
    {
		// By default, have the zombie do nothing
        _timeSinceRepath += Time.deltaTime;
        _horizontal = 0;
        _vertical = 0;
        _jump = false;
		_attack = false;

        // Zombie doesn't need to think when unaware of player
        if (!_zombieController.AwareOfPlayer)
            return;

        // Hunt that player down
        if (GameLevel.Player != null)
		{
			_player = GameLevel.Player.GetComponent<PlayerCharacterFSM>();
            _target = _player.transform.position;
		}
		
        // attack if we're facing the player and are close enough
		bool facingPlayer = _zombieController.Direction.x > 0 && _zombieController.transform.position.x < _player.transform.position.x;
		facingPlayer = facingPlayer || _zombieController.Direction.x < 0 && _zombieController.transform.position.x > _player.transform.position.x;
        _attack = facingPlayer && _zombieController.PlayerIsInAttackRange();

        // We need to make sure we have a plan for reaching our target
        if (_path == null)
        {
            if(!_searchingForPath)
            {
				_hasTransitionRecent = false;
                _seeker.StartPath(_zombieController.transform.position, _target);
                _searchingForPath = true;
            }
            return;
        }

        // Repath once a second
        if (_timeSinceRepath > 1 && !_searchingForPath)
        {
			_hasTransitionRecent = false;
            _seeker.StartPath(_zombieController.transform.position, _target);
            _searchingForPath = true;
        }

        if (_currentPathWaypoint >= _path.vectorPath.Count) // that's the end of the line for you, jack!
            return;

        // Move on if we reached our waypoint
        if (Mathf.Abs((_zombieController.transform.position - _path.vectorPath[_currentPathWaypoint]).magnitude) < 10)
            _currentPathWaypoint++;

        if (_currentPathWaypoint >= _path.vectorPath.Count) // that's the end of the line for you, jack!
            return;

        // Jump selectively
        _jump = _path.vectorPath[_currentPathWaypoint].y > _zombieController.transform.position.y && _zombieController.VerticalSpeed <= 0;

        // Going up or down depends on both y and z positions
        if(Mathf.Abs(_path.vectorPath[_currentPathWaypoint].z - _zombieController.ZLevel) < 1 || (_player != null && _player.ZLevel == _zombieController.ZLevel))
		{
			if(!_zombieController.CanTransitionZ && !_hasTransitionRecent)
			{
            	_vertical = _path.vectorPath[_currentPathWaypoint].y > _zombieController.transform.position.y ? 1 : -1;
				_hasTransitionRecent = true;
			}
			else
				_vertical = 0;
		}
        else
		{
			if(!_hasTransitionRecent)
			{
            	_vertical = _path.vectorPath[_currentPathWaypoint].z - _zombieController.ZLevel;
				_hasTransitionRecent = true;
			}
			else
				_vertical = 0;
		}

        // Go left or right based on horizontal position
        _horizontal = _path.vectorPath[_currentPathWaypoint].x > _zombieController.transform.position.x ? 1 : -1;
    }

    public void OnPathFound(Path p)
    {
        _searchingForPath = false;
        _timeSinceRepath = 0;
        if (!p.error)
        {
            _path = p;
            _currentPathWaypoint = 0;
        }
    }
    public void OnDisable()
    {
        _seeker.pathCallback -= OnPathFound;
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

	public int CurrentPathWaypoint
	{
		get { return this._currentPathWaypoint; }
		set { _currentPathWaypoint = value; }
	}

	public bool HasTransitionRecent
	{
		get { return this._hasTransitionRecent; }
		set { _hasTransitionRecent = value; }
	}

	public Path Path
	{
		get { return this._path; }
		set { _path = value; }
	}

	public bool SearchingForPath
	{
		get { return this._searchingForPath; }
	}

	public Seeker Seeker
	{
		get { return this._seeker; }
	}

	public float TimeSinceRepath
	{
		get { return this._timeSinceRepath; }
		set { _timeSinceRepath = value; }
	}
}
