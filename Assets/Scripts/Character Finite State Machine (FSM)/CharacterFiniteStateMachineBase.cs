using UnityEngine;
using System;
using System.Collections;
using System.Collections.Generic;

[RequireComponent(typeof(CharacterController))]
// CharacterFiniteStateMachineBase runs the finite state machine (FSM) that controls characters in the game
// Basically, it keeps track of the character's current state and tells that state to do the appropriate processing
// It also holds appropriate information about platforming
public abstract class CharacterFiniteStateMachineBase : MonoBehaviour
{
    // We obviously need to keep track of the current state
    private Enum _currentState;

    // We need a way to keep moving between z levels
    public float ZLevel; // current z value
    private HashSet<Zone> _zones = new HashSet<Zone>();
    private float _Z1; // lower zone
    private float _Z2; // higher zone
    private bool _canTransitionZ = false; // does our current location allow us to to move between z levels?

    // We need a way to map the List of all possible states to the class that implements it, so we create this dictionary
    // In terms of efficiency, this should also prevent wasting resources by creating and deleting new instances of these states
    // Furthermore, the memory overhead for this dictionary should be very small, and the lookup is very fast
    private System.Collections.Generic.Dictionary<Enum, CharacterFiniteStateMachineState> _stateMachine;

    // The following variables are used for the physical movement of a character for each frame
    // Unity uses CharacterController to move characters
    private CharacterController _characterController;
    // How fast does the character want to move on the x-axis?
    private float _horizontalSpeed = 0.0f;
    // How fast does the character want to move on the y-axis?
    private float _verticalSpeed = 0.0f;
    // The current direction the character is facing in x-y.
    private Vector3 _direction = Vector3.right;
    // The last collision flags returned from characterController.Move()
    private CollisionFlags _collisionFlags = CollisionFlags.None;
    // The last velocity moved as a result of the characterController.Move()
    private Vector3 _velocity = Vector3.zero;
    // How fast does the character rotate?
    public float RotationSmoothing = 3.0f;

    // How fast does the character move between ZLevels?
    public float ZLerp = 10.0f;

    // Rate of change of vertical fall speed
    public float Gravity = 40.0f;

    // Maximum fall speed
    public float MaxFallSpeed = 20.0f;

    // Moving platform support 
    private Transform _activePlatform;
    private Vector3 _activeLocalPlatformPoint;
    private Vector3 _activeGlobalPlatformPoint;

    // Support for hanging off of objects
    private HangableObject _activeHangTarget;
    private HangableObject _previousHangTarget;

    void Awake()
    {
        // Statemachine setup
        CharacterController = GetComponent<CharacterController>();
        CreateStateMachine();
        CurrentState = GetDefaultState();
        CharacterFiniteStateMachineState state;
        StateMachine.TryGetValue(CurrentState, out state);
        state.StartState();

        // Zlevel setup
        ZLevel = transform.position.z;
        Z_Down = ZLevel;
        Z_Up = ZLevel;
    }

    // Map state machine Enum to corresponding Class
    private void CreateStateMachine()
    {
        StateMachine = new System.Collections.Generic.Dictionary<Enum, CharacterFiniteStateMachineState>();
        System.Object[] args = { this };
        foreach (Enum state in Enum.GetValues(GetStateEnumType()))
        {
            string stateName = state.ToString();
            Type stateType = Type.GetType(stateName);
            CharacterFiniteStateMachineState stateClass = (CharacterFiniteStateMachineState) Activator.CreateInstance(stateType, args);
            StateMachine.Add(state, stateClass);
        }
    }

    public virtual void OnDeath()
    {
        Destroy(gameObject);
    }

    // Update() is called once per frame, and this is where the states are processed by the state machine
    public void Update()
    {
        // check our health first
        HeartBox heartScript = GetComponentInChildren<HeartBox>();
        if (heartScript != null && heartScript.HitPoints <= 0)
        {
            OnDeath();
            return;
        }

        // Correct our Z value when we are in only one zone
        if (Zones.Count == 1 && !CanTransitionZ)
        {
            IEnumerator<Zone> it = Zones.GetEnumerator();
            it.MoveNext();
            Z_Down = it.Current.transform.position.z;
            Z_Up = it.Current.transform.position.z;
            ZLevel = it.Current.transform.position.z;
        }

        // Update our state
        CharacterFiniteStateMachineState state;
        StateMachine.TryGetValue(CurrentState, out state);
        Enum nextState = state.Update(); // The next state is determined after processing the current state
        if (!nextState.Equals(CurrentState)) // If we have a new state
        {
            state.ExitState();
            CurrentState = nextState; // move to the new state
            StateMachine.TryGetValue(CurrentState, out state);
            state.StartState(); // and start it
        }
    }

    // Defines the enum to use for the List of states
    public abstract Type GetStateEnumType();

    // The default state that the character starts in
    // This will normally be the character's idle state
    public abstract Enum GetDefaultState();

    public CharacterFiniteStateMachineState GetState()
    {
        return StateMachine[CurrentState];
    }
    public void SetState(Enum nextState)
    {
        CharacterFiniteStateMachineState state;
        StateMachine.TryGetValue(CurrentState, out state);
        state.ExitState(); // exit the previous state
        CurrentState = nextState; // move to the new state
        StateMachine.TryGetValue(CurrentState, out state);
        state.StartState(); // and start it
    }

    // Used to check with interactions with platforms
    public virtual void OnControllerColliderHit(ControllerColliderHit hit)
    {
        // We only check for platforms if we don't already have one
        if (ActivePlatform != null)
            return;

        // Support for moving platforms
        if (Mathf.Abs(hit.moveDirection.y) > 0.9 && Mathf.Abs(hit.normal.y) > 0.9)
        {
            ActivePlatform = hit.collider.transform;
        }

        // Support for catching a wall/ledge/rope/etc.
        if (Mathf.Abs(hit.moveDirection.x) > 0.9 && Mathf.Abs(hit.normal.x) > 0.9)
        {
            ActivePlatform = hit.collider.transform;
        }
    }

    // Helper Method to find a bone attached to a character
    public static Transform SearchHierarchyForBone(Transform current, string name)
    {
        // check if the current bone is the bone we're looking for, if so return it
        if (current.name == name)
            return current;

        // search through child bones for the bone we're looking for
        for (int i = 0; i < current.GetChildCount(); ++i)
        {
            // the recursive step; repeat the search one step deeper in the hierarchy
            Transform found = SearchHierarchyForBone(current.GetChild(i), name);

            // a transform was returned by the search above that is not null,
            // it must be the bone we're looking for
            if (found != null)
                return found;
        }

        // bone with name was not found
        return null;
    }

    // Helper method to determine what a character's VerticalSpeed should be while mid-air
    public float ApplyGravity()
    {
        float speed = VerticalSpeed;
        speed -= Gravity * Time.deltaTime;
        speed = Mathf.Max(-1.0f * MaxFallSpeed, speed);
        return speed;
    }

    // Properties
    public Enum CurrentState
    {
        get { return _currentState; }
        set { _currentState = value; }
    }
    public System.Collections.Generic.Dictionary<Enum, CharacterFiniteStateMachineState> StateMachine
    {
        get { return this._stateMachine; }
        set { this._stateMachine = value; }
    }

    public CharacterController CharacterController
    {
        get { return _characterController; }
        set { _characterController = value; }
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
    public CollisionFlags CollisionFlags
    {
        get { return _collisionFlags; }
        set { _collisionFlags = value; }
    }
    public Vector3 Velocity
    {
        get { return _velocity; }
        set { _velocity = value; }
    }

    public Transform ActivePlatform
    {
        get { return _activePlatform; }
        set { _activePlatform = value; }
    }
    public Vector3 ActiveLocalPlatformPoint
    {
        get { return _activeLocalPlatformPoint; }
        set { _activeLocalPlatformPoint = value; }
    }
    public Vector3 ActiveGlobalPlatformPoint
    {
        get { return _activeGlobalPlatformPoint; }
        set { _activeGlobalPlatformPoint = value; }
    }
    public HangableObject ActiveHangTarget
    {
        get { return _activeHangTarget; }
        set
        {
            _previousHangTarget = _activeHangTarget;
            _activeHangTarget = value;
            if (_activeHangTarget == null)
                _activePlatform = null;
        }
    }
    public HangableObject PreviousHangTarget
    {
        get { return _previousHangTarget; }
        set { _previousHangTarget = value; }
    }
    public bool CanHangOffObject
    {
        get { return (CanHangOffObjectHorizontally || CanHangOffObjectVertically) && !(ActiveHangTarget is ClimbableObject) && ActiveHangTarget.transform.position.z == ZLevel /*&& (Mathf.Abs(transform.position.y + Height / 2 - ActiveHangTarget.transform.position.y) < 0.3)*/; } //TODO: CHECK WITHIN RANGE
    }
    public bool CanClimbLadder
    {
        get { return ActiveHangTarget != null && ActiveHangTarget is Ladder && ActiveHangTarget.transform.position.z == ZLevel; }
    }
    public bool CanClimbPipe
    {
        get { return ActiveHangTarget != null && ActiveHangTarget is Pipe && ActiveHangTarget.transform.position.z == ZLevel; }
    }
    public bool CanHangOffObjectHorizontally
    {
        get { return ActiveHangTarget != null && ActiveHangTarget.DoesFaceXAxis() && ((Direction.x > 0 && IsHangTargetToRight) || (Direction.x < 0 && !IsHangTargetToRight)); }
    }
    public bool CanHangOffObjectVertically
    {
        get { return ActiveHangTarget != null && ActiveHangTarget.DoesFaceZAxis() && !IsGrounded && IsHangTargetAbove; }
    }
    public bool IsHangTargetToRight
    {
        get { return (ActiveHangTarget != null) && transform.position.x < ActiveHangTarget.transform.position.x; }
    }
    public bool IsHangTargetAbove
    {
        get { return (ActiveHangTarget != null) && transform.position.y < ActiveHangTarget.transform.position.y; ; }
    }

    public bool IsGrounded
    {
        get { return CharacterController.isGrounded; }
    }
    public bool IsTouchingCeiling
    {
        get { return (CollisionFlags & CollisionFlags.Above) != 0; }
    }
    public bool IsTouchingWall
    {
        get { return (CollisionFlags & CollisionFlags.Sides) != 0; }
    }

    public float Z_Down
    {
        get { return _Z1; }
        set { _Z1 = value; } 
    }
    public float Z_Up
    {
        get { return _Z2; }
        set { _Z2 = value; }
    }
    public bool CanTransitionZ
    {
        get { return _canTransitionZ; }
        set { _canTransitionZ = value; }
    }
    public HashSet<Zone> Zones
    {
        get { return _zones; }
    }
    public float Height
    {
        get { return transform.localScale.y * CharacterController.height; }
    }
}