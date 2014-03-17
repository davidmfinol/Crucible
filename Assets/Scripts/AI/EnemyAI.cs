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
        _animator.CharInput.Pickup = false;

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

		// We need to retarget either if we lose or reach our target
        if(_target == Vector3.zero || _animator.Controller.bounds.Contains(_target))
            GetRandomSearchPoint();

        // We also retarget if our current path fails us
        if(!UpdateAStarPath(Settings.WanderSpeedRatio, false))
        {
            Debug.LogWarning("Astar Pathfinding failed while wandering! Choosing new target.");
            GetRandomSearchPoint();
            return;
        }

		// Go to our location
		NavigateToAstarTarget (Settings.WanderSpeedRatio);
	}
    // Helper method to find a new location to go to while wandering
    private void GetRandomSearchPoint()
    {
        // Don't do anything if we're already searching for a path
        if(_isSearchingForPath)
            return;

        // Cache the graph
        ZoneGraph graph = GameManager.AI.Graph;
        if(graph.Nodes.Length <= 0)
        {
            Debug.LogWarning("ZoneGraph not initialized while searching for a random search point!");
            return;
        }

        // Find a random walkable ground node on the graph
        int nodeNum = (int) Random.Range (0, graph.Nodes.Length);
        ZoneNode randomNode = graph.Nodes[nodeNum];
        bool isAcceptable = randomNode.Walkable && randomNode.isGround;
        while (!isAcceptable)
        {
            nodeNum = (int) Random.Range (0, graph.Nodes.Length);
            randomNode = graph.Nodes[nodeNum];
            isAcceptable = randomNode.Walkable && randomNode.isGround;
        }

        // And update our target position to the position of that random node
        UpdateAStarTarget((Vector3)randomNode.position);
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
		if (!UpdateAStarPath(Settings.SearchSpeedRatio))
			return;

		// Finally, go check out our random target point.
        NavigateToAstarTarget(Settings.SearchSpeedRatio);
	}

	// The enemy actively hunts the player down!
	private void Chase()
	{
		// Use astar while we have a valid path, but keep going even when we don't
        bool validPath = UpdateAStarPath();
        if(validPath)
        {
            NavigateToAstarTarget(Settings.ChaseSpeedRatio);
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

	private void UpdateAStarTarget(Vector3 target)
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
	IEnumerator YieldRepath()
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
        _seeker.StartPath(FootPosition, _target, OnPathFound);
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
			_currentPathWaypoint = _path.vectorPath.Count - _path.path.Count; // If the first point on the vectorpath is not a node, we account for that
		}
        else
            Debug.LogWarning("Pathfinding errored!: " + p.errorLog);
	}

    // Make sure that AI's interpretation of the AStar path is up to date and accurate
	public bool UpdateAStarPath(float speedRatio = 1.0f, bool repathOnInvalid = true)
	{
		// Keep time of track between repaths
		_timeSinceRepath += Time.fixedDeltaTime; // NOTE: WE USE FIXED DELTA TIME BECAUSE WE'RE ASSUMING WE'RE IN FIXEDUPDATE

		// First make sure we actually have a path
        if (_path == null || _path.error)
        {
			if(repathOnInvalid)
				Repath();
            return false;
        }

        // Normal operation requires repathing at a set rate
		bool canRepath = _animator.IsGrounded;
		bool shouldRepath = _timeSinceRepath > (_settings.RepathRate / speedRatio);
		if (canRepath && shouldRepath)
			Repath();
		
		// Stop if we've reached the end of the path
		bool isFinalNode = _currentPathWaypoint >= _path.vectorPath.Count;
		if (isFinalNode)
		{
			if(repathOnInvalid)
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
    public void NavigateToAstarTarget(float speedRatio)
	{
        // Store the target position
		Vector3 targetPos = _path.vectorPath [_currentPathWaypoint];
		Vector3 xExtension = Vector3.right * _animator.Controller.bounds.extents.x;

        // We find the difference between the nodes path and the vectorpath (in case they're different), to find the nodes
        int nodeOffset = _path.vectorPath.Count - _path.path.Count;
        ZoneNode prevNode = null;
        if(_currentPathWaypoint - (1 + nodeOffset) >= 0)
            prevNode = (ZoneNode) _path.path [_currentPathWaypoint - (1 + nodeOffset)];
        ZoneNode nextNode = null;
        if(_currentPathWaypoint - nodeOffset < _path.path.Count)
            nextNode = (ZoneNode) _path.path [_currentPathWaypoint - nodeOffset];

		// Determine horizontal
        float horizontalDifference = targetPos.x - transform.position.x;
        bool isNodeToRight = horizontalDifference > 0;
		bool isMidAir = !_animator.IsGrounded;
        bool atTarget =  _animator.Controller.bounds.Contains (targetPos);
        bool shouldStayStillMidair = atTarget && isMidAir;
        float timeToJump = TimeToJump(transform.position + Vector3.down * (_animator.Height * 0.5f), targetPos); // TODO: CONFIRM THIS
        float desiredHorizontalJumpSpeed = horizontalDifference / timeToJump;

        // Try to stay still while midair and at our target location
		if(shouldStayStillMidair)
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
        // Basic horizontal movement while in the air
        else if (isMidAir)
        {
			// If it's in range, let's do a controlled jump
            if(timeToJump > 0)
            {
                float normalizedDesiredSpeed = desiredHorizontalJumpSpeed / _animator.Settings.MaxHorizontalSpeed;
                _animator.CharInput.Horizontal = normalizedDesiredSpeed;
            }
			// But if it's too far, go all out
            else
            {
                _animator.CharInput.Horizontal = isNodeToRight ? 1 : -1;
            }
        }
        // Basic horizontal movement while on the ground
		else
        {
            // Normally it's easy to just move left or right depending on location of next node
            _animator.CharInput.Horizontal = isNodeToRight ? speedRatio : -speedRatio;

            // But it's important to stop moving while landing
            if(_animator.IsLanding)
                _animator.CharInput.Horizontal = 0;
        }
		
		// Determine vertical
        _animator.CharInput.Vertical = targetPos.y - transform.position.y;
        if(atTarget && nextNode != null && (nextNode.isLeftLedge || nextNode.isRightLedge))
            _animator.CharInput.Vertical = 1; // Press up whenever we're on a ledge

        // Determine jump
        // TODO: MAKE THE NEXT TWO CALLS MORE POLYMPORPHIC
        bool isClimbing = _animator.CurrentState.IsName("Climbing.ClimbingLadder") || _animator.CurrentState.IsName("Climbing.ClimbingPipe");// FIXME: SLOW
        bool isTurningAround = _animator.CurrentState.IsName("Base Layer.Turn Around"); //FIXME: SLOW
		bool isNodeAbove = targetPos.y - _animator.transform.position.y > 0;
        bool isNodeOnOtherPlatform = false;
        if(prevNode != null && nextNode != null)
            isNodeOnOtherPlatform = prevNode.GO != nextNode.GO;
        bool canFall = GameManager.AI.Graph.CanFall(transform.position, targetPos);
        bool jump = !isTurningAround && (!isMidAir || isClimbing) && isNodeOnOtherPlatform && (isNodeAbove || !canFall) && !_animator.IsLanding;

        // We need to determine how we jump on the one frame that we do decide to jump
		if(jump)
        {
            // Always clear out our horizontal input on the frame that we jump
            _animator.CharInput.Horizontal = 0;
            
            // NOTE: WE HAVE THIS CHECK BECAUSE WE CAN GET A NEGATIVE TIME TO JUMP IF WE'RE GOING TO A LEDGE REALLY HIGH UP.
            // THIS THROWS OFF OUR HORIZONTAL SPEED CALCULATION.
            // WE ASSUME THAT THE LEDGE IS REALLY CLOSE. THIS MIGHT BE BAD.
            bool highJumpHasBadHorizontal = (timeToJump < 0) && (nextNode.isLeftLedge || nextNode.isRightLedge);

            // Do a normal jump if we can make the jump using our normal speedRatio
            if(highJumpHasBadHorizontal || Mathf.Abs(desiredHorizontalJumpSpeed) < Mathf.Abs(speedRatio *_animator.Settings.MaxHorizontalSpeed))
                _animator.CharInput.Jump = Vector2.up;

            // But sometimes we need to take big jumps
			else if (isNodeToRight)
				_animator.CharInput.Jump = new Vector2(1, 1);
			else
                _animator.CharInput.Jump = new Vector2(-1, 1);


            // Always make sure we face the direction of the ledge before we jump (since we can't change direction midair)
            if((nextNode.isLeftLedge && _animator.Direction.x < 0) || (nextNode.isRightLedge && _animator.Direction.x > 0) )
            {
                _animator.CharInput.Pickup = true;
                _animator.CharInput.Jump = Vector2.zero;
            }
		}
        else
            _animator.CharInput.Jump = Vector2.zero;
        
        
        // Account for things that might be in the way of our movement
        // This might include obstacles above our head and nodes that are below the ground under our feet
        bool isLeftClear = CheckClear(transform.position - xExtension, targetPos);
        bool isMiddleClear = CheckClear(transform.position, targetPos);
        bool isRightClear = CheckClear(transform.position + xExtension, targetPos);

        if(isLeftClear && (!isMiddleClear || !isRightClear))
            _animator.CharInput.Horizontal = -speedRatio;
        else if(isRightClear && (!isMiddleClear || !isLeftClear))
            _animator.CharInput.Horizontal = speedRatio;
    }
    // Just a simple check to make sure that there are no ground layer obstacles between two points
    public bool CheckClear(Vector3 start, Vector3 end)
    {
        Vector3 dir = end - start;
        return !Physics.Raycast(start, dir, dir.magnitude, 1 << 12); 
    }
    public float TimeToJump(Vector3 pointA, Vector3 pointB)
    {
        // We'll solve the quadratic equation of y = Vt - (1/2)g(t^2) for t
        float a = 0.5f * -_animator.Settings.Gravity;
        float b = _animator.VerticalSpeed;
        float c = pointA.y - pointB.y;

        // If it's impossible to make the jump, we return -1
        float discriminant = b * b - 4 * a * c;
        if(discriminant < 0)
            return -1;

        float divisor = (2 * a);

        float root1 = (-b + Mathf.Sqrt(discriminant)) / divisor;
        float root2 = (-b - Mathf.Sqrt(discriminant)) / divisor;

		// FIXME: SLOW && MAKE MORE OBJECT ORIENTED
		return _animator.CurrentState.IsName("Base Layer.Jumping") ? Mathf.Max(root1, root2) : Mathf.Min(root1, root2);
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
    public Vector3 FootPosition
    {
        get { return transform.position + (Vector3.down * _animator.Height * 0.5f) + Vector3.up; }
    }
}
