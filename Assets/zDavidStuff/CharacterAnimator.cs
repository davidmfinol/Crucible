using UnityEngine;
using System.Collections.Generic;

/// <summary>
/// This CharacterAnimator class works with CharacterController and Mecanim's Animator to move and animate characters.
/// </summary>
[RequireComponent(typeof(CharacterController))]
[RequireComponent(typeof(Animator))]
[RequireComponent(typeof(CharacterSettings))]
[RequireComponent(typeof(CharacterInput))]
[AddComponentMenu("CharacterAnimator/Base")]
public class CharacterAnimator : MonoBehaviour
{
	// Components used with movement and animation
	private CharacterController _characterController;
	private Animator _animator;
	private CharacterSettings _characterSettings;
	private CharacterInput _characterInput;
	private HeartBox _heartBox;
	
	// This dictionary maps AnimatorState.name hashes to corresponding function delegates to quickly choose the correct actions for a given state
	protected delegate void ProcessState();
	private Dictionary<int, ProcessState> _stateMachine; // <Hash of State name, corresponding function delegate for State>
	
	// We use these to determine movement
    private float _horizontalSpeed = 0.0f; // How fast does the character want to move on the x-axis?
    private float _verticalSpeed = 0.0f; // How fast does the character want to move on the y-axis?
    private Vector3 _direction = Vector3.right; // The current direction the character is facing in x-y.
    private CollisionFlags _collisionFlags = CollisionFlags.None; // The last collision flags returned from characterController.Move()
    private Vector3 _velocity = Vector3.zero; // The last velocity moved as a result of the characterController.Move()
	
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
    private HashSet<Zone> _zones = new HashSet<Zone>(); // All the zones we could currently be in
    private bool _canTransitionZ = false; // Does our current location allow us to to move between zones?
	
	void Start()
	{
		_characterController = GetComponent<CharacterController>();
		_animator = GetComponent<Animator>();
		_characterSettings = GetComponent<CharacterSettings>();
		_characterInput = GetComponent<CharacterInput>();
		_heartBox = GetComponentInChildren<HeartBox>();
		
		_stateMachine = new Dictionary<int, ProcessState>();
		CreateStateMachine();
	}
	
	protected virtual void CreateStateMachine()
	{
		StateMachine[Animator.StringToHash("Base Layer.Idle")] = Idle;
	}
	
	protected virtual void Idle()
	{
		HorizontalSpeed = 0.0f;
		VerticalSpeed = GroundVerticalSpeed;
	}
	
	// Check health every frame to make sure we aren't dead
	void Update()
	{
        if (_heartBox != null && _heartBox.HitPoints <= 0)
            OnDeath();
	}
	
	// We handle motion in FixedUpdate instead of Update in order to ensure we don't miss collisions due to framerate spikes
	void FixedUpdate()
	{
		AnimatorStateInfo currentState = _animator.GetCurrentAnimatorStateInfo(0);
		ProcessState state = null;
		_stateMachine.TryGetValue(currentState.nameHash, out state);
		if(state != null)
			state();
		else
			Debug.LogError(currentState + " does not have a corresponding delegate");
		
		PerformMotion(Time.fixedDeltaTime);
	}
	/// <summary>
	/// Assuming that horizontal speed, vertical speed, and direction have already been set, moves the character correspondingly.
	/// </summary>
	/// <param name='elapsedTime'>
	/// Amount of time that has passed between iterations of motion.
	/// </param>
	private void PerformMotion(float elapsedTime)
	{
        // Moving platform support
        if (_activePlatform != null && transform.parent == null)
        {
            Vector3 newGlobalPlatformPoint = _activePlatform.TransformPoint(_activeLocalPlatformPoint);
            Vector3 moveDistance = (newGlobalPlatformPoint - _activeGlobalPlatformPoint);
            transform.position = transform.position + moveDistance;
        }

        // Reset platform every frame
		_activePlatform = null;

        // Keep track of where we started out this frame
        Vector3 lastPosition = transform.position;

        // Calculate 2D movement
        Vector3 currentMovementOffset = new Vector3(_horizontalSpeed, _verticalSpeed, 0);

        // Make the motion be time-based instead of frame-based
        currentMovementOffset *= elapsedTime;

        // Determine the correct Z-offset
        float currentZ = transform.position.z;
        float newZ = Mathf.Lerp(currentZ, DesiredZ, _characterSettings.ZLerp * elapsedTime);
        float zOffset = newZ - currentZ;
        currentMovementOffset = new Vector3(currentMovementOffset.x, currentMovementOffset.y, zOffset);

        // Move our character!
        _collisionFlags = _characterController.Move(currentMovementOffset);
		
        // Calculate the velocity based on the current and previous position.  
        // This means our velocity will only be the amount the character actually moved as a result of collisions.
        _velocity = (transform.position - lastPosition) / elapsedTime;

        // We should finally make our character be able to face the correct way
        if (_direction.sqrMagnitude > 0.01)
            transform.rotation = Quaternion.Slerp(transform.rotation, Quaternion.LookRotation(_direction), elapsedTime * _characterSettings.RotationSmoothing);
        else
            transform.rotation = Quaternion.Slerp(transform.rotation, Quaternion.Euler(Vector3.zero), elapsedTime * _characterSettings.RotationSmoothing);

        // Moving Platform support
        if (_activePlatform != null)
        {
            _activeGlobalPlatformPoint = transform.position;
            _activeLocalPlatformPoint = _activePlatform.InverseTransformPoint(transform.position);
        }
	}
	
    public virtual void OnDeath()
    {
        Destroy(gameObject);
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
	protected CharacterController Controller
	{
		get { return _characterController; }
	}
    public float Height
    {
        get { return transform.localScale.y * Controller.height; }
    }
	protected Animator MecanimAnimator
	{
		get { return _animator; } 
	}
	protected CharacterSettings Settings
	{
		get { return _characterSettings; }
	}
	protected CharacterInput CharInput
	{
		get { return _characterInput; }
	}
	protected HeartBox Heart
	{
		get { return _heartBox; } 
	}
	protected Dictionary<int, ProcessState> StateMachine
	{
		get { return _stateMachine; }
	}
    protected float HorizontalSpeed
    {
        get { return _horizontalSpeed; }
        set { _horizontalSpeed = value; }
    }
    protected float VerticalSpeed
    {
        get { return _verticalSpeed; }
        set { _verticalSpeed = value; }
    }
    protected float GroundVerticalSpeed
    {
        get { return (_characterSettings.Gravity * Time.fixedDeltaTime); }
    }
    protected Vector3 Direction
    {
        get { return _direction; }
        set
        {
            Vector3 prevDirection = _direction;
            _direction = value;
            if (_direction.x * prevDirection.x < 0)
                HorizontalSpeed = -HorizontalSpeed;
        }
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
    public Vector3 Velocity
    {
        get { return _velocity; }
    }

	// Moving Platform Properties
    public Transform ActivePlatform
    {
        get { return _activePlatform; }
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
				&& PreviousHangTarget != ActiveHangTarget; }
    }
    public bool CanClimbLadder
    {
        get { return ActiveHangTarget != null && ActiveHangTarget is Ladder && ActiveHangTarget.transform.position.z == DesiredZ; }
    }
    public bool CanClimbPipe
    {
        get { return ActiveHangTarget != null && ActiveHangTarget is Pipe && ActiveHangTarget.transform.position.z == DesiredZ; }
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
		get { return Zlower != null ? Zlower.transform.position.z : transform.position.z; }
	}
	public Zone Zlower
	{
		get { return _Zlower; }
		set { _Zlower = value; }
	}
	public float Z_Up
	{
		get { return Zhigher != null ? Zhigher.transform.position.z : transform.position.z; }
	}
	public Zone Zhigher
	{
		get { return _Zhigher; }
		set { _Zhigher = value; }
	}
    public HashSet<Zone> Zones
    {
        get { return _zones; }
    }
    public bool CanTransitionZ
    {
        get { return _canTransitionZ; }
        set { _canTransitionZ = value; }
    }
}
