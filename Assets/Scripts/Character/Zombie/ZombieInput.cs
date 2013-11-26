using UnityEngine;
using Pathfinding;

/// <summary>
/// Zombie input does the AI for the zombie animator.
/// Currently, this AI is just an interpretation A* Shortest-Pathfinding.
/// </summary>
[RequireComponent(typeof(ZombieSettings))]
[RequireComponent(typeof(Seeker))]
[AddComponentMenu("Character/Zombie/Zombie Input")]
public class ZombieInput : CharacterInput
{
    // Zombie Brain componenents
    private ZombieAnimator _zombie;
	private ZombieSettings _settings;
	private PlayerCharacterAnimator _player;

    // Zombie Brain outputs are inputted to the Zombie Animator
    private float _horizontal = 0;
    private float _vertical = 0;
    private bool _jump = false;
    private bool _attack = false;
	
	// A* PathFinding
    private Seeker _seeker;
    private Vector3 _target = Vector3.zero; // where the zombie wants to go
    private Path _path = null; // how it plans to get there
    private int _currentPathWaypoint = 0; // where it is on that path
    private bool _searchingForPath = false; // Is the zombie currently looking for a path?
    private float _timeSinceRepath = 0; // how long has it been since it found a path
	private bool _hasTransitionRecent = false; // to prevent Z zone spam
	
	public enum AwarenessType : int
	{
		Unaware = 0,
		Searching = 1,
		Chasing = 2
	}

    // How aware is the enemy of the player?
	private AwarenessType _awareness = AwarenessType.Unaware;
	
	void Start()
	{
        _zombie = GetComponent<ZombieAnimator>();
        _settings = GetComponent<ZombieSettings>();
        _seeker = GetComponent<Seeker>();
		GameManager.AI.Zombies.Add(this);
		UpdateAStarTarget(Vector3.zero);
	}
	
	protected override void UpdateInput()
    {
		// By default, have the zombie do nothing
        _horizontal = 0;
        _vertical = 0;
        _jump = false;
		_attack = false;

		UpdateAwareness();

		switch(_awareness)
		{
		case AwarenessType.Unaware: Wander(); break;
		case AwarenessType.Searching : Search(); break;
		case AwarenessType.Chasing : Chase(); break;
		default : Wander(); break;
		}
    }

	// Does nothing for now, but should be fun to set up later
	private void Wander()
	{
		// TODO: STAND OR SOMETHING
		// TOTALLY PLAYING BASEBALL
	}

	// Enemy is kind of aware of player, but not really
	private void Search()
	{
		// TODO: SOMETHING
	}

	// Use A* pathfinding to chase the player down!
	private void Chase()
	{
		// For now, all decision making is based off A* and a little bit of logic
		if(!UpdateAStar())
			return;
		
		// attack if we're facing the player and are close enough
		if(_player != null)
		{
			bool facingPlayer = _zombie.Direction.x > 0 && _zombie.transform.position.x < _player.transform.position.x;
			facingPlayer = facingPlayer || _zombie.Direction.x < 0 && _zombie.transform.position.x > _player.transform.position.x;
			_attack = facingPlayer && PlayerIsInAttackRange();
		}
		
		// Jump selectively
		_jump = _path.vectorPath[_currentPathWaypoint].y > _zombie.transform.position.y && _zombie.VerticalSpeed <= 0;
		
		// Pressing up or down depends on both y and z positions
		if(Mathf.Abs(_path.vectorPath[_currentPathWaypoint].z - _zombie.DesiredZ) < 1 || (_player != null && _player.DesiredZ == _zombie.DesiredZ))
		{
			if(!_zombie.CanTransitionZ)
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
				_vertical = _path.vectorPath[_currentPathWaypoint].z - _zombie.DesiredZ;
				_hasTransitionRecent = true;
			}
			else
				_vertical = 0;
		}
		
		// Pressing left or right based on horizontal position
		_horizontal = _path.vectorPath[_currentPathWaypoint].x > _zombie.transform.position.x ? 1 : -1; // because stopping is for the weak
	}

	private void UpdateAwareness()
	{
		if( _awareness == AwarenessType.Chasing || (PlayerIsInSightRadius() && PlayerIsInSight()) )
			_awareness = AwarenessType.Chasing;
		else if(PlayerIsInNoticeRange())
			_awareness = AwarenessType.Searching;
		else
			_awareness = AwarenessType.Unaware;
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
		if(_player == null && GameManager.Player != null)
			 _player = GameManager.Player.GetComponent<PlayerCharacterAnimator>();
		
		if(target != Vector3.zero)
		{
			_player = null;
			_target = target;
			return true;
		}
		else if(_awareness == AwarenessType.Chasing && _player != null)
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
        if ((_timeSinceRepath > _settings.RepathTime || _currentPathWaypoint >= _path.vectorPath.Count)&& !_searchingForPath)
        {
			_hasTransitionRecent = false;
            _seeker.StartPath(_zombie.transform.position, _target, OnPathFound);
            _searchingForPath = true;
        }

        if (_currentPathWaypoint >= _path.vectorPath.Count ) // that's the end of the line for you, jack!
            return false;

        // Move on if we reached our waypoint
		if (_zombie.Controller.bounds.Contains(_path.vectorPath[_currentPathWaypoint]) && ( _currentPathWaypoint < _path.path.Count && (!((ZoneNode)_path.path[_currentPathWaypoint]).isGround||_zombie.IsGrounded) ) )
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
		_currentPathWaypoint = 1;
		//DetermineNearestNode();
    }
	
	// We may have moved from the startpoint while searching. 
	// We can determine the node nearest to our current position.
	public void DetermineNearestNode()
	{
		int nearestNode = 0;
		float smallestDist = float.MaxValue;
		for(int i = 0; i < _path.vectorPath.Count; i++)
		{
			float dist = (_zombie.transform.position - _path.vectorPath[i]).magnitude;
			if(dist < smallestDist)
			{
				nearestNode = 0;
				smallestDist = dist;
			}
		}
		_currentPathWaypoint = nearestNode;
	}

    // Is the player in the range that the zombie could feasibly hit him?
    public bool PlayerIsInAttackRange()
    {
        GameObject player = GameManager.Player.gameObject;
        if (player != null && _player != null)
            return (Mathf.Abs(transform.position.x - player.transform.position.x) < _settings.AttackRange)
                && (Mathf.Abs(transform.position.y - player.transform.position.y) < _settings.AttackRange)
                && _zombie.DesiredZ == _player.DesiredZ;
        return false;
	}

	// Is the player within a radius that the zombie can see and potentially start chasing in
	public bool PlayerIsInSightRadius()
	{
		GameObject player = GameManager.Player.gameObject;
		if (player != null && _player != null)
			return (Mathf.Abs(transform.position.x - player.transform.position.x) < _settings.AwarenessRange)
				&& (Mathf.Abs(transform.position.y - player.transform.position.y) < _settings.AwarenessRange)
				&& _zombie.DesiredZ == _player.DesiredZ;
		return false;
	}

	// Is the player visible to the enemy, and therefore ready to be chased
	public bool PlayerIsInSight() 
	{
		GameObject player = GameManager.Player.gameObject;
		if (player == null || _player == null)
			return false;

		bool openSightLine = false;
		Vector3 playerPos = player.transform.position;
		float playerHalfHeight = _player.Height/2;
		for(float y = playerPos.y + playerHalfHeight; y >= playerPos.y - playerHalfHeight; y-= playerHalfHeight)
		{
			Vector3 endPoint = playerPos;
			endPoint.y = y;
			Vector3 raycastDirection = endPoint - transform.position;
			if(!Physics.Raycast(transform.position, raycastDirection.normalized, raycastDirection.magnitude, 1 << 12))
			{
				openSightLine = true;
				break;
			}
		}
		return openSightLine;
	}
	
	// Is the player within a distance that would make the enemy suspicious
	public bool PlayerIsInNoticeRange()
	{
		return false;
	}
	
	// Generic Properties
	public AwarenessType Awareness
	{
		get { return _awareness; }
	}
	
	// Output Properties
	public override float HorizontalInput
	{
		get { return _horizontal; }
	}
	public override float VerticalInput
	{
		get { return _vertical; }
	}
	public override bool Jump
	{
		get { return _jump; }
	}
	public override bool Attack1
	{
		get { return _attack; }
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
