using UnityEngine;
using System.Collections;
using System.Collections.Generic;
using Pathfinding;

/// <summary>
/// Enemy AI is the basic AI class for the enemies.
/// Mostly, this AI is just an interpretation A* Shortest-Pathfinding.
/// </summary>
[RequireComponent(typeof(CharacterAnimator))]
[RequireComponent(typeof(EnemyAISettings))]
[RequireComponent(typeof(Seeker))]
[AddComponentMenu("AI/Basic Enemy AI")]
public class EnemyAI : MonoBehaviour
{
    public enum AwarenessLevel : int
    {
        Unaware = 0,
        Searching = 1,
        Chasing = 2
    }


    // Generic enemy AI components
    private CharacterAnimator _animator;
    private EnemyAISettings _settings;
    private CharacterAnimator _playerAnimator;
	private HearingRadius _personalHearingRadius;
	private Vision _personalVision;
    private float _timeSincePlayerSeen;
    
    // A* PathFinding
    private Seeker _seeker;
    private Vector3 _target = Vector3.zero; // where the enemy wants to go
    private Path _path = null; // how it plans to get there
    private int _currentPathWaypoint = 0; // where it is on that path
    private static bool _isSearchingForPath = false; // Is the enemy currently looking for a path?
    private float _timeSinceRepath = 0; // how long has it been since it found a path
    private bool _hasTouchedNextNode = false; // keep track of whether we've already reached the node we're going to 

    // How aware is the enemy of the player?
    private AwarenessLevel _awareness = AwarenessLevel.Unaware;

    void Start ()
    {
        // Set up the generic AI components
        _animator = GetComponent<CharacterAnimator> ();
        _settings = GetComponent<EnemyAISettings> ();
		_personalHearingRadius = GetComponentInChildren<HearingRadius> ();
		_personalVision = GetComponentInChildren<Vision> ();
        _timeSincePlayerSeen = 0;

        // Set up Astar
        _seeker = GetComponent<Seeker> ();
        if (_seeker == null)
            _seeker = gameObject.AddComponent<Seeker> ();

        // Map the output of this class to the input of the animator
        GetComponent<CharacterInput> ().UpdateInputMethod = UpdateInput;

        // Let child classes initialize
        OnStart ();
        
        // Finally, register ourselves with the AI system
        GameManager.AI.Enemies.Add (this);
        transform.parent = GameManager.AI.transform;

    }

    protected virtual void OnStart()
    {
        // Child classes may override to do things in Start()
    }

    // The CharacterAnimator calls this method, so we will do all of the AI processing within it
    public virtual void UpdateInput ()
    {
        // By default, have the enemy do nothing
        Animator.CharInput.Horizontal = 0;
        Animator.CharInput.Vertical = 0;
        Animator.CharInput.Jump = Vector2.zero;
        Animator.CharInput.Attack = 0;
        Animator.CharInput.Pickup = false;

        // Based off the awareness level of the enemy, it'll do 1 of 3 things
        UpdateAwareness ();
        switch (Awareness) {
        case AwarenessLevel.Unaware:
            if (Settings.ShouldWander) 
                Wander ();
            break;
        case AwarenessLevel.Searching:
            Search ();
            break;
        case AwarenessLevel.Chasing:
            Chase ();
            break;
        }

    }
    
    protected virtual void UpdateAwareness ()
    {
        // Check vision first
        if (Settings.CanSee && IsSeeingPlayer) {
            Awareness = AwarenessLevel.Chasing;
            _timeSincePlayerSeen = _settings.VisionMemory; // How long we remember seeing a player
        }

        // Then hearing
        else if (_timeSincePlayerSeen <= 0.0f && _settings.CanHear && HasHeardSound)
            Awareness = AwarenessLevel.Searching;

        // If we can't see or hear the player, wait a while before we completely forget where the player is
        else if (_timeSincePlayerSeen <= 0.0f) 
            Awareness = AwarenessLevel.Unaware;
        else
            _timeSincePlayerSeen -= Time.deltaTime;

    }

    // Have the enemy wander around the map
    protected virtual void Wander ()
    {
        // Child classes should have their own implementation
    }

    // Enemy is kind of aware of player, but not really
    protected virtual void Search ()
    {
        // Stop searching if we can't hear
        if (!Settings.CanHear || PersonalHearingRadius == null)
            return;
        
        //TODO: KEEP TRACK OF ONLY ONE SOUND?
        // Pop off sounds we can identify until we find one we haven't reached yet
        while (PersonalHearingRadius.ObjectsHeard.Count > 0 && Vector3.Distance(PersonalHearingRadius.ObjectsHeard[0].transform.position, transform.position) < Settings.SoundInspectionRange)
            PersonalHearingRadius.ObjectsHeard.RemoveAt (0);
        
        // Set our target as appropriate, or return if we don't have one
        if (PersonalHearingRadius.ObjectsHeard.Count > 0)
            UpdateAStarTarget (PersonalHearingRadius.ObjectsHeard [0].transform.position);
        else
            return;
        
        // If no valid path, abort
        if (!UpdateAStarPath (Settings.SearchSpeedRatio))
            return;
        
        // Finally, go check out our random target point.
        NavigateToAstarTarget (Settings.SearchSpeedRatio);

    }

    // The enemy actively hunts the player down!
    protected virtual void Chase ()
    {
        // Use astar while we have a valid path, but keep going even when we don't
        bool validPath = UpdateAStarPath ();
        if (validPath) {
            NavigateToAstarTarget (Settings.ChaseSpeedRatio);
        } else {
            Vector3 playerPos = GameManager.Player.transform.position;
            Animator.CharInput.Horizontal = playerPos.x - transform.position.x;
        }

    }

    // Helper method to find a new random location for the enemy to go to
    protected virtual void GetRandomSearchPoint (Bounds constraints)
    {
        // Don't do anything if we're already searching for a path
        if (IsSearchingForPath)
            return;
        
        // Make sure we have a worthwhile graph
        ZoneGraph graph = GameManager.AI.Graph;
        if (graph.Nodes.Length <= 0 || graph.ZonesWithWaypoints == null || graph.ZonesWithWaypoints.Count <= 0) {
            //Debug.LogWarning("ZoneGraph not initialized while searching for a random search point!");
            return;
        }
        
        // Find the zone to narrow our search
        List<Bounds> zones = new List<Bounds>(graph.ZonesWithWaypoints.Keys);
        Bounds zone = zones [(int) Random.Range(0, zones.Count)];
        if(constraints.extents != Vector3.zero)
            foreach(Bounds bounds in zones)
                if(bounds.Equals(constraints))
                    zone = bounds;

        // Find a random node within that zone
        List<ZoneNode> nodes = graph.ZonesWithWaypoints[zone];
        ZoneNode randomNode = nodes [(int)Random.Range (0, nodes.Count)];
        bool isNodeGround = (randomNode.Tag & (1 << 0)) != 0;
        bool isAcceptable = randomNode.Walkable && isNodeGround;
        while (!isAcceptable) {
            randomNode = nodes [(int)Random.Range (0, nodes.Count)];
            isNodeGround = (randomNode.Tag & (1 << 0)) != 0;
            isAcceptable = randomNode.Walkable && isNodeGround;
        }
        
        // And update our target position to the position of that random node
        UpdateAStarTarget ((Vector3)randomNode.position);
        
    }

    protected virtual void UpdateAStarTarget (Vector3 target)
    {
        // Vector3.zero is our shortcut to go to the location of the player
        if (target == Vector3.zero) {
            if (_playerAnimator == null && GameManager.Player != null)
                _playerAnimator = GameManager.Player;
            if (_playerAnimator != null)
                _target = _playerAnimator.transform.position;
            else
                Debug.LogWarning ("Failed to find player animator while looking for astar target!");
        }

        // Update our target when appropriate
        else if (target != _target) {
            _playerAnimator = null;
            _target = target;
        }

        // Don't do anything if we already have the target
        else
            return;

        // We call yieldRepath because we want to ENSURE that we get a new path for this new target
        StartCoroutine (YieldRepath ());

    }

    // Waits until we are not searching for a path to then start searching for a new path
    public IEnumerator YieldRepath ()
    {
        while (_isSearchingForPath)
            yield return null;

        Repath ();

    }

    // Starts searching for a new path, if we're not already searching for a path
    public virtual void Repath ()
    {
        if (_isSearchingForPath)
            return;

        // If we set the _playerAnimator, that means we want to hunt the player down
        if (_playerAnimator != null)
            _target = _playerAnimator.transform.position;

        // We get a path from a point near the feet, since that's where the nodes are
        _seeker.StartPath (FootPosition, _target, OnPathFound);
        _isSearchingForPath = true;

    }
    
    // This method is called by A* when it finds a path for us
    public virtual void OnPathFound (Path p)
    {
        _isSearchingForPath = false;
        _timeSinceRepath = 0;
        
        if (!p.error) {
            _path = p;
            _currentPathWaypoint = _path.vectorPath.Count - _path.path.Count; // If the first point on the vectorpath is not a node, we account for that
            _hasTouchedNextNode = false;
        }// else
        // Debug.LogWarning ("Pathfinding errored!: " + p.errorLog);

    }

    // Make sure that AI's interpretation of the AStar path is up to date and accurate
    public virtual bool UpdateAStarPath (float speedRatio = 1.0f, bool repathOnInvalid = true)
    {
        // Keep time of track between repaths
        _timeSinceRepath += Time.deltaTime;

        // First make sure we actually have a path
        if (_path == null || _path.error) {
            if (repathOnInvalid)
                Repath ();
            return false;
        }

        // Normal operation requires repathing at a set rate
        bool canRepath = _animator.IsGrounded;
        bool shouldRepath = _timeSinceRepath > (_settings.RepathRate / speedRatio);
        if (canRepath && shouldRepath)
            Repath ();
        
        // Stop if we've reached the end of the path
        bool isFinalNode = _currentPathWaypoint >= _path.vectorPath.Count;
        if (isFinalNode) {
            if (repathOnInvalid)
                Repath ();
            return false;
        }

        // Move on if we reached our waypoint
        bool isTouchingNextNode = _animator.Controller.bounds.Contains (_path.vectorPath [_currentPathWaypoint]);
        _hasTouchedNextNode = _hasTouchedNextNode || isTouchingNextNode;

        // We only want to move on if the player is grounded when he's going to a ground node
        // TODO: FIXME, AS THIS STILL ALLOWS THE CHARACTER TO MOVE ON EVEN WHILE CLIMBING UP AND NOT GROUNDED? (SEE JIRA ISSUE)
        bool isWaypointLongerThanPath = (_currentPathWaypoint >= _path.path.Count);
        bool doesNodeRequireGround = false;
        if (!isWaypointLongerThanPath) {
            bool isNodeGround = (((ZoneNode)_path.path [_currentPathWaypoint]).Tag & (1 << 0)) != 0;
            doesNodeRequireGround = isNodeGround;
        }
        bool isCharacterTouchingGround = _animator.IsGrounded;

        if (!isFinalNode && (isTouchingNextNode || _hasTouchedNextNode) && (!doesNodeRequireGround || isCharacterTouchingGround)) {
            _currentPathWaypoint++;
            _hasTouchedNextNode = false;
        }

        // Return whether we're still on the current path
        return _currentPathWaypoint < _path.vectorPath.Count;

    }

    // Make the AI input to the Animator the values that will make it reach it's defined A* Target
    public virtual void NavigateToAstarTarget (float speedRatio)
    {
        // Store the target position
        Vector3 targetPos = Path.vectorPath [CurrentPathWaypoint];
        Vector3 xExtension = Vector3.right * Animator.Radius;

        // A check to make sure we don't get stuck someplace
        //TODO: see if we can use this with a larger threshold for doing the jump (a higher amount of frames in the same spot than just one)?
        //bool wasAtSameLocationLastFrame = Vector3.Distance(_lastFrameLocation, transform.position) < 0.01;
        //_lastFrameLocation = transform.position;

        // We find the difference between the nodes path and the vectorpath (in case they're different), to find the nodes
        int nodeOffset = Path.vectorPath.Count - Path.path.Count;
        ZoneNode prevNode = null;
        if (CurrentPathWaypoint - (1 + nodeOffset) >= 0)
            prevNode = (ZoneNode)Path.path [CurrentPathWaypoint - (1 + nodeOffset)];
        ZoneNode nextNode = null;
        if (CurrentPathWaypoint - nodeOffset < Path.path.Count)
            nextNode = (ZoneNode)Path.path [CurrentPathWaypoint - nodeOffset];

        // We need to know some tag information about the nodes
        bool isNextNodeLeftLedge = nextNode != null && (nextNode.Tag & (1 << 1)) != 0;
        bool isNextNodeRightLedge = nextNode != null && (nextNode.Tag & (1 << 2)) != 0;
        bool isNextNodeLedge = isNextNodeLeftLedge || isNextNodeRightLedge;
        bool isNextNodeWall = nextNode != null && (nextNode.Tag & (1 << 4)) != 0;
        
        // Determine horizontal
        float horizontalDifference = targetPos.x - transform.position.x;
        bool isNodeToRight = horizontalDifference > 0;
        bool isMidAir = !Animator.IsGrounded;
        bool atTarget = AtTarget (targetPos);
        bool shouldStayStillMidair = atTarget && isMidAir;
        float timeToJump = TimeToJump (transform.position + Vector3.down * (Animator.Height * 0.5f), targetPos); // TODO: CONFIRM THIS
        float desiredHorizontalJumpSpeed = horizontalDifference / timeToJump;

        // Try to stay still while midair and at our target location
        if (shouldStayStillMidair) {
            // Make sure we grab onto things when we can 
            if (Animator.CanHangOffObject) {
                if (isNextNodeRightLedge)
                    Animator.CharInput.Horizontal = -speedRatio;
                else if (isNextNodeLeftLedge)
                    Animator.CharInput.Horizontal = speedRatio;
                else
                    Animator.CharInput.Horizontal = 0;
            } else {
                // Get our speedratio down towards 0 (when it's less than 0.1, it's ignored)
                float currentSpeedRatio = Animator.HorizontalSpeed / Animator.Settings.MaxHorizontalSpeed;
                Animator.CharInput.Horizontal = -currentSpeedRatio;
            }
        }
        // Basic horizontal movement while in the air
        else if (isMidAir) {
            // If it's in range, let's do a controlled jump
            if (timeToJump > 0) {
                float normalizedDesiredSpeed = desiredHorizontalJumpSpeed / _animator.Settings.MaxHorizontalSpeed;
                Animator.CharInput.Horizontal = normalizedDesiredSpeed;
            }
            // But if it's too far, go all out
            else {
                Animator.CharInput.Horizontal = isNodeToRight ? 1 : -1;
            }
        }
        // Basic horizontal movement while on the ground
        else {
            // Normally it's easy to just move left or right depending on location of next node
            Animator.CharInput.Horizontal = isNodeToRight ? speedRatio : -speedRatio;

            // But it's important to stop moving while landing
            if (Animator.IsLanding)
                Animator.CharInput.Horizontal = 0;
        }
        
        // Determine vertical
        Animator.CharInput.Vertical = targetPos.y - transform.position.y;
        if (atTarget && nextNode != null && isNextNodeLedge)
            Animator.CharInput.Vertical = 1; // Press up whenever we're on a ledge

        // Determine jump
        bool isClimbing = _animator.IsClimbing;
        bool isTurningAround = _animator.IsTurningAround; 
        bool isNodeAbove = targetPos.y - _animator.transform.position.y > 0;
        bool isNodeOnOtherPlatform = false;
        if (prevNode != null && nextNode != null)
            isNodeOnOtherPlatform = (prevNode.GO != nextNode.GO) && !prevNode.GO.collider.bounds.Intersects (nextNode.GO.collider.bounds);
        bool canFall = GameManager.AI.Graph.CanFall (transform.position, targetPos);
        bool shouldJump = isNodeAbove || (isNodeOnOtherPlatform && !canFall);
        bool canJump = !isTurningAround && !Animator.IsLanding && (!isMidAir || isClimbing);
        bool jump = canJump && shouldJump;

        // We need to determine how we jump on the one frame that we do decide to jump
        if (jump) {
            // Always clear out our horizontal input on the frame that we jump
            Animator.CharInput.Horizontal = 0;
            
            // NOTE: WE HAVE THIS CHECK BECAUSE WE CAN GET A NEGATIVE TIME TO JUMP IF WE'RE GOING TO A LEDGE REALLY HIGH UP.
            // THIS THROWS OFF OUR HORIZONTAL SPEED CALCULATION.
            // WE ASSUME THAT THE LEDGE IS REALLY CLOSE. THIS MIGHT BE BAD.
            bool highJumpHasBadHorizontal = (timeToJump < 0) && isNextNodeLedge;

            // Do a normal jump if we can make the jump using our normal speedRatio
            if (!isNextNodeWall && (highJumpHasBadHorizontal || Mathf.Abs (desiredHorizontalJumpSpeed) < Mathf.Abs (speedRatio * Animator.Settings.MaxHorizontalSpeed)))
                Animator.CharInput.Jump = Vector2.up;

            // But sometimes we need to take big jumps
            else if (isNodeToRight)
                Animator.CharInput.Jump = new Vector2 (1, 1);
            else
                Animator.CharInput.Jump = new Vector2 (-1, 1);


            // Always make sure we face the direction of the ledge before we jump (since we can't change direction midair)
            if ((isNextNodeLeftLedge && Animator.Direction.x < 0) || (isNextNodeRightLedge && Animator.Direction.x > 0)) {
                Animator.CharInput.Pickup = true;
                Animator.CharInput.Jump = Vector2.zero;
            }
        } else
            Animator.CharInput.Jump = Vector2.zero;
        
        
        // Account for things that might be in the way of our movement
        // This might include obstacles above our head and nodes that are below the ground under our feet
        bool isLeftClear = CheckClear (FootPosition - xExtension, targetPos);
        bool isMiddleClear = CheckClear (FootPosition, targetPos);
        bool isRightClear = CheckClear (FootPosition + xExtension, targetPos);

        if (isLeftClear && (!isMiddleClear || !isRightClear))
            Animator.CharInput.Horizontal = -speedRatio;
        else if (isRightClear && (!isMiddleClear || !isLeftClear))
            Animator.CharInput.Horizontal = speedRatio;

    }

    // Just a simple check to make sure that there are no ground layer obstacles between two points
    public bool CheckClear (Vector3 start, Vector3 end)
    {
        Vector3 dir = end - start;
        return !Physics.Raycast (start, dir, dir.magnitude, 1 << 12); 

    }

    // Finds how much time it would take to make a jump from pointA to pointB
    public float TimeToJump (Vector3 pointA, Vector3 pointB)
    {
        // We'll solve the quadratic equation of y = Vt - (1/2)g(t^2) for t
        float a = 0.5f * -_animator.Settings.Gravity;
        float b = _animator.VerticalSpeed;
        float c = pointA.y - pointB.y;

        // If it's impossible to make the jump, we return -1
        float discriminant = b * b - 4 * a * c;
        if (discriminant < 0)
            return -1;

        float divisor = (2 * a);

        float root1 = (-b + Mathf.Sqrt (discriminant)) / divisor;
        float root2 = (-b - Mathf.Sqrt (discriminant)) / divisor;

        // If we're jumping, choose the farthest, otherwise choose the closer one
        return _animator.IsJumping ? Mathf.Max (root1, root2) : Mathf.Min (root1, root2);

    }

    // Determines whether this character has reached the target
    // We need this because we want to allow a certain amount of leniency
    public bool AtTarget (Vector3 target)
    {
        Bounds bounds = _animator.Controller.bounds;
        Vector3 centerPoint = bounds.center;
        Vector3 extents = bounds.extents;
        extents.x += Settings.TargetLeniency;

        bool isInY = (target.y > centerPoint.y - extents.y) && (target.y < centerPoint.y + extents.y); 
        bool isInx = (target.x > centerPoint.x - extents.x) && (target.x < centerPoint.x + extents.x); 

        return isInY && isInx;

    }

    public EnemySaveState SaveState ()
    {
        bool wasActive = gameObject.activeSelf;
        gameObject.SetActive (true);

        EnemySaveState s = new EnemySaveState ();
        s.Type = _animator.EnemyType;
        s.Position = transform.position;
        s.Rotation = transform.rotation;
        s.Direction = _animator.Direction;
        s.Health = GetComponentInChildren<EnemyHeartBox> ().HitPoints;

        gameObject.SetActive (wasActive);

        return s;

    }

    void OnDestroy ()
    {
        GameManager.AI.Enemies.Remove (this);
        Destroy(PersonalHearingRadius);
        Destroy(PersonalVision);

    }


    // Generic Properties
    public CharacterAnimator Animator {
        get { return _animator; }
    }

    public EnemyAISettings Settings {
        get { return _settings; }
    }

    public virtual AwarenessLevel Awareness {
        get { return _awareness; }
        set { _awareness = value; }
    }

    public HearingRadius PersonalHearingRadius {
        get { return _personalHearingRadius; }
    }

    public bool HasHeardSound {
        get { return PersonalHearingRadius != null ? PersonalHearingRadius.ObjectsHeard.Count > 0 : false; }
    }
    
    public bool CouldHearPlayer {
        get { 
            foreach (HeartBox heart in PersonalHearingRadius.CharactersCouldHear)
                if(heart.Allegiance == TeamAllegiance.Player)
                    return true;
            return false; 
        }
    }

	public Vision PersonalVision {
		get { return _personalVision; }
	}

	public bool IsSeeingPlayer {
		get { return _personalVision != null && _personalVision.IsSeeingPlayer (_animator.Direction); }
	}

    // Is the player in the range that the enemy could feasibly hit him?
    public bool IsPlayerInAttackRange {
        get {
            if (GameManager.Player != null)
                return (Mathf.Abs (transform.position.x - GameManager.Player.transform.position.x) < Settings.AttackRange)
                    && (Mathf.Abs (transform.position.y - GameManager.Player.transform.position.y) < Settings.AttackRange);
            return false;
        }
    }
    
    // A* Properties
    public Seeker Seeker {
        get { return this._seeker; }
    }

    public Vector3 Target {
        get { return this._target; }
        set { UpdateAStarTarget (value); }
    }

    public Path Path {
        get { return this._path; }
    }

    public int CurrentPathWaypoint {
        get { return this._currentPathWaypoint; }
    }

    public bool IsSearchingForPath {
        get { return _isSearchingForPath; }
    }

    public float TimeSinceRepath {
        get { return this._timeSinceRepath; }
    }

    public Vector3 FootPosition {
        get { return transform.position + (Vector3.down * _animator.Height * 0.5f) + Vector3.up; }
    }

}
