using UnityEngine;
using System.Collections;
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
	private float _timeToRetarget;
	
	// A* PathFinding
    private Seeker _seeker;
    private Vector3 _target = Vector3.zero; // where the enemy wants to go
    private Path _path = null; // how it plans to get there
    private int _currentPathWaypoint = 0; // where it is on that path
    private bool _isSearchingForPath = false; // Is the enemy currently looking for a path?
    private float _timeSinceRepath = 0; // how long has it been since it found a path

	
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
		_timeToRetarget = 0;
        GameManager.AI.Enemies.Add(this);

        // Set up Astar
        _seeker = GetComponent<Seeker>();

        // Finally, map the output of this class to the input of the animator
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
        
        // If we transitioned to chasing, enter acquire state
        if (oldAwareness != AwarenessLevel.Chasing && _awareness == AwarenessLevel.Chasing) // TODO: MOVE THIS TO A SUBCLASS?
        {
			UpdateAStarTarget(Vector3.zero);
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

		// Do nothing if the enemy is too far away from the player
		if(Vector3.Distance(transform.position, GameManager.Player.transform.position) > Settings.MaxActiveDistance)
			return;

		// We should retarget every now and then
		Vector3 targetPos = GameManager.AI.GetRandomSearchPoint();
		_timeToRetarget -= Time.fixedDeltaTime; // NOTE: WE USE FIXEDDELATA SINCE WE ASSUME WE RUN IN FIXED UPDATE/ SHOULD PASS IN TIME?
		if(_timeToRetarget <= 0)
		{
			_timeToRetarget = Settings.WanderTargetTime;
			if(!targetPos.Equals(Vector3.zero))
				UpdateAStarTarget(targetPos);
		}

		// If we've reached our random target, find a new random target
		if(_animator.Controller.bounds.Contains(_target) && !targetPos.Equals(Vector3.zero))
			UpdateAStarTarget(targetPos);

		// Return if we can't get a path
		if(!UpdateAStarPath())
			return;

		// Go to our location
		AstarNavigateToTarget (0.2f);
	}

	// Enemy is kind of aware of player, but not really
	private void Search()
	{
		// Stop searching if we can't hear
		if (!_settings.CanHear || _personalHearingRadius == null)
			return;

		//TODO: KEEP TRACK OF ONLY ONE SOUND?
		// Pop off sounds we can identify until we find one we haven't reached yet
		while (PersonalHearingRadius.ObjectsHeard.Count > 0 && Vector3.Distance(PersonalHearingRadius.ObjectsHeard[0].transform.position, transform.position) < _settings.SoundInspectionRange)
			PersonalHearingRadius.ObjectsHeard.RemoveAt(0);

		// Set our target as appropriate, or return if we don't have one
		if (PersonalHearingRadius.ObjectsHeard.Count > 0)
			UpdateAStarTarget(PersonalHearingRadius.ObjectsHeard [0].transform.position);
		else
			return;

		// If no valid path, abort
		if (!UpdateAStarPath())
			return;

		// Finally, go check out our random target point.
        AstarNavigateToTarget(0.7f);
	}

	// The enemy actively hunts the player down!
	private void Chase()
	{
		// Make sure we have an up-to date, valid path
		if(!UpdateAStarPath())
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
		
		// Hunt that player down!
        AstarNavigateToTarget(1.0f);
	}

	public void UpdateAStarTarget(Vector3 target)
	{
		if(target == Vector3.zero)
		{
			if(_playerAnimator == null && GameManager.Player != null)
				_playerAnimator = GameManager.Player;
			if(_playerAnimator != null)
				_target = _playerAnimator.transform.position;
			else
				Debug.LogWarning("Failed to find player animator while looking for a star target");
			StartCoroutine ("YieldRepath");
        }
		else if(target != _target)
		{
			_playerAnimator = null;
			_target = target;
			StartCoroutine ("YieldRepath");
		}
	}

	// Waits until we are not searching for a path to then start searching for a new path
	public IEnumerator YieldRepath()
	{
		while (_isSearchingForPath)
			yield return null;

		Repath ();

		StopCoroutine ("YieldRepath");
	}

	// Starts searching for a new path, if we're not already searching for a path
	public void Repath()
	{
		if(_isSearchingForPath)
			return;

		if(_playerAnimator != null)
			_target = _playerAnimator.transform.position;

		_seeker.StartPath( _animator.transform.position, _target, OnPathFound);
		_isSearchingForPath = true;
	}
	
	public void OnPathFound(Path p)
	{
		_isSearchingForPath = false;
		_timeSinceRepath = 0;
		
		if(!p.error)
		{
			_path = p;
			_currentPathWaypoint = 1; // Start at 1 since 0 is the position of where the enemy started
		}
		else
			Debug.LogWarning("Astar Pathfinding errored!");
	}

	public bool UpdateAStarPath()
	{
		// Keep time of track between repaths
		_timeSinceRepath += Time.fixedDeltaTime; // NOTE: WE USE FIXED DELTA TIME BECAUSE WE'RE ASSUMING WE'RE IN FIXEDUPDATE

		// First make sure we actually have a path
        if (_path == null || _path.error)
        {
			Repath();
            return false;
        }

        // Repath after a certain amount of time
		bool canRepath = _animator.IsGrounded;
		bool shouldRepath = (_timeSinceRepath > _settings.RepathTime || _currentPathWaypoint >= _path.vectorPath.Count);
		if (canRepath && shouldRepath)
			Repath();
		
		// Stop if we've reached the end of the path
		bool isFinalNode = _currentPathWaypoint >= _path.vectorPath.Count;
		if (isFinalNode)
		{
			Repath();
			return false;
		}

		// Move on if we reached our waypoint
		bool isTouchingNextNode = _animator.Controller.bounds.Contains (_path.vectorPath [_currentPathWaypoint]);
		bool isWaypointLongerThanPath = (_currentPathWaypoint >= _path.path.Count);
		bool isNodeTouchingGround = isWaypointLongerThanPath ? true : ((ZoneNode)_path.path [_currentPathWaypoint]).isGround;
		bool isCharacterTouchingGround = _animator.IsGrounded;
		if ( isTouchingNextNode && !isFinalNode && (!isNodeTouchingGround || isCharacterTouchingGround) )
    		_currentPathWaypoint++;

		// Return whether we're still on the current path
		return _currentPathWaypoint < _path.vectorPath.Count;
	}
    
    private void AstarNavigateToTarget(float speedRatio)
	{
		// Determine horizontal
		bool isLastNode = (_currentPathWaypoint == _path.vectorPath.Count - 1);
		bool isMidAir = !_animator.IsGrounded;
		bool isCloseEnoughGround = Mathf.Abs (_path.vectorPath [_currentPathWaypoint].x - _animator.transform.position.x) < Settings.StopRange;
		bool isCloseEnoughAir = _animator.Controller.bounds.Contains (_path.vectorPath [_currentPathWaypoint]);
		bool shouldStayStill = (isLastNode && isCloseEnoughGround) || (isCloseEnoughAir && isMidAir);

		if(shouldStayStill)
			_animator.CharInput.Horizontal = 0;
		else
			_animator.CharInput.Horizontal = _path.vectorPath[_currentPathWaypoint].x > _animator.transform.position.x ? speedRatio : -speedRatio;
		
		// TODO: Determine vertical

        // Determine jump
		bool isAlreadyGoingUp = _animator.VerticalSpeed > 0;
		bool isAtFinalNode = (_currentPathWaypoint >= _path.vectorPath.Count - 1);
		bool isNodeAbove = _path.vectorPath [_currentPathWaypoint].y - _animator.transform.position.y > 0;
		bool isNodeOnOtherPlatform = false; // TODO: ALLOW JUMPING FROM PLATFORM TO PLATFORM, EVEN IF NEXT PLATFORM IS AT OR BELOW IN Y
		bool shouldJump = !isAlreadyGoingUp && !isAtFinalNode && (isNodeAbove || isNodeOnOtherPlatform);

		if(shouldJump)
			_animator.CharInput.Jump = Vector2.up;
		else
			_animator.CharInput.Jump = Vector2.zero;
    }

	public EnemySaveState SaveState()
	{
		EnemySaveState s = new EnemySaveState ();

		if (_animator is OlympusAnimator)
			s.type = EnemyType.Enemy_Olympus; 
		else if(_animator is BabyBotAnimator)
			s.type = EnemyType.Enemy_BabyBot;

		s.pos = transform.position;
		s.dir = _animator.Direction;
		s.health = GetComponentInChildren<EnemyHeartBox>().HitPoints;
		return s;

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
            PlayerCharacterAnimator player = GameManager.Player;
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
            if (_playerAnimator != null)
                return (Mathf.Abs(transform.position.x - _playerAnimator.transform.position.x) < _settings.AttackRange)
                    && (Mathf.Abs(transform.position.y - _playerAnimator.transform.position.y) < _settings.AttackRange)
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
	public bool IsSearchingForPath
	{
		get { return this._isSearchingForPath; }
	}
	public float TimeSinceRepath
	{
		get { return this._timeSinceRepath; }
	}
}
