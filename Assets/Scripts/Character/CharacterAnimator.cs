using UnityEngine;
using System.Collections.Generic;
using System.Collections;

/// <summary>
/// CharacterAnimator works with CharacterController and Mecanim's Animator to move and animate characters.
/// CharacterSettings is used to store all settings about how a character moves.
/// CharacterInput is used to keep track of what input is being passed in during gameplay (ie directional buttons, jump, attack).
/// </summary>
[RequireComponent(typeof(CharacterController))]
[RequireComponent(typeof(Animator))]
[RequireComponent(typeof(CharacterSettings))]
[RequireComponent(typeof(CharacterInput))]
[AddComponentMenu("Character/Character Animator")]
public class CharacterAnimator : MonoBehaviour
{
	// Components used with movement and animation
	private CharacterController _characterController;
	private Animator _animator;
	private CharacterSettings _characterSettings;
	private CharacterInput _characterInput;
	private HeartBox _heartBox;

	// This dictionary maps AnimatorState.name hashes to corresponding function delegates to quickly choose the correct actions for a given state
	public delegate void ProcessState(float elapsedTime);
	private Dictionary<int, ProcessState> _stateMachine; // <Hash of State name, corresponding function delegate for State>
	
	// We use these to determine movement
    private float _horizontalSpeed = 0.0f; // How fast does the character want to move on the x-axis?
    private float _verticalSpeed = 0.0f; // How fast does the character want to move on the y-axis?
    private Vector3 _direction = Vector3.right; // The current direction the character is facing in x-y.
	private Vector3 _prevDirection = Vector3.right; // The last direction that the player was facing before the current direction
    private CollisionFlags _collisionFlags = CollisionFlags.None; // The last collision flags returned from characterController.Move()
    private Vector3 _velocity = Vector3.zero; // The last velocity moved as a result of the characterController.Move()
    private float _lastGroundHeight = 0.0f; // Keep track of the last y position at which the character was touching the ground

    // Moving platform support
    private Transform _activePlatform;
    private Vector3 _activeLocalPlatformPoint;
    private Vector3 _activeGlobalPlatformPoint;

    // Support for hanging off of objects
	private List<HangableObject> _hangQueue = new List<HangableObject>();
    private HangableObject _previousHangTarget = null;

    // We need a way to move between zones
    private Zone _currentZone = null; // Zone we are currently in
    private Zone _Zlower = null; // Zone we go to if we press down
    private Zone _Zhigher = null; // Zone we go to if we press up
    private List<Zone> _zones = new List<Zone>(); // All the zones we could currently be in
    private bool _canTransitionZ = false; // Does our current location allow us to to move between zones?
	
	
	void Start()
	{
		_stateMachine = new Dictionary<int, ProcessState>();
		CreateStateMachine();
		
		_characterController = GetComponent<CharacterController>();
		_animator = GetComponent<Animator>();
		_characterSettings = GetComponent<CharacterSettings>();
		_characterInput = GetComponent<CharacterInput>();
		_heartBox = GetComponentInChildren<HeartBox>();

        _lastGroundHeight = transform.position.y;

		Initialize();
	}
	protected virtual void CreateStateMachine()
	{
		// TODO: DYNAMICALLY GENERATE IF POSSIBLE
		StateMachine[Animator.StringToHash("Base Layer.Idle")] = DoNothing;
	}
	public void DoNothing(float elapsedTime)
	{
		Debug.LogWarning("State Machine using default doNothing");
	}
	protected virtual void Initialize()
	{
		// Child classes should override this method if they want to initialize variables on Start()
	}

	void Update()
	{
		// Check health every frame to make sure we aren't dead
        if (_heartBox != null && _heartBox.HitPoints <= 0)
            OnDeath();

		// Handle all the z-zone stuff in one location
		UpdateZones();

		// Let child classes do any additional processing
		OnUpdate();
	}
	private void UpdateZones()
	{
		// Do nothing if we're not in any zones
		if (Zones.Count < 1)
			return;

        // Correct our Z value when we are in a zone outside our list of zones
		// We do this by just moving to the lowest zone available
		if(CurrentZone == null)
			CurrentZone = Zones[0];
		int position = Zones.BinarySearch(CurrentZone, new Zone.CompareZonesByZValue());
        if (position < 0)
			CurrentZone = Zones[0];

		// Handle movement between zones
		if(CanTransitionZ && Zones.Count > 0)
		{
			// Determine what z up and down are
			if(position-1 >= 0)
				_Zlower = Zones[position-1];
			if(position+1 < Zones.Count)
				_Zhigher = Zones[position+1];

			// Move to the z zone requested
			if(CharInput.UpPressed && !CharInput.Down)
				_currentZone = _Zhigher;
			else if(CharInput.DownPressed && !CharInput.Up)
				_currentZone = _Zlower;
		}
	}
	public virtual void OnDeath()
	{
		Destroy(gameObject);
	}
	protected virtual void OnUpdate()
	{
		// Child classes may override this method if they want to do things during update
	}
	protected virtual void UpdateMecanimVariables()
	{
		// Empty by default; child classes should override
	}

	// We handle motion in FixedUpdate instead of Update in order to ensure we don't miss collisions due to framerate spikes
	void FixedUpdate()
	{
		//Moving Platform support
		UpdatePlatformBegin();
		
		// Some variables for mecanim are updated every frame
		UpdateMecanimVariables();

		// Process the state we are in (mainly updating horizontal speed, vertical speed, and direction; can also update mecanim variables)
		ProcessState processState;
		if(StateMachine.TryGetValue(CurrentState.nameHash, out processState))
			processState(Time.fixedDeltaTime);
		else
			Debug.LogWarning(this.GetType().ToString() + "'s state with hash " + CurrentState.nameHash + " does not have a corresponding function delegate.");


        // Keep track of where we started out this frame
        Vector3 lastPosition = transform.position;
        bool wasGrounded = IsGrounded;

        // Calculate 2D movement
        Vector3 currentMovementOffset = new Vector3(_horizontalSpeed, _verticalSpeed, 0);

        // Make the motion be time-based instead of frame-based
        currentMovementOffset *= Time.fixedDeltaTime;

        // Determine the correct Z-offset
        float currentZ = transform.position.z;
        float newZ = Mathf.Lerp(currentZ, DesiredZ, _characterSettings.ZLerp * Time.fixedDeltaTime);
        float zOffset = newZ - currentZ;
        currentMovementOffset = new Vector3(currentMovementOffset.x, currentMovementOffset.y, zOffset);

        // Move our character!
        _collisionFlags = _characterController.Move(currentMovementOffset);

        // Calculate the velocity based on the current and previous position.
        // This means our velocity will only be the amount the character actually moved as a result of collisions.
        _velocity = (transform.position - lastPosition) / Time.fixedDeltaTime;
        if(wasGrounded && !IsGrounded)
            _lastGroundHeight = transform.position.y;

        // We should finally make our character be able to face the correct way
		UpdateRotation(Time.fixedDeltaTime);

        // Moving Platform support
		UpdatePlatformEnd();
	}
	
	/// <summary>
	/// Updates the rotation of the character over time to smoothly match the character's direction
	/// </summary>
	/// <param name='elapsedTime'>
	/// Elapsed time since this method was last called.
	/// </param>
	private void UpdateRotation(float elapsedTime)
	{
        if (_direction.x == 0)
            transform.rotation = Quaternion.Slerp(transform.rotation, Quaternion.Euler(0, 0, 0), elapsedTime * _characterSettings.RotationSmoothing);
		else if(_prevDirection.x == 0)
			transform.rotation = Quaternion.Slerp(transform.rotation, Quaternion.LookRotation(_direction), elapsedTime * _characterSettings.RotationSmoothing);
        else
		{
			float crotY = transform.rotation.eulerAngles.y;
			float drotY = Quaternion.LookRotation(_direction).eulerAngles.y;
            transform.rotation = Quaternion.Euler(0, Mathf.Lerp(crotY, drotY, elapsedTime * _characterSettings.RotationSmoothing), 0);
		}
	}
	
	// Determines the amount that the platform on which we are standing has moved, and moves us correspondingly
	private void UpdatePlatformBegin()
	{
        if (_activePlatform != null && transform.parent == null)
        {
            Vector3 newGlobalPlatformPoint = _activePlatform.TransformPoint(_activeLocalPlatformPoint);
            Vector3 moveDistance = (newGlobalPlatformPoint - _activeGlobalPlatformPoint);
            transform.position = transform.position + moveDistance;
        }
		_activePlatform = null;
	}
	
	// Sets up the variables to allow the character to stay on a moving platform
	private void UpdatePlatformEnd()
	{
        if (_activePlatform == null)
			return;
		
        _activeGlobalPlatformPoint = transform.position;
        _activeLocalPlatformPoint = _activePlatform.InverseTransformPoint(transform.position);
	}

    // We need to be able to interact with other physical objects in the world
    public virtual void OnControllerColliderHit(ControllerColliderHit hit)
    {
        // If we're not already on a platform, check to see if we just hit one
        if (_activePlatform != null)
		{
	        // Support for moving platforms
	        if (Mathf.Abs(hit.moveDirection.y) > 0.9 && Mathf.Abs(hit.normal.y) > 0.9)
	            _activePlatform = hit.collider.transform;

	        // Support for catching a wall/ledge/rope/etc.
	        if (Mathf.Abs(hit.moveDirection.x) > 0.9 && Mathf.Abs(hit.normal.x) > 0.9)
	            _activePlatform = hit.collider.transform;
		}

        // Let's push ragdolls around!
        Rigidbody body = hit.collider.attachedRigidbody;
        if (body != null && !body.isKinematic)
		{
	        // Only push rigidbodies in the ragdoll layer
	        if (body.gameObject.layer != 10)
	           return;

	        // We dont want to push objects below us
	        if (hit.moveDirection.y < -0.3)
	           return;

	        // Calculate push direction from move direction
	        Vector3 pushDir = new Vector3 (hit.moveDirection.x, 0, hit.moveDirection.z);
	        /*
	        Vector3 force;
	        if (hit.moveDirection.y < -0.3)
	            force = new Vector3(0, -0.5f, 0) * Gravity * 10;
	        else
	            force = hit.controller.velocity * 10;
	         * */

	        // Pushing! Yeah!
	        body.velocity = pushDir * 2 * HorizontalSpeed;
	        //body.AddForceAtPosition(force, hit.point);
		}
    }

	// Helper methods for motion
	protected virtual void ApplyRunning(float elapsedTime)
	{
        float accelerationSmoothing = Settings.HorizontalAcceleration * elapsedTime;
        HorizontalSpeed = Mathf.Lerp(HorizontalSpeed, Settings.MaxHorizontalSpeed*CharInput.Horizontal, accelerationSmoothing);
	}
    protected virtual void ApplyGravity(float elapsedTime)
    {
        VerticalSpeed -= Settings.Gravity * elapsedTime;
        VerticalSpeed = Mathf.Max(-1.0f * Settings.MaxFallSpeed, VerticalSpeed);
    }
	protected virtual void ApplyBiDirection()
	{
        if (CharInput.Left && !CharInput.Right)
            Direction = Vector3.left;
		else if (CharInput.Right && !CharInput.Left)
			Direction = Vector3.right;
	}
	protected virtual void ApplyTriDirection()
	{
        if (CharInput.Left && !CharInput.Right)
            Direction = Vector3.left;
		else if (CharInput.Right && !CharInput.Left)
			Direction = Vector3.right;
        else if (CharInput.Up)
            Direction = Vector3.zero;
	}
	protected virtual void ApplyClimbingVertical(float vertical)
	{
        // Determine the vertical bounds of the object(s) we are climbing
		//bool insideDown = false;
		bool insideUp = false;
		foreach(HangableObject obj in HangQueue)
		{
	        //insideDown = insideDown || transform.position.y - Controller.collider.bounds.extents.y >
	        //        obj.transform.position.y - obj.collider.bounds.extents.y;
	        insideUp = insideUp || transform.position.y + Controller.collider.bounds.extents.y <
	              obj.transform.position.y + obj.collider.bounds.extents.y;
		}

		if(vertical > 0.0f) 
            VerticalSpeed = Settings.LadderClimbingSpeed;
        else if(vertical < 0.0f)
            VerticalSpeed = -Settings.LadderClimbingSpeed;
        else
            VerticalSpeed = 0.0f;
	}
	protected virtual void ApplyClimbingStrafing(float horizontal)
	{
        // Determine the horizontal bounds of the object(s) we are climbing
		bool insideLeft = false;
		bool insideRight = false;
		foreach(HangableObject obj in HangQueue)
		{
	        insideLeft = insideLeft || transform.position.x - Controller.collider.bounds.extents.x >
	                obj.transform.position.x - obj.collider.bounds.extents.x;
	        insideRight = insideRight || transform.position.x + Controller.collider.bounds.extents.x <
	              obj.transform.position.x + obj.collider.bounds.extents.x;
		}

        // Determine horizontal movement
        if(horizontal < 0.0f)
            HorizontalSpeed = -Settings.LadderStrafingSpeed;
        else if (horizontal > 0.0f)
            HorizontalSpeed = Settings.LadderStrafingSpeed;
        else
            HorizontalSpeed = 0.0f;
	}

	// Methods for hanging
	public void AddHangTarget(HangableObject hangTarget)
	{
		if(_hangQueue.Contains(hangTarget))
			return;

		_hangQueue.Add(hangTarget);
	}
	public void RemoveHangTarget(HangableObject hangTarget)
	{
		if(!_hangQueue.Contains(hangTarget))
			return;

		if(ActiveHangTarget == hangTarget)
	        _previousHangTarget = ActiveHangTarget;

		_hangQueue.Remove(hangTarget);

		if (ActiveHangTarget == null)
        	_activePlatform = null;
	}
	public void DropHangTarget()
	{
		if(ActiveHangTarget == null)
			return;

        _previousHangTarget = ActiveHangTarget;
		_hangQueue.RemoveAt(0);
        if (ActiveHangTarget == null)
            _activePlatform = null;
	}
	
	
	// Movement/Animation Properties
	public AnimatorStateInfo CurrentState
	{
		get { return MecanimAnimator.IsInTransition (0) ? MecanimAnimator.GetNextAnimatorStateInfo (0) : MecanimAnimator.GetCurrentAnimatorStateInfo (0); }
	}
	// TODO: PREVIOUSSTATE
	public CharacterController Controller
	{
		get { return _characterController; }
	}
    public float Height
    {
        get { return transform.localScale.y * Controller.height; }
    }
	public Animator MecanimAnimator
	{
		get { return _animator; }
	}
	public virtual CharacterSettings Settings
	{
		get { return _characterSettings; }
	}
	public virtual CharacterInput CharInput
	{
		get { return _characterInput; }
	}
	public bool InputMoveForward
	{
		get { return (Direction.x > 0 && CharInput.Right) || (Direction.x < 0 && CharInput.Left); }
	}
	public bool InputMoveBackward
	{
		get { return (Direction.x > 0 && CharInput.Left) || (Direction.x < 0 && CharInput.Right); }
	}
	//  TODO:inputattackforward & inputattackbackward
	public HeartBox Heart
	{
		get { return _heartBox; }
	}
	public Dictionary<int, ProcessState> StateMachine
	{
		get { return _stateMachine; }
	}
    public Vector3 Direction
    {
        get { return _direction; }
        set
        {
			if(!_direction.Equals(value))
			{
				_prevDirection = _direction;
	            _direction = value;
	            if (_direction.x * _prevDirection.x < 0)
	                HorizontalSpeed = -HorizontalSpeed;
			}
        }
    }
    public float HorizontalSpeed
    {
        get { return _horizontalSpeed; }
        set { _horizontalSpeed = value; }
    }
    public float VerticalSpeed
    {
        get { return _verticalSpeed; }
        set { _verticalSpeed = value; }
    }
    public float GroundVerticalSpeed
    {
        get { return (15 * -_characterSettings.Gravity * Time.fixedDeltaTime); }
    }
    public Vector3 Velocity
    {
        get { return _velocity; }
    }
    public float LastGroundHeight
    {
        get { return _lastGroundHeight; }
    }
    public bool IsGrounded
    {
        get { return Controller.isGrounded; }
    }
    public bool IsTouchingCeiling
    {
        get { return (ControllerCollisionFlags & CollisionFlags.Above) != 0; }
    }
    public bool IsTouchingWall
    {
        get { return (ControllerCollisionFlags & CollisionFlags.Sides) != 0; }
    }
    public CollisionFlags ControllerCollisionFlags
    {
        get { return _collisionFlags; }
    }

	// Moving Platform Properties
    public Transform ActivePlatform
    {
        get { return _activePlatform; }
		set { _activePlatform = value; }
    }
    public Vector3 ActiveLocalPlatformPoint
    {
        get { return _activeLocalPlatformPoint; }
    }
    public Vector3 ActiveGlobalPlatformPoint
    {
        get { return _activeGlobalPlatformPoint; }
    }

	// Hang Properties
    public HangableObject ActiveHangTarget
    {
        get { return _hangQueue.Count > 0 ? _hangQueue[0] : null; }
    }
    public List<HangableObject> HangQueue
    {
        get { return _hangQueue; }
    }
    public HangableObject PreviousHangTarget
    {
        get { return _previousHangTarget; }
        set { _previousHangTarget = value; }
    }
    public bool CanHangOffObject
    {
        get { return (CanHangOffObjectHorizontally || CanHangOffObjectVertically) && !(ActiveHangTarget is ClimbableObject);}
    }
    public bool CanHangOffLedge
    {
        get { return ActiveHangTarget != null && ActiveHangTarget is Ledge
			&& Mathf.Abs(transform.position.y + Height / 2 - ActiveHangTarget.transform.position.y) < _characterSettings.LedgeLeniency
				&& (ActiveHangTarget.DoesFaceZAxis() || PreviousHangTarget != ActiveHangTarget) ; }
    }
    public bool CanClimbLadder
	{
		get { return ActiveHangTarget != null && ActiveHangTarget is Ladder; } //&& (ActiveHangTarget.DoesFaceZAxis() || PreviousHangTarget != ActiveHangTarget) ; }
    }
    public bool CanClimbPipe
    {
        get { return ActiveHangTarget != null && ActiveHangTarget is Pipe; } //&& ActiveHangTarget.transform.position.z == DesiredZ; }
    }
    public bool CanHangOffObjectHorizontally
    {
        get { return ActiveHangTarget != null && ActiveHangTarget.DoesFaceXAxis() && ((Direction.x > 0 && IsHangTargetToRight) || (Direction.x < 0 && !IsHangTargetToRight)); }
    }
    public bool CanHangOffObjectVertically
    {
        get { return ActiveHangTarget != null && ActiveHangTarget.DoesFaceZAxis() && !IsGrounded; }
    }
    public bool IsHangTargetToRight
    {
        get { return (ActiveHangTarget != null) && transform.position.x < ActiveHangTarget.transform.position.x; }
    }
    public bool IsHangTargetAbove
    {
        get { return (ActiveHangTarget != null) && transform.position.y < ActiveHangTarget.transform.position.y; ; }
    }

	// Zone Properties
	public float DesiredZ
	{
		get { return CurrentZone != null ? CurrentZone.transform.position.z : transform.position.z; }
	}
	public Zone CurrentZone
	{
		get { return _currentZone; }
		set { _currentZone = value; }
	}
	public float Z_Down
	{
		get { return Z_Lower != null ? Z_Lower.transform.position.z : transform.position.z; }
	}
	public Zone Z_Lower
	{
		get { return _Zlower; }
		set { _Zlower = value; }
	}
	public float Z_Up
	{
		get { return Z_Higher != null ? Z_Higher.transform.position.z : transform.position.z; }
	}
	public Zone Z_Higher
	{
		get { return _Zhigher; }
		set { _Zhigher = value; }
	}
    public List<Zone> Zones
    {
        get { return _zones; }
    }
    public bool CanTransitionZ
    {
        get { return _canTransitionZ; }
        set { _canTransitionZ = value; }
    }
}
