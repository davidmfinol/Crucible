using UnityEngine;
using System.Collections.Generic;
using System.Collections;

/// <summary>
/// CharacterAnimator works with CharacterController and Mecanim's Animator to move and animate characters.
/// CharacterSettings is used to store all settings about how a character moves.
/// CharacterInput is used to keep track of what input is being passed in during gameplay (ie directional buttons, jump, attack).
/// </summary>
[RequireComponent(typeof(CharacterController))]
[RequireComponent(typeof(CharacterSettings))]
[RequireComponent(typeof(CharacterInput))]
[RequireComponent(typeof(Animator))]
[RequireComponent(typeof(CameraTargetAttributes))]
[AddComponentMenu("Character/Character Animator")]
public abstract class CharacterAnimator : MonoBehaviour
{
    // Components used with movement and animation
    private CharacterController _characterController;
    private Animator _animator;
    private CharacterSettings _characterSettings;
    private CharacterInput _characterInput;
    private Transform _root;

    // This dictionary maps AnimatorState.name hashes to corresponding function delegates to quickly choose the correct actions for a given state
    public delegate void ProcessState (float elapsedTime);
    public ProcessState ModifyState;
    private Dictionary<int, ProcessState> _stateMachine; // <Hash of State name, corresponding function delegate for State>
    private AnimatorStateInfo _previousState;
    private float _timeInCurrentState;
    
    // We use these to determine movement
    private float _horizontalSpeed = 0.0f; // How fast does the character want to move on the x-axis?
    private float _verticalSpeed = 0.0f; // How fast does the character want to move on the y-axis?
    private Vector3 _direction = Vector3.right; // The current direction the character is facing in x-y.
    private Vector3 _prevDirection = Vector3.right; // The last direction that the player was facing before the current direction
    private bool _ignoreDirection = false; // Some cases want us to ignore our set direction; set this to allow that
    private bool _ignoreMovement = false;  // Some cases want us to ignore our movement; set this to allow that
	private bool _ignoreXYMovement = false;   // Used to prevent xy movement in hide zones.
    private CollisionFlags _collisionFlags = CollisionFlags.None; // The last collision flags returned from characterController.Move()
    private Vector3 _velocity = Vector3.zero; // The last velocity moved as a result of the characterController.Move()
    private float _lastGroundHeight = 0.0f; // Keep track of the last y position at which the character was touching the ground

    // Moving platform support
    private Transform _activePlatform;
    private Vector3 _activeLocalPlatformPoint;
    private Vector3 _activeGlobalPlatformPoint;

    // Support for hanging off of objects
    private List<HangableObject> _hangQueue = new List<HangableObject> ();
    private HangableObject _previousHangTarget = null;

    // We need a way to move between zones
    private Zone _currentZone = null; // Zone we are currently in
    private Zone _Zlower = null; // Zone we go to if we press down
    private Zone _Zhigher = null; // Zone we go to if we press up
    private List<Zone> _zones = new List<Zone> (); // All the zones we could currently be in
    private bool _canTransitionZ = false; // Does our current location allow us to to move between zones?

    /*
    // Auto-climb code for ladders and pipes
    protected enum AutoClimbDirection : int
    {
        AutoClimb_None = 0,
        AutoClimb_Up,
        AutoClimb_Down
    };
    
    protected AutoClimbDirection _autoClimbDir;
    */


    void Start ()
    {
        _characterController = GetComponent<CharacterController> ();
        _animator = GetComponent<Animator> ();
        _characterSettings = GetComponent<CharacterSettings> ();
        _characterInput = GetComponent<CharacterInput> ();
        _root = CharacterSettings.SearchHierarchyForBone (transform, _characterSettings.RootBoneName);

        // Set up the mapping between the mecanim state machine and this class's interpretation of it
        _stateMachine = new Dictionary<int, ProcessState> ();
        CreateStateMachine ();
        _previousState = CurrentState;
        _timeInCurrentState = 0.0f;

        // Is useful to know when we were last on the ground
        _lastGroundHeight = transform.position.y;

        // Let child classes initialize as necessary
        OnStart ();

    }

    protected abstract void CreateStateMachine ();// Must be overwritten by child classes to set up _stateMachine

    protected virtual void OnStart ()
    {
        // Child classes should override this method if they want to initialize variables on Start()
    }

    void OnAnimatorMove()
    {
        // This method is only here to prevent mecanim from overriding our motion in FixedUpdate.
    }

    protected virtual void UpdateMecanimVariables ()
    {
        // Empty by default; child classes should override
    }
    
    void Update ()
    {
        // Handle all the z-zone stuff in one location
        UpdateZones ();

        // Let child classes do any additional processing
        OnUpdate ();

    }

    private void UpdateZones ()
    {
        // Make sure all our zones are valid
        List<Zone> tempZones = new List<Zone> ();
        foreach (Zone zone in Zones)
            if (zone != null)
                tempZones.Add (zone);
        Zones = tempZones;

        // Do nothing if we're not in any zones
        if (Zones.Count < 1)
            return;

        // Correct our Z value when we are in a zone outside our list of zones
        // We do this by just moving to the lowest zone available
        if (CurrentZone == null)
            CurrentZone = Zones [0];
        int position = Zones.BinarySearch (CurrentZone, new Zone.CompareZonesByZValue ());
        if (position < 0)
            CurrentZone = Zones [0];

        // Handle movement between zones
        if (CanTransitionZ && Zones.Count > 0) {
            // Determine what z up and down are
            if (position - 1 >= 0)
                _Zlower = Zones [position - 1];
            if (position + 1 < Zones.Count)
                _Zhigher = Zones [position + 1];

            // Move to the z zone requested
            if (CharInput.UpPressed && !CharInput.Down) {
                _currentZone = _Zhigher;

				// don't allow movement in a hide zone
				IgnoreXYMovement = true;

			} else if (CharInput.DownPressed && !CharInput.Up) {
                _currentZone = _Zlower;

				// re-allow movement upon exit hide zone
				IgnoreXYMovement = false;
			}
        }

    }

    protected virtual void OnUpdate ()
    {
        // Child classes may override this method if they want to do things during update
    }

    // We handle motion in FixedUpdate instead of Update in order to ensure we don't miss collisions due to framerate spikes
    void FixedUpdate ()
    {
        //Moving Platform support
        UpdatePlatformBegin ();
        
        // Some variables for mecanim are updated every frame
        bool wasGrounded = IsGrounded || IsClimbing;
        UpdateMecanimVariables ();

        // keep track of time in current state for things like wall sliding, etc.
        if (CurrentState.nameHash != _previousState.nameHash)
            _timeInCurrentState = 0.0f;
        else
            _timeInCurrentState += Time.fixedDeltaTime;

        // Process the state we are in (mainly updating horizontal speed, vertical speed, and direction; can also update mecanim variables)
        _previousState = CurrentState;
        ProcessState processState;
        if (StateMachine.TryGetValue (CurrentState.nameHash, out processState))
            processState (Time.fixedDeltaTime);
        else
            Debug.LogWarning (this.GetType ().ToString () + "'s state with hash " + CurrentState.nameHash + " does not have a corresponding function delegate.");

        // We occasionally need to allow other classes to do additional processing for the HorizontalSpeed, VerticalSpeed, and Direction
        if (ModifyState != null)
            ModifyState (Time.fixedDeltaTime);

        // Keep track of where we started out this frame
        Vector3 lastPosition = transform.position;

        // Calculate 2D movement
        Vector3 currentMovementOffset = new Vector3 (_horizontalSpeed, _verticalSpeed, 0);

        // Make the motion be time-based instead of frame-based
        currentMovementOffset *= Time.fixedDeltaTime;

        // Determine the correct Z-offset
        float currentZ = transform.position.z;
        float newZ = Mathf.Lerp (currentZ, DesiredZ, _characterSettings.ZLerp * Time.fixedDeltaTime);
        float zOffset = newZ - currentZ;
        currentMovementOffset = new Vector3 (currentMovementOffset.x, currentMovementOffset.y, zOffset);

		// if need to ignore XY move, remove them from our offset.
		// keep a ground vertical speed so we're grounded.
		if(IgnoreXYMovement)
			currentMovementOffset = new Vector3(0.0f, GroundVerticalSpeed, currentMovementOffset.z);

		// Move our character!
        if (!IgnoreMovement)
            _collisionFlags = _characterController.Move (currentMovementOffset);

        // Calculate the velocity based on the current and previous position.
        // This means our velocity will only be the amount the character actually moved as a result of collisions.
        _velocity = (transform.position - lastPosition) / Time.fixedDeltaTime;

        // We should finally make our character be able to face the correct way
        if (!IgnoreDirection)
            UpdateRotation (Time.fixedDeltaTime);

        // Support for keeping track of fall distances
        if(wasGrounded)
            _lastGroundHeight = transform.position.y;

        // Moving Platform support
        UpdatePlatformEnd ();
        
        // Let child classes do any additional processing
        OnFixedUpdate ();

    }

    protected virtual void OnFixedUpdate ()
    {
        // Child classes may override this method if they want to do things during fixedupdate
    }

    // Updates the rotation of the character over time to smoothly match the character's direction
    private void UpdateRotation (float elapsedTime)
    {
        if (_direction == Vector3.zero)
            transform.rotation = Quaternion.Slerp (transform.rotation, Quaternion.Euler (0, 0, 0), elapsedTime * _characterSettings.RotationSmoothing);
        else if (_prevDirection == Vector3.zero)
            transform.rotation = Quaternion.Slerp (transform.rotation, Quaternion.LookRotation (_direction), elapsedTime * _characterSettings.RotationSmoothing);
        else {
            float crotY = transform.rotation.eulerAngles.y;
            float drotY = Quaternion.LookRotation (_direction).eulerAngles.y;
            transform.rotation = Quaternion.Euler (0, Mathf.Lerp (crotY, drotY, elapsedTime * _characterSettings.RotationSmoothing), 0);
		
		}

    }
    
    // Determines the amount that the platform on which we are standing has moved, and moves us correspondingly
    private void UpdatePlatformBegin ()
    {
        if (_activePlatform != null && transform.parent == null) {
            Vector3 newGlobalPlatformPoint = _activePlatform.TransformPoint (_activeLocalPlatformPoint);
            Vector3 moveDistance = (newGlobalPlatformPoint - _activeGlobalPlatformPoint);
            transform.position = transform.position + moveDistance;
        }
        _activePlatform = null;

    }
    
    // Sets up the variables to allow the character to stay on a moving platform
    private void UpdatePlatformEnd ()
    {
        if (_activePlatform == null)
            return;
        
        _activeGlobalPlatformPoint = transform.position;
        _activeLocalPlatformPoint = _activePlatform.InverseTransformPoint (transform.position);

    }

    // We need to be able to interact with other physical objects in the world
    public virtual void OnControllerColliderHit (ControllerColliderHit hit)
    {
        // If we're not already on a platform, check to see if we just hit one
        if (_activePlatform == null) {
            // Support for moving platforms
            if (Mathf.Abs (hit.moveDirection.y) > 0.9 && Mathf.Abs (hit.normal.y) > 0.9)
                _activePlatform = hit.collider.transform;

            // Support for catching a wall/ledge/rope/etc.
            if (Mathf.Abs (hit.moveDirection.x) > 0.9 && Mathf.Abs (hit.normal.x) > 0.9)
                _activePlatform = hit.collider.transform;
        }

        // Let's push ragdolls around!
        Rigidbody body = hit.collider.attachedRigidbody;
        if (body != null && !body.isKinematic) {
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

    public virtual void MakeDamaged (Vector3 knockForce)
    {
        // Do nothing by default, by child classes should override if they want some effect when hurt

    }
    
    public virtual void OnStealthDeath ()
    {
        OnDeath ();
        
    }
    
    public virtual void OnDeath ()
    {
        OnDeath (Vector2.zero);
        
    }
    
    public virtual void OnDeath (Vector3 knockForce)
    {
        DoRagDoll (knockForce);
        
        // Remove components we won't need anymore
        CharacterAnimatorDebugger debug1 = GetComponent<CharacterAnimatorDebugger> ();
        if (debug1 != null)
            Destroy (debug1);
        EnemyAIDebugger debug2 = GetComponent<EnemyAIDebugger> ();
        if (debug2 != null)
            Destroy (debug2);
        EnemyAI ai = GetComponent<EnemyAI> ();
        if (ai != null)
            Destroy (ai);
        Seeker seeker = GetComponent<Seeker> ();
        if (seeker != null)
            Destroy (seeker);
        HeartBox heart = GetComponentInChildren<HeartBox> ();
        if (heart != null)
            Destroy (heart);
        StealthKillTrigger stealthTrigger = GetComponentInChildren<StealthKillTrigger> ();
        if (stealthTrigger != null)
            Destroy (stealthTrigger);
        
        // Remove ourselves
        Destroy (this);
        Destroy (CharInput);
        Destroy (Controller);
        Destroy (MecanimAnimator);
        
    }

	public void DoRagDoll()
	{
		DoRagDoll(Vector3.zero);

	}
    
    public virtual void DoRagDoll (Vector3 push)
    {
        // Start the ragdoll system
        CharacterSettings.ActivateRagDoll (transform, false, true);

		// Apply the push
		if(Settings.MainRigidBody != null)
            Settings.MainRigidBody.AddForce(push);

    }

    public IEnumerator ActivateFloat ()
    {
        Controller.enabled = false;
        MecanimAnimator.enabled = false;
        CharacterSettings.ActivateRagDoll (transform, false, false);
        IgnoreMovement = true;
        this.enabled = false;
        yield return new WaitForSeconds (5);
        ReEnableCharacter ();

    }

    public void ReEnableCharacter ()
    {
        this.enabled = true;
        IgnoreMovement = false;
        CharacterSettings.ActivateRagDoll (transform, true, true);
        Transform root = CharacterSettings.SearchHierarchyForBone (transform, Settings.RootBoneName);
        transform.position = root.transform.position;
        root.localPosition = Vector3.zero;
        MecanimAnimator.enabled = true;
        Controller.enabled = true;

    }
    
    // Helper methods for motion
    protected virtual void ApplyRunning (float elapsedTime)
    {
        float accelerationSmoothing = Settings.HorizontalAcceleration * elapsedTime;
        HorizontalSpeed = Mathf.Lerp (HorizontalSpeed, IgnoreXYMovement ? 0 : Settings.MaxHorizontalSpeed * CharInput.Horizontal, accelerationSmoothing);

    }

    protected virtual void ApplyGravity (float elapsedTime)
    {
        VerticalSpeed -= Settings.Gravity * elapsedTime;
        VerticalSpeed = Mathf.Max (-1.0f * Settings.MaxFallSpeed, VerticalSpeed);

    }

    public virtual void StepDown ()
    {
        // Called by the UIManager/CraftingMenu to make the player kneel when appropriate
    }

    public virtual void StandUp ()
    {
    }

    protected void ApplyDeathFriction (float elapsedTime)
    {
        if (HorizontalSpeed > 0.0f) {
            HorizontalSpeed -= Settings.DeathFriction * elapsedTime;
            
            if (HorizontalSpeed < 0.1f)
                HorizontalSpeed = 0.0f;
            
        } else if (HorizontalSpeed < 0.0f) {
            HorizontalSpeed += Settings.DeathFriction * elapsedTime;
            
            if (HorizontalSpeed > -0.1f)
                HorizontalSpeed = 0.0f;
            
        }

    }
    
    protected virtual void ApplyBiDirection ()
    {
        if (CharInput.Left && !CharInput.Right)
            Direction = Vector3.left;
        else if (CharInput.Right && !CharInput.Left)
            Direction = Vector3.right;

    }

    protected virtual void ApplyTriDirection ()
    {
        if (CharInput.Left && !CharInput.Right)
            Direction = Vector3.left;
        else if (CharInput.Right && !CharInput.Left)
            Direction = Vector3.right;
        else if (CharInput.Up)
            Direction = Vector3.zero;

    }

    protected virtual void ApplyClimbingVertical (float vertical)
    {
        if (vertical > 0.0f) 
            VerticalSpeed = Settings.LadderClimbingSpeed;
        else if (vertical < 0.0f)
            VerticalSpeed = -Settings.LadderClimbingSpeed;
        else
            VerticalSpeed = 0.0f;

    }

    /*
    protected float UpdateAutoClimbDirection()
    {
        // start or stop auto-climbing
        if (CharInput.Up && _autoClimbDir == AutoClimbDirection.AutoClimb_None)
            _autoClimbDir = AutoClimbDirection.AutoClimb_Up;
        else if (CharInput.Down && _autoClimbDir == AutoClimbDirection.AutoClimb_None)
            _autoClimbDir = AutoClimbDirection.AutoClimb_Down;
        //else if ((CharInput.Down && _autoClimbDir = AutoClimbDirection.AutoClimb_Up) || (CharInput.Up && _autoClimbDir = AutoClimbDirection.AutoClimb_Down))
        //  _autoClimbDir = AutoClimbDirection.AutoClimb_None;
        
        // always give a speed based on the auto-climb direction
        float vertical;
        if(_autoClimbDir == AutoClimbDirection.AutoClimb_Up)
            vertical = 1.0f;
        else if(_autoClimbDir == AutoClimbDirection.AutoClimb_Down)
            vertical = -1.0f;
        else
            vertical = 0.0f;
        
        return vertical;
    }
    */

    protected virtual void ApplyClimbingStrafing (float horizontal)
    {
        // Determine the horizontal bounds of the object(s) we are climbing
        bool insideLeft = false;
        bool insideRight = false;
        foreach (HangableObject obj in HangQueue) {
            insideLeft = insideLeft || transform.position.x - Controller.collider.bounds.extents.x >
                obj.transform.position.x - obj.collider.bounds.extents.x;
            insideRight = insideRight || transform.position.x + Controller.collider.bounds.extents.x <
                obj.transform.position.x + obj.collider.bounds.extents.x;
        }

        // Determine horizontal movement
        if (horizontal < 0.0f)
            HorizontalSpeed = -Settings.LadderStrafingSpeed;
        else if (horizontal > 0.0f)
            HorizontalSpeed = Settings.LadderStrafingSpeed;
        else
            HorizontalSpeed = 0.0f;

    }

    // Methods for hanging
    public void AddHangTarget (HangableObject hangTarget)
    {
        if (_hangQueue.Contains (hangTarget))
            return;
        if (hangTarget is Ledge)
            _hangQueue.Insert (0, hangTarget);
        else
            _hangQueue.Add (hangTarget);

    }

    public void RemoveHangTarget (HangableObject hangTarget)
    {
        if (!_hangQueue.Contains (hangTarget))
            return;

        if (ActiveHangTarget == hangTarget)
            _previousHangTarget = ActiveHangTarget;

        _hangQueue.Remove (hangTarget);

        if (ActiveHangTarget == null)
            _activePlatform = null;

    }

    public void DropHangTarget ()
    {
        if (ActiveHangTarget == null)
            return;

        _previousHangTarget = ActiveHangTarget;
        _hangQueue.RemoveAt (0);
        if (ActiveHangTarget == null)
            _activePlatform = null;

    }

    // Useful animation events
    public void CreateFootstep ()
    {
        // TODO: object pooling (IT IS REALLY SLOW RIGHT NOW TO CREATE FOOTSTEPS
        if (IsSneaking)
            return;

        Vector3 footStepPosition = transform.position;
        footStepPosition.y -= Height * 0.5f;
        Transform footstep = (Transform)Instantiate (Settings.FootStepNoise, footStepPosition, Quaternion.identity);
        footstep.GetComponent<FootstepAudioPlayer> ().PlayRandomFootstep ();

    }

    public virtual void PlayLand ()
    {
        Vector3 landingPosition = transform.position;
        landingPosition.y -= Height * 0.5f;
        Transform landing = (Transform)Instantiate (Settings.FootStepNoise, landingPosition, Quaternion.identity);
        landing.GetComponent<FootstepAudioPlayer> ().PlayLanding ();

    }

    public void PlayJumpLanding ()
    {
        Vector3 landingPosition = transform.position;
        landingPosition.y -= Height * 0.5f;
        Transform landing = (Transform)Instantiate (Settings.FootStepNoise, landingPosition, Quaternion.identity);
        landing.GetComponent<FootstepAudioPlayer> ().PlayLanding ();

    }
    

    // Movement/Animation Properties
    public AnimatorStateInfo CurrentState {
        get { 
            if(MecanimAnimator == null)
                return new AnimatorStateInfo();
            return MecanimAnimator.IsInTransition (0) ? MecanimAnimator.GetNextAnimatorStateInfo (0) : MecanimAnimator.GetCurrentAnimatorStateInfo (0);
        }
    }

    public AnimatorStateInfo PreviousState {
        get { return _previousState; }
    }

    public float TimeInCurrentState {
        get { return _timeInCurrentState; }
    }

    public CharacterController Controller {
        get { return _characterController; }
    }

    public Transform Root {
        get { return _root; }
    }

    public float Height {
        get { return Controller != null ? transform.localScale.y * Controller.height : transform.localScale.y * GetComponent<CharacterController> ().height; }
    }

    public float Radius {
        get { return Controller != null ? transform.localScale.x * Controller.radius : transform.localScale.x * GetComponent<CharacterController> ().radius; }
    }

    public Animator MecanimAnimator {
        get { return _animator; }
    }

    public virtual CharacterSettings Settings {
        get { return _characterSettings; }
    }

    public virtual CharacterInput CharInput {
        get { return _characterInput; }
    }

    public bool InputMoveForward {
        get { return (Direction.x > 0 && CharInput.Right) || (Direction.x < 0 && CharInput.Left); }
    }

    public bool InputMoveBackward {
        get { return (Direction.x > 0 && CharInput.Left) || (Direction.x < 0 && CharInput.Right); }
    }
    
    public bool InputJumpForward {
        get { return (Direction.x > 0 && CharInput.JumpRight) || (Direction.x < 0 && CharInput.JumpLeft); }
    }
    
    public bool InputJumpBackward {
        get { return (Direction.x > 0 && CharInput.JumpLeft) || (Direction.x < 0 && CharInput.JumpRight); }
    }

    public bool InputAttackForward {
        get { return (Direction.x > 0 && CharInput.AttackRight) || (Direction.x < 0 && CharInput.AttackLeft); }
    }

    public bool InputAttackBackward {
        get { return (Direction.x > 0 && CharInput.AttackLeft) || (Direction.x < 0 && CharInput.AttackRight); }
    }

    public Dictionary<int, ProcessState> StateMachine {
        get { return _stateMachine; }
    }

    public Vector3 Direction {
        get { return _direction; }
        set {
            if (!_direction.Equals (value)) {
                _prevDirection = _direction;
                _direction = value;
                if (_direction.x * _prevDirection.x < 0)
                    HorizontalSpeed = -HorizontalSpeed;
            }
        }
    }

    public bool IgnoreDirection {
        get { return _ignoreDirection; }
        set { _ignoreDirection = value; }
    }

    public bool IgnoreMovement {
        get { return _ignoreMovement; }
        set { _ignoreMovement = value; }
    }

	public bool IgnoreXYMovement {
		get { return _ignoreXYMovement; }
		set { _ignoreXYMovement = value; }
	}

    public virtual bool CanInputHorizontal {
        get { return true; }
    }
    
    public virtual bool CanInputVertical {
        get { return true; }
    }
    
    public virtual bool CanInputJump {
        get { return true; }
    }
    
    public virtual bool CanInputAttack {
        get { return true; }
    }
    
    public virtual bool CanInputPickup {
        get { return true; }
    }

    public float HorizontalSpeed {
        get { return _horizontalSpeed; }
        set { _horizontalSpeed = value; }
    }

    public float VerticalSpeed {
        get { return _verticalSpeed; }
        set { _verticalSpeed = value; }
    }

    public float GroundVerticalSpeed {
        get { return (15 * -_characterSettings.Gravity * Time.fixedDeltaTime); }
    }

    public Vector3 Velocity {
        get { return _velocity; }
    }

    public float LastGroundHeight {
        get { return _lastGroundHeight; }
    }

    public bool IsGrounded {
        get { return Controller.isGrounded; }
    }

    public bool IsTouchingCeiling {
        get { return (ControllerCollisionFlags & CollisionFlags.Above) != 0; }
    }

    public bool IsTouchingWall {
        get { return (ControllerCollisionFlags & CollisionFlags.Sides) != 0; }
    }

    public CollisionFlags ControllerCollisionFlags {
        get { return _collisionFlags; }
    }

    public virtual bool IsLanding {
        get { return false; } 
    }
    
    public virtual bool IsSneaking {
		// give us a little tolerance here, since values of 8.0000001 don't count as sneaking.
		// (it takes a while to lerp down from running to 8.0)
		get { return Mathf.Abs (HorizontalSpeed) < 0.51f * Settings.MaxHorizontalSpeed; }

    }

    public virtual bool IsTurningAround {
        get { return false; } 
    }

    public virtual bool IsClimbing {
        get { return false; } 
    }

    public virtual bool IsDead {
        get { return false; }
    }

    public virtual bool IsJumping {
        get { return false; } 
    }

    // Moving Platform Properties
    public Transform ActivePlatform {
        get { return _activePlatform; }
        set { _activePlatform = value; }
    }

    public Vector3 ActiveLocalPlatformPoint {
        get { return _activeLocalPlatformPoint; }
    }

    public Vector3 ActiveGlobalPlatformPoint {
        get { return _activeGlobalPlatformPoint; }
    }

    // Hang Properties
    public HangableObject ActiveHangTarget {
        get { return _hangQueue.Count > 0 ? _hangQueue [0] : null; }
    }

    public List<HangableObject> HangQueue {
        get { return _hangQueue; }
    }

    public HangableObject PreviousHangTarget {
        get { return _previousHangTarget; }
        set { _previousHangTarget = value; }
    }

    public bool CanHangOffObject {
        get { return (CanHangOffObjectHorizontally || CanHangOffObjectVertically) && !(ActiveHangTarget is GrabbableObject) && !(ActiveHangTarget is ClimbableObject);}
    }

    public bool CanClimbLadder {
        get { return ActiveHangTarget != null && ActiveHangTarget is Ladder; } //&& (ActiveHangTarget.DoesFaceZAxis() || PreviousHangTarget != ActiveHangTarget) ; }
    }

    public bool CanClimbRope {
        get { return ActiveHangTarget != null && ActiveHangTarget is Rope; } //&& ActiveHangTarget.transform.position.z == DesiredZ; }
    }

    public bool CanHangOffObjectHorizontally {
        get { return ActiveHangTarget != null && ActiveHangTarget.DoesFaceXAxis () && ((Direction.x > 0 && IsHangTargetToRight) || (Direction.x < 0 && !IsHangTargetToRight)); }
    }

    public bool CanHangOffObjectVertically {
        get { return ActiveHangTarget != null && ActiveHangTarget.DoesFaceZAxis () && !IsGrounded; }
    }

    public bool IsHangTargetToRight {
        get { return (ActiveHangTarget != null) && transform.position.x < ActiveHangTarget.transform.position.x; }
    }

    public bool IsHangTargetAbove {
        get { return (ActiveHangTarget != null) && transform.position.y < ActiveHangTarget.transform.position.y; }
    }

    public bool CanGrabWall {
        get { return (IsTouchingWall && (ActiveHangTarget is GrabbableObject) && VerticalSpeed > Settings.MinWallGrabSpeed);  }
    }

    // Zone Properties
    public float DesiredZ {
        get { return CurrentZone != null ? CurrentZone.transform.position.z : transform.position.z; }
    }

    public Zone CurrentZone {
        get { return _currentZone; }
        set { _currentZone = value; }
    }

    public float Z_Down {
        get { return Z_Lower != null ? Z_Lower.transform.position.z : transform.position.z; }
    }

    public Zone Z_Lower {
        get { return _Zlower; }
        set { _Zlower = value; }
    }

    public float Z_Up {
        get { return Z_Higher != null ? Z_Higher.transform.position.z : transform.position.z; }
    }

    public Zone Z_Higher {
        get { return _Zhigher; }
        set { _Zhigher = value; }
    }

    public List<Zone> Zones {
        get { return _zones; }
        set { _zones = value; }
    }
    
    public virtual bool CanTransitionZ {
        get { return _canTransitionZ; }
        set { _canTransitionZ = value; }
    }

    // Character specific meta-data
	public abstract EnemySaveState.EnemyType EnemyType {
		get;
	}

}
