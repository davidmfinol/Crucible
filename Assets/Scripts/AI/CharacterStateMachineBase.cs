using UnityEngine;
using System;
using System.Collections;
using System.Collections.Generic;

[RequireComponent(typeof(CharacterController))]
// CharacterStateMachineBase runs the finite state machine (FSM) that controls characters in the game
// Basically, it keeps track of the character's current state and tells that state to do the appropriate processing
// It also holds appropriate information about platforming
public abstract class CharacterStateMachineBase : MonoBehaviour
{
    // We obviously need to keep track of the current state
    private Enum _currentState;

    // We need a way to keep moving between z levels
    public float ZLevel; // current z value
    private List<Zone> _zones = new List<Zone>();
    private float _Z1; // lower zone
    private float _Z2; // higher zone
    private bool _canTransitionZ = false; // does our current location allow us to to move between z levels?

    // We need a way to map the List of all possible states to the class that implements it, so we create this dictionary
    // In terms of efficiency, this should also prevent wasting resources by creating and deleting new instances of these states
    // Furthermore, the memory overhead for this dictionary should be very small, and the lookup is very fast
    private Dictionary<Enum, CharacterStateMachineState> _stateMachine;

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

    public void Awake()
    {
        // Statemachine setup
        CharacterController = GetComponent<CharacterController>();
        CreateStateMachine();
        CurrentState = GetDefaultState();
        CharacterStateMachineState state;
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
        StateMachine = new Dictionary<Enum, CharacterStateMachineState>();
        System.Object[] args = { this };
        foreach (Enum state in Enum.GetValues(GetStateEnumType()))
        {
            string stateName = state.ToString();
            Type stateType = Type.GetType(stateName);
            CharacterStateMachineState stateClass = (CharacterStateMachineState) Activator.CreateInstance(stateType, args);
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
            Z_Down = Zones[0].transform.position.z;
            Z_Up = Zones[0].transform.position.z;
            ZLevel = Zones[0].transform.position.z;
        }

        // Update our state
        CharacterStateMachineState state;
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

    public CharacterStateMachineState GetState()
    {
        return StateMachine[CurrentState];
    }
    public void SetState(Enum nextState)
    {
        if (!nextState.Equals(CurrentState)) // If we have a new state
        {
            CharacterStateMachineState state;
            StateMachine.TryGetValue(CurrentState, out state);
            state.ExitState(); // exit the previous state
            CurrentState = nextState; // move to the new state
            StateMachine.TryGetValue(CurrentState, out state);
            state.StartState(); // and start it
        }
    }

    // Used to check with interactions with platforms
    public virtual void OnControllerColliderHit(ControllerColliderHit hit)
    {
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
    public Dictionary<Enum, CharacterStateMachineState> StateMachine
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
    public List<Zone> Zones
    {
        get
        {
            // We need a Set. This (horribly) pretends we have a Set.
            List<Zone> zCopy = new List<Zone>();
            for (int i = 0; i < _zones.Count; ++i )
            {
                Zone zone = _zones[i];
                if(!zCopy.Contains(zone))
                    zCopy.Add(zone);
            }
            _zones = zCopy;
            return _zones; 
        }
    }
    public float Height
    {
        get { return transform.localScale.y * CharacterController.height; }
    }
}