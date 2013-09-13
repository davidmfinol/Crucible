using UnityEngine;
using System;
using System.Collections;
using System.Collections.Generic;

/// <summary>
/// Character finite state machine base runs the finite state machine (FSM) that controls characters in the game.
/// Basically, it keeps track of the character's current state and tells that state to do the appropriate processing.
/// It also holds appropriate information about platforming/ZLevel/character-physics.
/// </summary>
[RequireComponent(typeof(CharacterController))]
public abstract class CharacterFiniteStateMachineBase : MonoBehaviour
{

    void Awake()
    {
        // Zlevel setup
        ZLevel = transform.position.z;
        Z_Down = ZLevel;
        Z_Up = ZLevel;
    }

    // Update() is called once per frame, and this is where the states are processed by the state machine
    public void Update()
    {
        HeartBox heartScript = GetComponentInChildren<HeartBox>();

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

    public CharacterController Controller
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
    public CollisionFlags ControllerCollisionFlags
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
        get { return _hangQueue.Count > 0 ? _hangQueue[0] : null; }
    }
    public List<HangableObject> HangQueue
    {
        get { return _hangQueue; }
    }
	// FIXME: THIS MAY NOT BE NECESSARY
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
        get { return ActiveHangTarget != null && ActiveHangTarget is Ledge && Mathf.Abs(transform.position.y + Height / 2 - ActiveHangTarget.transform.position.y) < 0.3;}// && PreviousHangTarget != ActiveHangTarget; }
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
	
    public float Height
    {
        get { return transform.localScale.y * Controller.height; }
    }
}