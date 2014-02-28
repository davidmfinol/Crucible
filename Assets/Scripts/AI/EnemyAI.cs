using UnityEngine;
using Pathfinding;

/// <summary>
/// Enemy AI does the AI for the enemies.
/// Currently, this AI is just an interpretation A* Shortest-Pathfinding.
/// </summary>
[RequireComponent(typeof(EnemyAISettings))]
[RequireComponent(typeof(Seeker))]
[AddComponentMenu("AI/Enemy AI")]
public class EnemyAI : MonoBehaviour
{
    // Generic enemy AI componenents
    private CharacterAnimator _animator;
	private EnemyAISettings _settings;
	private CharacterAnimator _playerAnimator;
	private PlayerCharacterShader _playerShader;
    private OlympusAwareness _olympusAwareness; //TODO: MOVE THIS OUT OF THIS CLASS
    private HearingRadius _personalHearingRadius;
    private float _timeSincePlayerSeen;
	
	// A* PathFinding
    private Seeker _seeker;
    private Vector3 _target = Vector3.zero; // where the enemy wants to go
    private Path _path = null; // how it plans to get there
    private int _currentPathWaypoint = 0; // where it is on that path
    private bool _searchingForPath = false; // Is the enemy currently looking for a path?
    private float _timeSinceRepath = 0; // how long has it been since it found a path
	private bool _hasTransitionRecent = false; // to prevent Z zone spam

	
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
        // Set up the generic AI components
        _animator = GetComponent<CharacterAnimator>();
        _settings = GetComponent<EnemyAISettings>();
		_playerShader = GameManager.Player.GetComponent<PlayerCharacterShader> ();
        _olympusAwareness = GetComponent<OlympusAwareness> ();
        _personalHearingRadius = GetComponentInChildren<HearingRadius> ();
        _timeSincePlayerSeen = 0;
        GameManager.AI.Enemies.Add(this);

        // Set up Astar
        _seeker = GetComponent<Seeker>();
		UpdateAStarTarget(Vector3.zero);

        // Finally, map the the output of this class to the input of the animator
		GetComponent<CharacterInput> ().UpdateInputMethod = UpdateInput;
	}
	
	public void UpdateInput()
    {
		// By default, have the enemy do nothing
		_animator.CharInput.Horizontal = 0;
		_animator.CharInput.Vertical = 0;
		_animator.CharInput.Jump = Vector2.zero;
		_animator.CharInput.Attack = 0;

		UpdateAwareness();

		switch(Awareness)
		{
		case AwarenessLevel.Unaware: Wander(); break;
		case AwarenessLevel.Searching : Search(); break;
		case AwarenessLevel.Chasing : Chase(); break;
		default : Wander(); break;
		}
    }
    
    private void UpdateAwareness()
    {
        // current awareness
        AwarenessLevel oldAwareness = _awareness;
        
        // try to change it
        if (_settings.CanSee && IsSeeingPlayer)
        {
            Awareness = AwarenessLevel.Chasing;
            _timeSincePlayerSeen = _settings.VisionMemory;
            
            // sight is our main goal.  ignore any sounds during the chase.
            if(_personalHearingRadius)
                _personalHearingRadius.ForgetAllSounds();
            
            
        } 
        else if (_settings.CanHear && HasHeardSound )
            Awareness = AwarenessLevel.Searching;
        
        else if (_timeSincePlayerSeen <= 0.0f) 
            Awareness = AwarenessLevel.Unaware;
        
        else
            _timeSincePlayerSeen -= Time.deltaTime;
        
        // if we transitioned to chasing, enter acquire state
        if (oldAwareness != AwarenessLevel.Chasing && _awareness == AwarenessLevel.Chasing) // TODO: MOVE THIS TO A SUBCLASS?
        {
            if(_animator is OlympusAnimator)
            {
                OlympusAnimator oa = (OlympusAnimator) _animator;
                oa.OnAcquireTarget();
            }
        }
    }

	// Have the enemy wander around the map
	private void Wander()
	{
        if(_animator is BabyBotAnimator) // TODO: MOVE THIS TO A SUBCLASS?
            return;


	}

	// Enemy is kind of aware of player, but not really
	private void Search()
	{
		Vector3 targetPos = Vector3.zero;

		// Stop searching if we can't hear
		if (!_settings.CanHear || _personalHearingRadius == null)
			return;

		//TODO: KEEP TRACK OF ONLY ONE SOUND?
		// pop off sounds we can identify until we find one we haven't reached yet
		while (PersonalHearingRadius.ObjectsHeard.Count > 0 && Vector3.Distance(PersonalHearingRadius.ObjectsHeard[0].transform.position, transform.position) < _settings.SoundInspectionRange)
			PersonalHearingRadius.ObjectsHeard.RemoveAt(0);

		if (PersonalHearingRadius.ObjectsHeard.Count > 0)
			targetPos = PersonalHearingRadius.ObjectsHeard [0].transform.position;

		// no next node, abort.
		if (!UpdateAStar (targetPos))
			return;

        AstarNavigateToTarget();
	}

	// Use A* pathfinding to chase the player down!
	private void Chase()
	{
		// For now, all decision making is based off A* and a little bit of logic
		if(!UpdateAStar())
			return;

		// attack if we're facing the player and are close enough
		if(_playerAnimator != null)
		{
			bool facingPlayer = _animator.Direction.x > 0 && _animator.transform.position.x < _playerAnimator.transform.position.x;
			facingPlayer = facingPlayer || _animator.Direction.x < 0 && _animator.transform.position.x > _playerAnimator.transform.position.x;

			// randomly attack
			bool randomChance = (Random.Range(0.0f, 1.0f) > 0.95f);
			bool isStunned = _animator.CurrentState.IsName("Base Layer.Stun");
            bool shouldAttack = facingPlayer && IsPlayerInAttackRange && randomChance && !isStunned;

			_animator.CharInput.Attack = shouldAttack ? 1 : 0;

        }
        
        AstarNavigateToTarget();
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
		bool hasValidAstarPath = UpdateAStarTarget(targetPos) && UpdateAStarPath();
		return hasValidAstarPath;
	}

	public bool UpdateAStarTarget(Vector3 target)
	{
		if(target != Vector3.zero)
		{
			_playerAnimator = null;
			_target = target;
			return true;
        }

        if(_playerAnimator == null && GameManager.Player != null)
            _playerAnimator = GameManager.Player.GetComponent<PlayerCharacterAnimator>(); //FIXME: SLOW
        if(_playerAnimator != null)
		{
            _target = _playerAnimator.transform.position;
			return true;
		}
		
		return false;
	}

	public bool UpdateAStarPath()
	{
		// First make sure we actually have a path
        if (_path == null || _path.error)
        {
            if(!_searchingForPath)
            {
				_hasTransitionRecent = false;
                _seeker.StartPath( _animator.transform.position, _target, OnPathFound);
                _searchingForPath = true;
            }
            return false;
        }

        // Repath after a certain amount of time
		// TODO: MAKE IT SO THAT THE CHARACTER DOESN'T JUST CHECK IF IN AIR TO REPATH
        if (_animator.IsGrounded && (_timeSinceRepath > _settings.RepathTime || _currentPathWaypoint >= _path.vectorPath.Count)&& !_searchingForPath)
        {
			_hasTransitionRecent = false;
            _seeker.StartPath( _animator.transform.position, _target, OnPathFound);
            _searchingForPath = true;
        }

		if (_currentPathWaypoint >= _path.vectorPath.Count) // that's the end of the line for you, jack!
		{
			if(!_searchingForPath)
			{
				_hasTransitionRecent = false;
				_seeker.StartPath( _animator.transform.position, _target, OnPathFound);
				_searchingForPath = true;
			}
			return false;
		}

		// Stop if we're at the end of the path
		bool isFinalNode = _currentPathWaypoint >= _path.vectorPath.Count;
		if (isFinalNode)
		{
			return false;
		}

		bool isWaypointLongerThanPath = (_currentPathWaypoint >= _path.path.Count);
		
		// Move on if we reached our waypoint
		bool isTouchingNextNode = _animator.Controller.bounds.Contains (_path.vectorPath [_currentPathWaypoint]);
		bool isNodeTouchingGround = isWaypointLongerThanPath ? true : ((ZoneNode)_path.path [_currentPathWaypoint]).isGround;
		bool isCharacterTouchingGround = _animator.IsGrounded;
		if ( isTouchingNextNode && !isFinalNode && (!isNodeTouchingGround || isCharacterTouchingGround) )
    		_currentPathWaypoint++;

		return _currentPathWaypoint < _path.vectorPath.Count;
	}

    public void OnPathFound(Path p)
    {
        _searchingForPath = false;
        _timeSinceRepath = 0;

		// TODO: MAYBE A MORE DYNAMIC CHECK?
		if (!_animator.IsGrounded)
			return;

        _path = p;
		_currentPathWaypoint = 1;
		//DetermineNearestNode();
    }
	
	// We may have moved from the startpoint while searching. 
	// We can determine the node on our path nearest to our current position.
	public void DetermineNearestNode()
	{
		int nearestNode = 0;
		float smallestDist = float.MaxValue;
		for(int i = 0; i < _path.vectorPath.Count; i++)
		{
			float dist = ( _animator.transform.position - _path.vectorPath[i]).magnitude;
			if(dist < smallestDist)
			{
				nearestNode = 0;
				smallestDist = dist;
			}
		}
		_currentPathWaypoint = nearestNode;
    }
    
    private void AstarNavigateToTarget()
    {
        // Jump selectively
        if(_animator.VerticalSpeed > 0 || (_currentPathWaypoint >= _path.vectorPath.Count - 1))
            _animator.CharInput.Jump = Vector2.zero;
        
        else if(_path.vectorPath[_currentPathWaypoint].y -_animator.transform.position.y > 0)
        {
            _animator.CharInput.Jump = Vector2.up;
        }
        // TODO: JUMP IF THE GAMEOBJECT OF THE NEXT NODE IS DIFFERENT FROM THE GAMEOBJECT OF THIS NODE
        
        // Pressing up or down depends on both y and z positions
        if(Mathf.Abs(_path.vectorPath[_currentPathWaypoint].z - _animator.DesiredZ) < 1 || (_playerAnimator != null && _playerAnimator.DesiredZ == _animator.DesiredZ))
        {
            if(! _animator.CanTransitionZ)
            {
                _animator.CharInput.Vertical = _path.vectorPath[_currentPathWaypoint].y > _animator.transform.position.y ? 1 : -1;
                _hasTransitionRecent = true;
            }
            else
                _animator.CharInput.Vertical = 0;
        }
        else
        {
            if(!_hasTransitionRecent)
            {
                _animator.CharInput.Vertical = _path.vectorPath[_currentPathWaypoint].z - _animator.DesiredZ;
                _hasTransitionRecent = true;
            }
            else
                _animator.CharInput.Vertical = 0;
        }
        
        bool isLastNode = (_currentPathWaypoint == _path.vectorPath.Count - 1);
        bool isMidAir = !_animator.IsGrounded;
        bool isCloseEnoughGround = Mathf.Abs (_path.vectorPath [_currentPathWaypoint].x - _animator.transform.position.x) < Settings.StopRange;
        bool isCloseEnoughAir = _animator.Controller.bounds.Contains (_path.vectorPath [_currentPathWaypoint]);
        bool shouldStayStill = (isLastNode && isCloseEnoughGround) || (isCloseEnoughAir && isMidAir);
        
        // Pressing left or right based on horizontal position
        if(shouldStayStill)
        {
            _animator.CharInput.Horizontal = 0;
        }
        else
            _animator.CharInput.Horizontal = _path.vectorPath[_currentPathWaypoint].x > _animator.transform.position.x ? 1 : -1; // move left-right if we haven't reached the goal yet
    }

	
	// Generic Properties
	public EnemyAISettings Settings
	{
		get { return _settings; }
	}
	public AwarenessLevel Awareness
	{
		get { return _awareness; }
		set
		{
			if(_olympusAwareness != null && _awareness != value)
				_olympusAwareness.ChangeAwareness(value);
			_awareness = value;
		}
	}
	public HearingRadius PersonalHearingRadius
	{
		get { return _personalHearingRadius; }
	}
	public bool HasHeardSound
	{
		get { return PersonalHearingRadius != null ? PersonalHearingRadius.ObjectsHeard.Count > 0 : false; }
    }
    public bool IsSeeingPlayer
    {
        get
        {
            CharacterAnimator player = GameManager.Player.GetComponent<CharacterAnimator>();// FIXME: SLOW
            GameObject playerGO = player.gameObject;
            
            if (playerGO == null || player == null || player.IsDead())
                return false;
            
            
            Vector3 eyePos = transform.position;
            eyePos.y += 1.0f;
            
            Vector3 playerPos = player.transform.position;
            float playerHalfHeight = player.Height/2;
            
            Vector3 dirToPlayer = playerPos - eyePos;
            
            // player in shadow range? must be a lot closer to see him
            float visionRange = _settings.AwarenessRange;
            if (_playerShader != null && _playerShader.CurrentlyHidden)
                visionRange *= 0.3f;
            
            if (dirToPlayer.magnitude > visionRange)
                return false;
            
            // abort if player on opposite side of vision
            if ((dirToPlayer.x * _animator.Direction.x) < 0)
            {
                return false;
            }
            
            bool canSeePlayer = false;
            
            //for (float y = playerPos.y; y == playerPos.y; y-= playerHalfHeight) {
            for (float y = playerPos.y + playerHalfHeight; y >= playerPos.y - playerHalfHeight; y-= playerHalfHeight)
            {
                Vector3 endPoint = playerPos;
                endPoint.y = y;
                
                Vector3 raycastDirection = endPoint - eyePos;
                
                // if our facing vector DOT the ray to the player is within a certain dot product range, then it's in view
                // (prevents seeing player almost directly above us.
                Vector3 normFacing = _animator.Direction.normalized;
                Vector3 normToPlayer = raycastDirection.normalized;
                float fDot = Vector3.Dot (normFacing, normToPlayer);
                
                // only bother to cast rays that could be considered in our view cone.
                float fViewConeCutoff = 0.65f;
                if(fDot >= fViewConeCutoff)
                {
                    if (!Physics.Raycast (eyePos, normToPlayer, raycastDirection.magnitude, 1 << 12))
                    {
                        Debug.DrawLine(eyePos, endPoint, Color.red, 0.5f, false);
                        canSeePlayer = true;
                        break;
                    }
                }
                
            }
            
            return canSeePlayer;
        }
    }
    // Is the player in the range that the enemy could feasibly hit him?
    public bool IsPlayerInAttackRange
    {
        get 
        {
            GameObject player = GameManager.Player.gameObject;
            if (player != null && _playerAnimator != null)
                return (Mathf.Abs(transform.position.x - player.transform.position.x) < _settings.AttackRange)
                    && (Mathf.Abs(transform.position.y - player.transform.position.y) < _settings.AttackRange)
                    && _animator.DesiredZ == _playerAnimator.DesiredZ;
            return false;
        }
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
