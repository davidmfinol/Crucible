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
    // Generic enemy AI components
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

		// We need to retarget every now and then (based off current target and current position)
        if(_target == Vector3.zero || _playerAnimator != null || _animator.Controller.bounds.Contains(_target))
		{
            if(!_isSearchingForPath)
            {
                Vector3 targetPos = GameManager.AI.GetRandomSearchPoint(transform.position);
    			if(!targetPos.Equals(Vector3.zero))
                    UpdateAStarTarget(targetPos);
                else
                    Debug.LogWarning("Failed to find a random search point!");
            }
		}

		// Stop if we can't get a path
		if(!UpdateAStarPath())
        {
            Debug.LogWarning("Unable to use path while wandering!");
			return;
        }

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
		// Use astar while we have a valid path, but keep going even when we don't
        bool validPath = UpdateAStarPath();
        if(validPath)
        {
            AstarNavigateToTarget(1.0f);
        }
        else
        {
            Vector3 playerPos = GameManager.Player.transform.position;
            _animator.CharInput.Horizontal = playerPos.x - transform.position.x;
        }

        // Don't jump at the player
        bool isLastNode = _path != null && (_currentPathWaypoint >= _path.vectorPath.Count - 1);
        if(isLastNode)
            _animator.CharInput.Jump = Vector2.zero;

        // Determine attack
		//bool randomChance = (Random.Range(0.0f, 1.0f) > 0.95f);
		bool isStunned = _animator.CurrentState.IsName("Base Layer.Stun");
        bool shouldAttack = IsPlayerInAttackRange && !isStunned && !_animator.IsDead(); //&& randomChance;
		_animator.CharInput.Attack = shouldAttack ? 1 : 0;

        // TODO: VERTICAL ATTACK
	}

	public void UpdateAStarTarget(Vector3 target)
	{
        // Vector3.zero is our shortcut to go to the location of the player
		if(target == Vector3.zero)
		{
			if(_playerAnimator == null && GameManager.Player != null)
				_playerAnimator = GameManager.Player;
			if(_playerAnimator != null)
				_target = _playerAnimator.transform.position;
			else
				Debug.LogWarning("Failed to find player animator while looking for astar target!");
        }
		else if(target != _target)
		{
			_playerAnimator = null;
			_target = target;
        }
        else
            return; // Don't do anything if we already have the target

        // We call yieldRepath because we want to ENSURE that we get a new path for this new target
        StartCoroutine ("YieldRepath");
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

        // If we set the _playerAnimator, that means we want to hunt the player down
		if(_playerAnimator != null)
			_target = _playerAnimator.transform.position;

        // We get a path from a point near the feet, since that's where the nodes are
        Vector3 startPos=  transform.position + (Vector3.down * _animator.Height * 0.5f) + Vector3.up;
        _seeker.StartPath(startPos, _target, OnPathFound);
        _isSearchingForPath = true;
	}
	
    // This method is called by A* when it finds a path for us
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
            Debug.LogWarning("Pathfinding errored!: " + p.errorLog);
	}

    // Make sure that AI's interpretation of the AStar path is up to date and accurate
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
		bool isTouchingNextNode = _animator.Controller.bounds.Contains (_path.vectorPath[_currentPathWaypoint]);
		bool isWaypointLongerThanPath = (_currentPathWaypoint >= _path.path.Count);
		bool isNodeTouchingGround = isWaypointLongerThanPath ? true : ((ZoneNode)_path.path [_currentPathWaypoint]).isGround;
		bool isCharacterTouchingGround = _animator.IsGrounded;
		if ( isTouchingNextNode && !isFinalNode && (!isNodeTouchingGround || isCharacterTouchingGround) )
    		_currentPathWaypoint++;

		// Return whether we're still on the current path
		return _currentPathWaypoint < _path.vectorPath.Count;
	}

    // Make the AI input to the Animator the values that will make it reach it's defined A* Target
    public void AstarNavigateToTarget(float speedRatio)
	{
        // We don't move while landing
        if(_animator.IsLanding)
            return;

        // Store the target position
        Vector3 targetPos = _path.vectorPath [_currentPathWaypoint];
        Vector3 xExtension = new Vector3(_animator.Controller.bounds.extents.x, 0, 0);

        // We find the difference between the nodes path and the vectorpath (in case they're different), to find the nodes
        int offset = _path.vectorPath.Count - _path.path.Count;
        ZoneNode prevNode = null;
        if(_currentPathWaypoint - (1 + offset) >= 0)
            prevNode = (ZoneNode) _path.path [_currentPathWaypoint - (1 + offset)];
        ZoneNode nextNode = null;
        if(_currentPathWaypoint - offset < _path.path.Count)
            nextNode = (ZoneNode) _path.path [_currentPathWaypoint - offset];

		// Determine horizontal
        float horizontalDifference = targetPos.x - transform.position.x;
        bool isNodeToRight = horizontalDifference > 0;
		bool isMidAir = !_animator.IsGrounded;
        bool isCloseEnough =  _animator.Controller.bounds.Contains (targetPos);
        bool isInStopRange = Mathf.Abs(horizontalDifference) < Settings.JumpStopRange;
        bool shouldStayStillMidair = isCloseEnough && isMidAir;

		if(shouldStayStillMidair) // Try to stay still while midair
        {
            // Make sure we grab onto things when we can 
            if(_animator.CanHangOffObject)
            {
                if(nextNode.isRightLedge)
                    _animator.CharInput.Horizontal = -speedRatio;
                else if(nextNode.isLeftLedge)
                    _animator.CharInput.Horizontal = speedRatio;
                else
                    _animator.CharInput.Horizontal = 0;
            }
            else
            {
                // Get our speedratio down towards 0 (when it's less than 0.1, it's ignored)
                float currentSpeedRatio = _animator.HorizontalSpeed/_animator.Settings.MaxHorizontalSpeed;
                _animator.CharInput.Horizontal = -currentSpeedRatio;
            }
        }
        else if (isMidAir) // Basic horizontal movement while in the air
        {
            if(isInStopRange)
            {
                float timeToTravel = TimeToJump(transform.position, targetPos);
                float distanceToTravel = targetPos.x - transform.position.x;
                float desiredSpeed = distanceToTravel / timeToTravel;
                _animator.CharInput.Horizontal = desiredSpeed / _animator.Settings.MaxHorizontalSpeed;
            }
            else
                _animator.CharInput.Horizontal = isNodeToRight ? 1 : -1;
        }
		else // Basic horizontal movement while on the ground
        {
            _animator.CharInput.Horizontal = isNodeToRight ? speedRatio : -speedRatio;
        }
		
		// Determine vertical
        _animator.CharInput.Vertical = targetPos.y - transform.position.y;
        if(nextNode != null && (nextNode.isLeftLedge || nextNode.isRightLedge))
            _animator.CharInput.Vertical = 1; // Press up whenever we're on a ledge

        // Determine jump
        bool isClimbing = _animator.CurrentState.IsName("Climbing.ClimbingLadder") || _animator.CurrentState.IsName("Climbing.ClimbingPipe");// FIXME: SLOW
		bool isNodeAbove = targetPos.y - _animator.transform.position.y > 0;
        bool isNodeOnOtherPlatform = false;
        if(prevNode != null && nextNode != null)
            isNodeOnOtherPlatform = prevNode.GO != nextNode.GO;
        bool canFall = GameManager.AI.Graph.CanFall(transform.position, targetPos);
        bool shouldJump = (!isMidAir || isClimbing) && isNodeOnOtherPlatform && (isNodeAbove || !canFall);
        bool canJump = GameManager.AI.Graph.CanJump (transform.position, targetPos);
		bool jump = shouldJump && canJump;

		if(jump)
        {
            if(_animator.IsGrounded)
                _animator.CharInput.Horizontal = 0;

            if(isInStopRange)
            {
                if(nextNode.isLeftLedge)
                    _animator.CharInput.Horizontal = speedRatio;
                if(nextNode.isRightLedge)
                    _animator.CharInput.Horizontal = -speedRatio;
				_animator.CharInput.Jump = Vector2.up;
            }
			else if (isNodeToRight)
				_animator.CharInput.Jump = new Vector2(1, 1);
			else
                _animator.CharInput.Jump = new Vector2(-1, 1);
		}
		else
            _animator.CharInput.Jump = Vector2.zero;
        
        // Account for things that might be in the way of jumping
        bool isLeftAboveClear = CheckClear(transform.position - xExtension, targetPos);
        bool isMiddleAboveClear = CheckClear(transform.position, targetPos);
        bool isRightAboveClear = CheckClear(transform.position + xExtension, targetPos);
        //Vector3 endAtLowerY = targetPos;
       // endAtLowerY.y = transform.position.y - _animator.Height;

        if(isLeftAboveClear && (!isMiddleAboveClear || !isRightAboveClear))
        {
            _animator.CharInput.Horizontal = -speedRatio;
            //if(jump && !CheckClear(transform.position - xExtension, endAtLowerY))
            //    _animator.CharInput.Jump = Vector2.zero;
        }
        else if(isRightAboveClear && (!isMiddleAboveClear || !isLeftAboveClear))
        {
            _animator.CharInput.Horizontal = speedRatio;
            //if(jump && !CheckClear(transform.position + xExtension, endAtLowerY))
             //   _animator.CharInput.Jump = Vector2.zero;
        }
    }
    public bool CheckClear(Vector3 start, Vector3 end)
    {
        Vector3 dir = end - start;
        return !Physics.Raycast(start, dir, dir.magnitude, 1 << 12); 
    }
    public float TimeToJump(Vector3 pointA, Vector3 pointB)
    {
        float a = 0.5f * -_animator.Settings.Gravity;
        float b = _animator.VerticalSpeed;
        float c = pointA.y - pointB.y;
        float root1 = (-b + Mathf.Sqrt(b * b - 4 * a * c)) / (2 * a);
        float root2 = (-b - Mathf.Sqrt(b * b - 4 * a * c)) / (2 * a);
        if(Mathf.Max(root1, root2) <= 0)
            Debug.LogWarning("Negative time!: " + root1 + " " + root2);
        return Mathf.Max(root1, root2);
    }

	public EnemySaveState SaveState()
	{
		EnemySaveState s = new EnemySaveState ();

        // TODO: MAKE THE ANIMATOR COMPONENT RETURN ITS TYPE (_ANIMATOR.ENEMYTYPE)
		if (_animator is OlympusAnimator)
			s.Type = EnemyType.Enemy_Olympus; 
		else if(_animator is BabyBotAnimator)
			s.Type = EnemyType.Enemy_BabyBot;

		s.Position = transform.position;
		s.Direction = _animator.Direction;
		s.Health = GetComponentInChildren<EnemyHeartBox>().HitPoints;
		return s;
	}

	void OnDestroy()
    {
		GameManager.AI.Enemies.Remove (this);
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
            CharacterAnimator player = GameManager.Player;

            if(player == null || player.MecanimAnimator == null || player.IsDead())
                return false;
           
            GameObject playerGO = player.gameObject;
            
            if (playerGO == null)
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
                return false;
            
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
                    && (Mathf.Abs(transform.position.y - _playerAnimator.transform.position.y) < _settings.AttackRange);
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
