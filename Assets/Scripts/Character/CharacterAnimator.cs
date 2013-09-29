using UnityEngine;
using System.Collections.Generic;

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
    private CollisionFlags _collisionFlags = CollisionFlags.None; // The last collision flags returned from characterController.Move()
    private Vector3 _velocity = Vector3.zero; // The last velocity moved as a result of the characterController.Move()
	private float _lastGroundHeight;
	
    // Moving platform support 
    private Transform _activePlatform;
    private Vector3 _activeLocalPlatformPoint;
    private Vector3 _activeGlobalPlatformPoint;

    // Support for hanging off of objects
	private List<HangableObject> _hangQueue = new List<HangableObject>();
    private HangableObject _previousHangTarget = null;
	private Ledge _ledge;
	
    // We need a way to move between zones
    private Zone _currentZone = null; // Zone we are currently in
    private Zone _Zlower = null; // Zone we go to if we press down
    private Zone _Zhigher = null; // Zone we go to if we press up
    private HashSet<Zone> _zones = new HashSet<Zone>(); // All the zones we could currently be in
    private bool _canTransitionZ = false; // Does our current location allow us to to move between zones?
	
	protected virtual void Start()
	{
		_characterController = GetComponent<CharacterController>();
		_animator = GetComponent<Animator>();
		_characterSettings = GetComponent<CharacterSettings>();
		_characterInput = GetComponent<CharacterInput>();
		
		_heartBox = GetComponentInChildren<HeartBox>();
		_lastGroundHeight = transform.position.y;
		
		_stateMachine = new Dictionary<int, ProcessState>();
		CreateStateMachine();
	}
	
	protected virtual void Update()
	{
		// Check health every frame to make sure we aren't dead
        if (_heartBox != null && _heartBox.HitPoints <= 0)
            OnDeath();
        // Correct our Z value when we are in only one zone
        if (Zones.Count == 1 && !CanTransitionZ)
        {
            IEnumerator<Zone> it = Zones.GetEnumerator();
            it.MoveNext();
            _Zlower = it.Current;
            _Zhigher = it.Current;
            _currentZone = it.Current;
        }
	}
	
	protected virtual void CreateStateMachine()
	{
		StateMachine[Animator.StringToHash("Base Layer.Idle")] = Idle;
		StateMachine[Animator.StringToHash("Base Layer.Running")] = Running;
		StateMachine[Animator.StringToHash("Base Layer.Death")] = Die;
		StateMachine[Animator.StringToHash("Jumping.Jumping")] = Jumping;
		StateMachine[Animator.StringToHash("Jumping.JumpFalling")] = JumpFalling;
		StateMachine[Animator.StringToHash("Jumping.JumpLanding")] = JumpLanding;
		StateMachine[Animator.StringToHash("Falling.Falling")] = Falling;
		StateMachine[Animator.StringToHash("Falling.Landing")] = Landing;
		StateMachine[Animator.StringToHash("Hanging.Hanging")] = Hanging;
		StateMachine[Animator.StringToHash("Hanging.ClimbingLedge")] = ClimbingLedge;
		StateMachine[Animator.StringToHash("Climbing.ClimbingVertical")] = ClimbingVertical;
		StateMachine[Animator.StringToHash("Climbing.ClimbingStrafe")] = ClimbingStrafe;
	}
	
    public virtual void OnDeath()
    {
		MecanimAnimator.SetBool(Settings.Die, true);
    }
				
	protected virtual void Die(float elapsedTime)
	{
		MecanimAnimator.SetBool(Settings.Die, false);
		
		if(MecanimAnimator.GetCurrentAnimatorStateInfo(0).normalizedTime > 0.9)
        	Destroy(gameObject);
	}
	
	protected virtual void Idle(float elapsedTime)
	{
		//TODO: SET up different idles with MecanimAnimator.SetFloat("RandomIdle", (float) _random.NextDouble());
		ApplyRunning(elapsedTime);
		VerticalSpeed = GroundVerticalSpeed;
        if (CharInput.Left && !CharInput.Right)
            Direction = Vector3.left;
		else if (CharInput.Right && !CharInput.Left)
			Direction = Vector3.right;
        else if (CharInput.Up)
            Direction = Vector3.zero;
		
		if(!MecanimAnimator.GetBool(Settings.Fall) && !IsGrounded)
		{
			MecanimAnimator.SetBool(Settings.Fall, true);
			_lastGroundHeight = transform.position.y;
		}
	}
	
	protected virtual void Running(float elapsedTime)
	{
		ApplyRunning(elapsedTime);
		VerticalSpeed = GroundVerticalSpeed;
        if (CharInput.Left && !CharInput.Right)
            Direction = Vector3.left;
		else if (CharInput.Right && !CharInput.Left)
			Direction = Vector3.right;
		
		if(!MecanimAnimator.GetBool(Settings.Fall) && !IsGrounded)
		{
			MecanimAnimator.SetBool(Settings.Fall, true);
			_lastGroundHeight = transform.position.y;
		}
	}
	
	protected virtual void Jumping(float elapsedTime)
	{
		ApplyRunning(elapsedTime);
		if(MecanimAnimator.GetBool(Settings.Jump))
		{
        	VerticalSpeed = Mathf.Sqrt(2 * Settings.JumpHeight * Settings.Gravity);
			MecanimAnimator.SetBool(Settings.Jump, false);
		}
		else
			ApplyGravity(elapsedTime);
		MecanimAnimator.SetBool(Settings.Fall, false);
        if (CharInput.Left && !CharInput.Right)
            Direction = Vector3.left;
		else if (CharInput.Right && !CharInput.Left)
			Direction = Vector3.right;
		
		MecanimAnimator.SetBool(Settings.Hang, 
			(CanHangOffObject && ActiveHangTarget.DoesFaceXAxis() && VerticalSpeed < 0) 
			|| (CanHangOffObject && ActiveHangTarget.DoesFaceZAxis() && CharInput.Up));
	}
	
	protected virtual void JumpFalling(float elapsedTime)
	{
		ApplyRunning(elapsedTime);
		ApplyGravity(elapsedTime);
		if(transform.position.y > _lastGroundHeight)
			MecanimAnimator.SetBool(Settings.Fall, false);
		MecanimAnimator.SetBool(Settings.Hang, 
			(CanHangOffObject && ActiveHangTarget.DoesFaceXAxis() && VerticalSpeed < 0) 
			|| (CanHangOffObject && ActiveHangTarget.DoesFaceZAxis() && CharInput.Up));
	}
	
	protected virtual void Falling(float elapsedTime)
	{
		ApplyRunning(elapsedTime);
		ApplyGravity(elapsedTime);
		MecanimAnimator.SetBool(Settings.Fall, false);
		MecanimAnimator.SetBool(Settings.Hang, 
			(CanHangOffObject && ActiveHangTarget.DoesFaceXAxis() && VerticalSpeed < 0) 
			|| (CanHangOffObject && ActiveHangTarget.DoesFaceZAxis() && CharInput.Up));
	}
	
	protected virtual void JumpLanding(float elapsedTime)
	{
		ApplyRunning(elapsedTime);
		VerticalSpeed = GroundVerticalSpeed;
	}
	
	protected virtual void Landing(float elapsedTime)
	{
		ApplyStopping(elapsedTime);
		VerticalSpeed = GroundVerticalSpeed;
	}
	
	protected virtual void Hanging(float elapsedTime)
	{
		VerticalSpeed = 0;
		if(MecanimAnimator.GetBool(Settings.Hang))
		{
			VerticalSpeed = 0;
	        if (ActiveHangTarget.DoesFaceZAxis())
	        {
	            HorizontalSpeed = 0.0f;
	            Direction = Vector3.zero;
	        }
	        else
	        {
	            HorizontalSpeed = Direction.x * Settings.LedgeClimbingSpeed;
	            if (IsHangTargetToRight)
	                Direction = Vector3.right;
	            else
	                Direction = Vector3.left;
	        }
			
			if(ActiveHangTarget is Ledge)
	        	_ledge = (Ledge) ActiveHangTarget;
			else
				_ledge = null;
			
			DropHangTarget();
			MecanimAnimator.SetBool(Settings.Hang, false);
		}
		
        if (_ledge != null && (CharInput.Up || InputForward))
			MecanimAnimator.SetBool(Settings.ClimbLedge, true);
		else if(CharInput.Jump)
			MecanimAnimator.SetBool(Settings.Jump, true);
		else if(CharInput.Down)
			MecanimAnimator.SetBool(Settings.Fall, true);
	}
	
	protected virtual void ClimbingLedge(float elapsedTime)
	{
		if(MecanimAnimator.GetBool(Settings.ClimbLedge))
		{
	        if (_ledge.DoesFaceZAxis())
	        {
	            HorizontalSpeed = 0.0f;
	            VerticalSpeed = Settings.LedgeClimbingSpeed;
	        }
	        else if (_ledge.DoesFaceXAxis())
	        {
	            HorizontalSpeed = Direction.x * Settings.LedgeClimbingSpeed;
	            VerticalSpeed = Settings.LedgeClimbingSpeed;
	        }
			MecanimAnimator.SetBool(Settings.ClimbLedge, false);
		}
		else
		{
	        if (transform.position.y > _ledge.transform.position.y + _ledge.collider.bounds.extents.y + Height / 2)
	            VerticalSpeed = GroundVerticalSpeed;
		}
	}
	
	protected virtual void ClimbingVertical(float elapsedTime)
	{
		HorizontalSpeed = 0;

        // Determine the vertical bounds of the object(s) we are climbing
		bool insideDown = false;
		bool insideUp = false;
		foreach(HangableObject obj in HangQueue)
		{
	        insideDown = insideDown || transform.position.y - Controller.collider.bounds.extents.y >
	                obj.transform.position.y - obj.collider.bounds.extents.y;
	        insideUp = insideUp || transform.position.y + Controller.collider.bounds.extents.y <
	              obj.transform.position.y + obj.collider.bounds.extents.y;
		}

        // Determine vertical movement
        if (CharInput.Up && !CharInput.Down && (!(ActiveHangTarget is Pipe) || insideUp))
            VerticalSpeed = Settings.LadderClimbingSpeed;
        else if (CharInput.Down && !CharInput.Up && (!(ActiveHangTarget is Pipe) || insideDown))
            VerticalSpeed = -Settings.LadderClimbingSpeed;
        else
            VerticalSpeed = 0.0f;
	}
	
	protected virtual void ClimbingStrafe(float elapsedTime)
	{
		VerticalSpeed = 0;

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
        if (CharInput.Left && !CharInput.Right && ActiveHangTarget != null && insideLeft)
        {
            HorizontalSpeed = -Settings.LadderStrafingSpeed;
            VerticalSpeed = 0.0f;
        }
        else if (CharInput.Right && !CharInput.Left && ActiveHangTarget != null && insideRight)
        {
            HorizontalSpeed = Settings.LadderStrafingSpeed;
            VerticalSpeed = 0.0f;
        }
        else
            HorizontalSpeed = 0.0f;
	}
	
	protected virtual void ApplyRunning(float elapsedTime)
	{
		// Horizontal runnning speed is based off horizontal input
        float accelerationSmoothing = Settings.HorizontalAcceleration * elapsedTime;
		if(CharInput.Left || CharInput.Right)
        	HorizontalSpeed = Mathf.Lerp(HorizontalSpeed, Direction.x * Settings.MaxHorizontalSpeed, accelerationSmoothing);
		else
        	HorizontalSpeed = Mathf.Lerp(HorizontalSpeed, 0, accelerationSmoothing);
		MecanimAnimator.SetFloat(Settings.HorizontalSpeed, Direction.x * HorizontalSpeed/Settings.MaxHorizontalSpeed);
	}
	protected virtual void ApplyStopping(float elapsedTime)
	{
		// Horizontal runnning speed is based off horizontal input
        float accelerationSmoothing = Settings.HorizontalAcceleration * elapsedTime;
    	HorizontalSpeed = Mathf.Lerp(HorizontalSpeed, 0, accelerationSmoothing);
		MecanimAnimator.SetFloat(Settings.HorizontalSpeed, Direction.x * HorizontalSpeed/Settings.MaxHorizontalSpeed);
	}
    protected virtual void ApplyGravity(float elapsedTime)
    {
        VerticalSpeed -= Settings.Gravity * elapsedTime;
        VerticalSpeed = Mathf.Max(-1.0f * Settings.MaxFallSpeed, VerticalSpeed);
    }
	
	// We handle motion in FixedUpdate instead of Update in order to ensure we don't miss collisions due to framerate spikes
	void FixedUpdate()
	{
		// Update the Animator (this can be overwritten by processState())
		if(!MecanimAnimator.GetBool(Settings.Jump) && IsGrounded && CharInput.Jump)
		{
			MecanimAnimator.SetBool(Settings.Jump, true);
			_lastGroundHeight = transform.position.y;
		}
		MecanimAnimator.SetBool(Settings.Climb, (CanClimbPipe || CanClimbLadder) && CharInput.Up );
		MecanimAnimator.SetBool(Settings.IsGrounded, IsGrounded);
		MecanimAnimator.SetBool(Settings.Attack1, CharInput.Attack1);
		MecanimAnimator.SetBool(Settings.Attack2, CharInput.Attack2);
		
		// Process the state we are in (mainly updating horizontal speed, vertical speed, and direction)
		AnimatorStateInfo currentState = MecanimAnimator.GetCurrentAnimatorStateInfo(0);
		ProcessState processState;
		if(StateMachine.TryGetValue(currentState.nameHash, out processState))
			processState(Time.fixedDeltaTime);
		else
			Debug.LogError(currentState + " does not have a corresponding delegate");
		
		// Do the movement
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
        if (_direction.x == 0)
            transform.rotation = Quaternion.Slerp(transform.rotation, Quaternion.Euler(0, 0, 0), elapsedTime * _characterSettings.RotationSmoothing);
        else
		{
			// TODO: make it face the front while turning left and right (except when coming from facing zero)
				// the commented lines don't work when you were previously facing zero from one direction and go to the other
			//float crotY = transform.rotation.eulerAngles.y;
			//float drotY = Quaternion.LookRotation(_direction).eulerAngles.y;
            //transform.rotation = Quaternion.Euler(0, Mathf.Lerp(crotY, drotY, elapsedTime * _characterSettings.RotationSmoothing), 0);
            transform.rotation = Quaternion.Slerp(transform.rotation, Quaternion.LookRotation(_direction), elapsedTime * _characterSettings.RotationSmoothing);
		}

        // Moving Platform support
        if (_activePlatform != null)
        {
            _activeGlobalPlatformPoint = transform.position;
            _activeLocalPlatformPoint = _activePlatform.InverseTransformPoint(transform.position);
        }
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
	public bool InputForward
	{
		get { return (Direction.x > 0 && CharInput.Right) || (Direction.x < 0 && CharInput.Left); }
	}
	public bool InputBackward
	{
		get { return (Direction.x > 0 && CharInput.Left) || (Direction.x < 0 && CharInput.Right); }
	}
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
            Vector3 prevDirection = _direction;
            _direction = value;
            if (_direction.x * prevDirection.x < 0)
                HorizontalSpeed = -HorizontalSpeed;
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
        get { return (-_characterSettings.Gravity * Time.fixedDeltaTime); }
    }
    public Vector3 Velocity
    {
        get { return _velocity; }
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
