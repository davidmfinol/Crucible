using UnityEngine;
using Pathfinding;

/// <summary>
/// Enemy input does the AI for the Enemy animator.
/// Currently, this AI is just an interpretation A* Shortest-Pathfinding.
/// </summary>
[RequireComponent(typeof(EnemySettings))]
[RequireComponent(typeof(Seeker))]
[AddComponentMenu("Character/Enemy/Enemy Input")]
public class EnemyInput : CharacterInput
{
    // Enemy Brain componenents
    private EnemyAnimator _enemy;
	private EnemySettings _settings;
	private PlayerCharacterAnimator _player;
	private PlayerCharacterStealth _playerStealth;
	private EnemyAwareness _enemyAwareness;
	
    // Enemy Brain outputs are inputted to the Enemy Animator
    private float _horizontal = 0;
    private float _vertical = 0;
    private bool _jump = false;
    private bool _attack = false;
	
	// A* PathFinding
    private Seeker _seeker;
    private Vector3 _target = Vector3.zero; // where the Enemy wants to go
    private Path _path = null; // how it plans to get there
    private int _currentPathWaypoint = 0; // where it is on that path
    private bool _searchingForPath = false; // Is the Enemy currently looking for a path?
    private float _timeSinceRepath = 0; // how long has it been since it found a path
	private bool _hasTransitionRecent = false; // to prevent Z zone spam

	// Responsible for hearing
	private HearingRadius _personalHearingRadius;
	private float _timeSincePlayerSeen;
	
	public enum AwarenessLevel : int
	{
		Unaware = 0,
		Searching = 1,
		Chasing = 2
	}

    // How aware is the enemy of the player?
	private AwarenessLevel _awareness = AwarenessLevel.Unaware;


	void Start()
	{
		_personalHearingRadius = GetComponentInChildren<HearingRadius> ();
        _enemy = GetComponent<EnemyAnimator>();
        _settings = GetComponent<EnemySettings>();
        _seeker = GetComponent<Seeker>();
		_playerStealth = GameManager.Player.GetComponent<PlayerCharacterStealth> ();
		_enemyAwareness = GetComponent<EnemyAwareness> ();
		GameManager.AI.Enemies.Add(this);
		UpdateAStarTarget(Vector3.zero);
	}
	
	protected override void UpdateInput()
    {
		// By default, have the Enemy do nothing
        _horizontal = 0;
        _vertical = 0;
        _jump = false;
		_attack = false;

		UpdateAwareness();

		switch(Awareness)
		{
		case AwarenessLevel.Unaware: Wander(); break;
		case AwarenessLevel.Searching : Search(); break;
		case AwarenessLevel.Chasing : Chase(); break;
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
		Vector3 targetPos = Vector3.zero;

		// pop off sounds we can identify until we find one we haven't reached yet
		while (PersonalHearingRadius.ObjectsHeard.Count > 0 && Vector3.Distance(PersonalHearingRadius.ObjectsHeard[0].transform.position, transform.position) < _settings.SoundInspectionRange)
			PersonalHearingRadius.ObjectsHeard.RemoveAt(0);

		if (PersonalHearingRadius.ObjectsHeard.Count > 0)
			targetPos = PersonalHearingRadius.ObjectsHeard [0].transform.position;

		// no next node, abort.
		if (!UpdateAStar (targetPos))
			return;

		// TODO: need to expand this (look at chase method)
		_jump = _path.vectorPath[_currentPathWaypoint].y > _enemy.transform.position.y && _enemy.VerticalSpeed <= 0;
		_horizontal = _path.vectorPath[_currentPathWaypoint].x > _enemy.transform.position.x ? 1 : -1; // because stopping is for the weak
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
			bool facingPlayer = _enemy.Direction.x > 0 && _enemy.transform.position.x < _player.transform.position.x;
			facingPlayer = facingPlayer || _enemy.Direction.x < 0 && _enemy.transform.position.x > _player.transform.position.x;
			_attack = facingPlayer && PlayerIsInAttackRange();
		}
		
		// Jump selectively
		_jump = _path.vectorPath[_currentPathWaypoint].y > _enemy.transform.position.y && _enemy.VerticalSpeed <= 0;
		
		// Pressing up or down depends on both y and z positions
		if(Mathf.Abs(_path.vectorPath[_currentPathWaypoint].z - _enemy.DesiredZ) < 1 || (_player != null && _player.DesiredZ == _enemy.DesiredZ))
		{
			if(! _enemy.CanTransitionZ)
			{
				_vertical = _path.vectorPath[_currentPathWaypoint].y > _enemy.transform.position.y ? 1 : -1;
				_hasTransitionRecent = true;
			}
			else
				_vertical = 0;
		}
		else
		{
			if(!_hasTransitionRecent)
			{
				_vertical = _path.vectorPath[_currentPathWaypoint].z - _enemy.DesiredZ;
				_hasTransitionRecent = true;
			}
			else
				_vertical = 0;
		}
		
		// Pressing left or right based on horizontal position
		_horizontal = _path.vectorPath[_currentPathWaypoint].x > _enemy.transform.position.x ? 1 : -1; // because stopping is for the weak
	}
	
	private void UpdateAwareness()
	{
		if (_settings.CanSee && IsSeeingPlayer()) {
			Awareness = AwarenessLevel.Chasing;
			_timeSincePlayerSeen = _settings.VisionMemory;

			// sight is our main goal.  ignore any sounds during the chase.
			_personalHearingRadius.ForgetAllSounds();


		} else if (_settings.CanHear && HasHeardSound () ) {
			Awareness = AwarenessLevel.Searching;

		} else if (_timeSincePlayerSeen <= 0.0f) {
			Awareness = AwarenessLevel.Unaware;

		} else {
			_timeSincePlayerSeen -= Time.deltaTime;
		}

	}

	private bool UpdateAStar()
	{
		return UpdateAStar (Vector3.zero);

	}
    
	private bool UpdateAStar(Vector3 targetPos)
	{
		// Keep time of track between repaths
        _timeSinceRepath += Time.deltaTime;

		// Set a target location to move to, and then calculate the path to get there
		return UpdateAStarTarget(targetPos) && UpdateAStarPath();
	}
	
	/// <summary>
	/// We update the target that A* will try to find a path to.
	/// Passing Vector3.zero will use the player's position.
	/// </summary>
	/// <returns>
	/// Whether or not we have a valid target.
	/// </returns>
	/// <param name='target'>
	/// The location of the target for the Enemy to reach.
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
		else if(Awareness == AwarenessLevel.Chasing && _player != null)
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
                _seeker.StartPath( _enemy.transform.position, _target, OnPathFound);
                _searchingForPath = true;
            }
            return false;
        }

        // Repath after a certain amount of time
        if ((_timeSinceRepath > _settings.RepathTime || _currentPathWaypoint >= _path.vectorPath.Count)&& !_searchingForPath)
        {
			_hasTransitionRecent = false;
            _seeker.StartPath( _enemy.transform.position, _target, OnPathFound);
            _searchingForPath = true;
        }

        if (_currentPathWaypoint >= _path.vectorPath.Count ) // that's the end of the line for you, jack!
            return false;

		// Move on if we reached our waypoint
		// TODO: MAKE CURRENT STATE A PROPERY OF CHARACTERANIMATOR
		AnimatorStateInfo currentState = _enemy.MecanimAnimator.IsInTransition(0) ? _enemy.MecanimAnimator.GetNextAnimatorStateInfo(0) : _enemy.MecanimAnimator.GetCurrentAnimatorStateInfo(0);
		if ( _enemy.Controller.bounds.Contains(_path.vectorPath[_currentPathWaypoint]) && 
		    	( _currentPathWaypoint < _path.path.Count &&
           		(!((ZoneNode)_path.path[_currentPathWaypoint]).isGround || currentState.IsName("Base Layer.Running") || currentState.IsName("Base Layer.Idle")) ))
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
			float dist = ( _enemy.transform.position - _path.vectorPath[i]).magnitude;
			if(dist < smallestDist)
			{
				nearestNode = 0;
				smallestDist = dist;
			}
		}
		_currentPathWaypoint = nearestNode;
	}

    // Is the player in the range that the Enemy could feasibly hit him?
    public bool PlayerIsInAttackRange()
    {
        GameObject player = GameManager.Player.gameObject;
        if (player != null && _player != null)
            return (Mathf.Abs(transform.position.x - player.transform.position.x) < _settings.AttackRange)
                && (Mathf.Abs(transform.position.y - player.transform.position.y) < _settings.AttackRange)
                && _enemy.DesiredZ == _player.DesiredZ;
        return false;
	}

	public bool IsSeeingPlayer()
	{
		PlayerCharacterAnimator player = GameManager.Player.GetComponent<PlayerCharacterAnimator>();
		GameObject playerGO = player.gameObject;

		if (playerGO == null || player == null)
			return false;


		Vector3 eyePos = transform.position;
		eyePos.y += 1.0f;

		Vector3 playerPos = player.transform.position;
		float playerHalfHeight = player.Height/2;

		Vector3 dirToPlayer = playerPos - eyePos;

		// player in shadow range? must be a lot closer to see him
		float visionRange = _settings.AwarenessRange;
		if (_playerStealth.CurrentlyHidden)
			visionRange *= 0.3f;

		if (dirToPlayer.magnitude > visionRange)
			return false;

		// abort if player on opposite side of vision
		if ((dirToPlayer.x * _enemy.Direction.x) < 0)
		{
			return false;
		}

		bool canSeePlayer = false;

		//for (float y = playerPos.y; y == playerPos.y; y-= playerHalfHeight) {
		for (float y = playerPos.y + playerHalfHeight; y >= playerPos.y - playerHalfHeight; y-= playerHalfHeight) {
			Vector3 endPoint = playerPos;
			endPoint.y = y;

			Vector3 raycastDirection = endPoint - eyePos;

			// if our facing vector DOT the ray to the player is within a certain dot product range, then it's in view
			// (prevents seeing player almost directly above us.
			Vector3 normFacing = _enemy.Direction.normalized;
			Vector3 normToPlayer = raycastDirection.normalized;
			float fDot = Vector3.Dot (normFacing, normToPlayer);

			// only bother to cast rays that could be considered in our view cone.
			float fViewConeCutoff = 0.65f;
			if(fDot >= fViewConeCutoff) {
				if (!Physics.Raycast (eyePos, normToPlayer, raycastDirection.magnitude, 1 << 12)) {
				    Debug.DrawLine(eyePos, endPoint, Color.red, 0.5f, false);
					canSeePlayer = true;
					break;

				}
			
			}

		}

		return canSeePlayer;

	}

	public bool HasHeardSound()
	{
		return PersonalHearingRadius.ObjectsHeard.Count > 0;
	}
	
	// Generic Properties
	public AwarenessLevel Awareness
	{
		get { return _awareness; }
		set
		{
			_awareness = value;
			_enemyAwareness.ChangeAwareness(_awareness);
		}
	}
	public HearingRadius PersonalHearingRadius
	{
		get { return _personalHearingRadius; }
	}
	
	// Output Properties
	public override float Horizontal
	{
		get { return _horizontal; }
	}
	public override float Vertical
	{
		get { return _vertical; }
	}
	public override Vector2 Jump
	{
		get { return _jump ? Vector2.up : Vector2.zero; }
	}
	public override float Attack
	{
		get { return _attack ? 1 : 0; }
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
