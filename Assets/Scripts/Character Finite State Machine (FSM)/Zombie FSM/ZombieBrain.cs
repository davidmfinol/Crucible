using UnityEngine;
using Pathfinding;

/// <summary>
/// Zombie brain interfaces with A* and the Zombie FSM to provide Zombie AI.
/// </summary>
public class ZombieBrain
{
    // Zombie Brain componenents
    private ZombieFSM _zombie;
	private PlayerCharacterFSM _player = null;

    // Zombie Brain outputs
    private float _horizontal = 0;
    private float _vertical = 0;
    private bool _attack = false;
    private bool _jump = false;
	
	// A* PathFinding
    private Seeker _seeker;
    private Vector3 _target = Vector3.zero; // where the zombie wants to go
    private Path _path = null; // how it plans to get there
    private int _currentPathWaypoint = 0; // where it is on that path
    private bool _searchingForPath = false; // Is the zombie currently looking for a path?
    private float _timeSinceRepath = 0; // how long has it been since it found a path
	private bool _hasTransitionRecent = false; // to prevent Z zone spam

    public ZombieBrain(ZombieFSM zombie)
    {
        _zombie = zombie;
        _seeker = _zombie.GetComponent<Seeker>();
		UpdateAStarTarget(Vector3.zero);
    }

    // Zombie using it's brain, yo
    public void Update()
    {
		// By default, have the zombie do nothing
        _horizontal = 0;
        _vertical = 0;
        _jump = false;
		_attack = false;
		
		// For now, all decision making is based off A* and a little bit of logic
		if(!UpdateAStar())
			return;
		
        // attack if we're facing the player and are close enough
		if(_player != null)
		{
			bool facingPlayer = _zombie.Direction.x > 0 && _zombie.transform.position.x < _player.transform.position.x;
			facingPlayer = facingPlayer || _zombie.Direction.x < 0 && _zombie.transform.position.x > _player.transform.position.x;
	        _attack = facingPlayer && _zombie.PlayerIsInAttackRange();
		}

        // Jump selectively
        _jump = _path.vectorPath[_currentPathWaypoint].y > _zombie.transform.position.y && _zombie.VerticalSpeed <= 0;

        // Going up or down depends on both y and z positions
        if(Mathf.Abs(_path.vectorPath[_currentPathWaypoint].z - _zombie.ZLevel) < 1 || (_player != null && _player.ZLevel == _zombie.ZLevel))
		{
			if(!_zombie.CanTransitionZ && !_hasTransitionRecent)
			{
            	_vertical = _path.vectorPath[_currentPathWaypoint].y > _zombie.transform.position.y ? 1 : -1;
				_hasTransitionRecent = true;
			}
			else
				_vertical = 0;
		}
        else
		{
			if(!_hasTransitionRecent)
			{
            	_vertical = _path.vectorPath[_currentPathWaypoint].z - _zombie.ZLevel;
				_hasTransitionRecent = true;
			}
			else
				_vertical = 0;
		}

        // Go left or right based on horizontal position
        _horizontal = _path.vectorPath[_currentPathWaypoint].x > _zombie.transform.position.x ? 1 : -1;
    }
	
	private bool UpdateAStar()
	{
		// Keep time of track between repaths
        _timeSinceRepath += Time.deltaTime;
		
		// Set a target location to move to, and then calculate the path to get there
		return UpdateAStarTarget(Vector3.zero) && UpdateAStarPath();
	}
	
	/// <summary>
	/// We update the target that A* will try to find a path to.
	/// Passing Vector3.zero will use the player's position.
	/// </summary>
	/// <returns>
	/// Whether or not we have a valid target.
	/// </returns>
	/// <param name='target'>
	/// The location of the target for the zombie to reach.
	/// Vector3.zero is mapped to the player's current posittion.
	/// </param>
	public bool UpdateAStarTarget(Vector3 target)
	{
		if(_player == null && GameLevel.Player != null)
			 _player = GameLevel.Player.GetComponent<PlayerCharacterFSM>();
		
		if(target != Vector3.zero)
		{
			_player = null;
			_target = target;
			return true;
		}
		else if(_zombie.AwareOfPlayer && _player != null)
		{
            _target = _player.transform.position;
			return true;
		}
		
		return false;
	}
	
	/// <summary>
	/// Makes sure we have a valid path to our predefined target.
	/// </summary>
	/// <returns>
	/// Whether or not we have a valid path.
	/// </returns>
	public bool UpdateAStarPath()
	{
		// First make sure we actually have a path
        if (_path == null || _path.error)
        {
            if(!_searchingForPath)
            {
				_hasTransitionRecent = false;
                _seeker.StartPath(_zombie.transform.position, _target, OnPathFound);
                _searchingForPath = true;
            }
            return false;
        }

        // Repath after a certain amount of time
        if (_timeSinceRepath > _zombie.RepathTime && !_searchingForPath)
        {
			_hasTransitionRecent = false;
            _seeker.StartPath(_zombie.transform.position, _target, OnPathFound);
            _searchingForPath = true;
        }

        if (_currentPathWaypoint >= _path.vectorPath.Count) // that's the end of the line for you, jack!
            return false;

        // Move on if we reached our waypoint
        //if (Mathf.Abs((_zombie.transform.position - _path.vectorPath[_currentPathWaypoint]).magnitude) < _zombie.PathLeniency)
		if (_zombie.Controller.bounds.Contains(_path.vectorPath[_currentPathWaypoint]))
            _currentPathWaypoint++;

        return _currentPathWaypoint < _path.vectorPath.Count;
	}
	
	/// <summary>
	/// Called by A* in order to have this brain store the path that A* finds.
	/// </summary>
	/// <param name='p'>
	/// The path that A* found.
	/// </param>
    public void OnPathFound(Path p)
    {
        _searchingForPath = false;
        _timeSinceRepath = 0;
        _path = p;
        _currentPathWaypoint = 0;
    }
	
	// Output Properties
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
	
	// A* Properties
	public Seeker Seeker
	{
		get { return this._seeker; }
	}
	public Vector3 Target
	{
		get { return this._target; }
		set { UpdateAStarTarget(value); }
	}
	public Path Path
	{
		get { return this._path; }
	}
	public int CurrentPathWaypoint
	{
		get { return this._currentPathWaypoint; }
	}
	public bool SearchingForPath
	{
		get { return this._searchingForPath; }
	}
	public bool HasTransitionRecent
	{
		get { return this._hasTransitionRecent; }
	}
	public float TimeSinceRepath
	{
		get { return this._timeSinceRepath; }
	}
}
