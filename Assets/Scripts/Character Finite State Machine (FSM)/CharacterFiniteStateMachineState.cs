using UnityEngine;
using System;
using System.Collections;

/// <summary>
/// Character finite state machine state represents a state in the FSM.
/// </summary>.
public abstract class CharacterFiniteStateMachineState
{
    // The finite state machine that is using this state
    private CharacterFiniteStateMachineBase _fsm;

    // Each state is aware of how long it has been in that state
    private float _duration;

    protected CharacterFiniteStateMachineState(CharacterFiniteStateMachineBase fsm)
    {
        _fsm = fsm;
    }

    public virtual void StartState()
    {
        _duration = 0;
    }

    /// <summary>
    /// CharacterFiniteStateMachineState.Update() is the meat of this control system
    /// It finds the desired HorizontalSpeed, VerticalSpeed, and Direction of movement by calling the subclass's OnUpdateState()
    /// It then makes that movement and returns the nextState specified by the subclass
    /// </summary>
    public virtual Enum Update()
    {
        Enum nextState = FSM.CurrentState;
        if (GameTime.Paused)
            return nextState;

        // Moving platform support
        if (FSM.ActivePlatform != null && FSM.transform.parent == null) // &&ShouldMoveWithPlatform()?
        {
            Vector3 newGlobalPlatformPoint = FSM.ActivePlatform.TransformPoint(FSM.ActiveLocalPlatformPoint);
            Vector3 moveDistance = (newGlobalPlatformPoint - FSM.ActiveGlobalPlatformPoint);
            FSM.transform.position = FSM.transform.position + moveDistance;
        }

        // Reset platform every frame
		FSM.ActivePlatform = null;

        // We let the individual state do their processing and set the desired Direction, VerticalSpeed, and HorizontalSpeed
        nextState = OnUpdate();

        // Update the time spent on this state
        _duration += Time.deltaTime;

        // Keep track of where we started out this frame
        Vector3 lastPosition = FSM.transform.position;

        // Calculate horizontal velocity for the frame
        float horizontalVelocity = Mathf.Abs(Direction.x * Direction.x) > 0.01 ? Direction.x * HorizontalSpeed : 1 * HorizontalSpeed;

        // Calculate total movement
        Vector3 currentMovementOffset = new Vector3(horizontalVelocity, VerticalSpeed, 0);

        // Make the motion be time-based instead of frame-based
        currentMovementOffset *= Time.deltaTime;

        // Determine the correct Z-offset
        float currentZ = FSM.transform.position.z;
        float newZ = Mathf.Lerp(FSM.transform.position.z, FSM.ZLevel, FSM.ZLerp * Time.deltaTime);
        float zOffset = newZ - currentZ;
        currentMovementOffset = new Vector3(currentMovementOffset.x, currentMovementOffset.y, zOffset);

        // Move our character!
        ControllerCollisionFlags = FSM.Controller.Move(currentMovementOffset);

        // Prevent the physics engine from moving us incorrectly 
		/*
        if (Controller.transform.position.z != newZ && IsGrounded)
		{
			Debug.Log("Moved back to position");
            Controller.transform.position = lastPosition;
		}
		*/
		
        // Calculate the velocity based on the current and previous position.  
        // This means our velocity will only be the amount the character actually moved as a result of collisions.
        Velocity = (FSM.transform.position - lastPosition) / Time.deltaTime;

        // We should finally make our character be able to face the correct way
        if (Direction.sqrMagnitude > 0.01)
            FSM.transform.rotation = Quaternion.Slerp(FSM.transform.rotation, Quaternion.LookRotation(Direction), Time.deltaTime * FSM.RotationSmoothing);
        else
            FSM.transform.rotation = Quaternion.Slerp(FSM.transform.rotation, Quaternion.Euler(Vector3.zero), Time.deltaTime * FSM.RotationSmoothing);

        // Moving Platform support
        if (FSM.ActivePlatform != null)
        {
            FSM.ActiveGlobalPlatformPoint = FSM.transform.position;
            FSM.ActiveLocalPlatformPoint = FSM.ActivePlatform.InverseTransformPoint(FSM.transform.position);
        }

        return nextState;
    }
    ///<summary> Every CharacterState implements OnUpdate() so that the CharacterFSM can process that state.
    /// Normally, OnUpdate() updates the desired direction, horizontal speed, and vertical speed 
    ///</summary> It processes the movement, and then returns what the next state of the character should be
    protected abstract Enum OnUpdate();

    public virtual void ExitState() { }

    public virtual bool ShouldMoveWithPlatform()
    {
        return IsGrounded;
    }

    // Properties
    protected virtual CharacterFiniteStateMachineBase FSM
    {
        get { return _fsm; }
        set { _fsm = value; }
    }
    public float Duration
    {
        get { return _duration; }
    }
    protected float HorizontalSpeed
    {
        get { return FSM.HorizontalSpeed; }
        set { FSM.HorizontalSpeed = value; }
    }
    protected float VerticalSpeed
    {
        get { return FSM.VerticalSpeed; }
        set { FSM.VerticalSpeed = value; }
    }
    protected Vector3 Direction
    {
        get { return FSM.Direction; }
        set { FSM.Direction = value; }
    }
    protected CollisionFlags ControllerCollisionFlags
    {
        get { return FSM.ControllerCollisionFlags; }
        set { FSM.ControllerCollisionFlags = value; }
    }
    public Vector3 Velocity
    {
        get { return FSM.Velocity; }
        set { FSM.Velocity = value; }
    }

    // Some more helper properties
	
    // What a character's vertical speed should be in order to stay on the ground
    protected float GroundVerticalSpeed
    {
        get { return (-FSM.Gravity * Time.deltaTime); }
    }
    // Whether the character is currently on the ground or not
    protected bool IsGrounded
    {
        get { return FSM.IsGrounded; }
    }
    // Whether the character touching a ceiling
    protected bool IsTouchingCeiling
    {
        get { return FSM.IsTouchingCeiling; }
    }
    // Whether the character is touching a wall
    protected bool IsTouchingWall
    {
        get { return FSM.IsTouchingWall; }
    }
}