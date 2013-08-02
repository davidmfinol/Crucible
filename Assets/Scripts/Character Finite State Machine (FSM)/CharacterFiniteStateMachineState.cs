using UnityEngine;
using System;
using System.Collections;

public abstract class CharacterFiniteStateMachineState
{
    // The controller that is using this state
    private CharacterFiniteStateMachineBase _controller;

    // Each state is aware of how long it has been in that state
    private float _duration;

    protected CharacterFiniteStateMachineState(CharacterFiniteStateMachineBase controller)
    {
        _controller = controller;
    }

    public virtual void StartState()
    {
        Duration = 0;
    }

    /// <summary>
    /// CharacterFiniteStateMachineState.Update() is the meat of this control system
    /// It finds the desired HorizontalSpeed, VerticalSpeed, and Direction of movement by calling the subclass's OnUpdateState()
    /// It then makes that movement and returns the nextState specified by the subclass
    /// </summary>
    public virtual Enum Update()
    {
        Enum nextState = Controller.CurrentState;
        if (GameTime.Paused)
            return nextState;

        // Moving platform support
        if (Controller.ActivePlatform != null && Controller.transform.parent == null) // &&ShouldMoveWithPlatform()?
        {
            Vector3 newGlobalPlatformPoint = Controller.ActivePlatform.TransformPoint(Controller.ActiveLocalPlatformPoint);
            Vector3 moveDistance = (newGlobalPlatformPoint - Controller.ActiveGlobalPlatformPoint);
            Controller.transform.position = Controller.transform.position + moveDistance;
        }

        // Recheck platform every frame
        if (Controller.ActivePlatform != null)
            Controller.ActivePlatform = null;

        // We let the individual state do their processing and set the desired Direction, VerticalSpeed, and HorizontalSpeed
        nextState = OnUpdate();

        // Update the time spent on this state
        Duration += Time.deltaTime;

        // Keep track of where we started out this frame
        Vector3 lastPosition = Controller.transform.position;

        // Calculate horizontal velocity for the frame
        float horizontalVelocity = Mathf.Abs(Direction.x * Direction.x) > 0.01 ? Direction.x * HorizontalSpeed : 1 * HorizontalSpeed;

        // Calculate total movement
        Vector3 currentMovementOffset = new Vector3(horizontalVelocity, VerticalSpeed, 0);

        // Make the motion be time-based instead of frame-based
        currentMovementOffset *= Time.deltaTime;

        // Determine the correct Z-offset
        float currentZ = Controller.transform.position.z;
        float newZ = Mathf.Lerp(Controller.transform.position.z, Controller.ZLevel, Controller.ZLerp * Time.deltaTime);
        float zOffset = newZ - currentZ;
        currentMovementOffset = new Vector3(currentMovementOffset.x, currentMovementOffset.y, zOffset);

        // Move our character!
        CharacterCollisionFlags = Controller.CharacterController.Move(currentMovementOffset);

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
        Velocity = (Controller.transform.position - lastPosition) / Time.deltaTime;

        // We should finally make our character be able to face the correct way
        if (Direction.sqrMagnitude > 0.01)
            Controller.transform.rotation = Quaternion.Slerp(Controller.transform.rotation, Quaternion.LookRotation(Direction), Time.deltaTime * Controller.RotationSmoothing);
        else
            Controller.transform.rotation = Quaternion.Slerp(Controller.transform.rotation, Quaternion.Euler(Vector3.zero), Time.deltaTime * Controller.RotationSmoothing);

        // Moving Platform support
        if (Controller.ActivePlatform != null)
        {
            Controller.ActiveGlobalPlatformPoint = Controller.transform.position;
            Controller.ActiveLocalPlatformPoint = Controller.ActivePlatform.InverseTransformPoint(Controller.transform.position);
        }

        return nextState;
    }
    // Every CharacterState implements OnUpdate() so that the CharacterController can process that state
    // Normally, OnUpdate() updates the desired direction, horizontalspeed, and verticalSpeed 
    // It processes the movement, and then returns what the next state of the character should be
    protected abstract Enum OnUpdate();

    public virtual void ExitState() { }

    public virtual bool ShouldMoveWithPlatform()
    {
        return IsGrounded;
    }

    // Properties
    protected virtual CharacterFiniteStateMachineBase Controller
    {
        get { return _controller; }
        set { _controller = value; }
    }
    public float Duration
    {
        get { return _duration; }
        set { _duration = value; }
    }
    protected float HorizontalSpeed
    {
        get { return Controller.HorizontalSpeed; }
        set { Controller.HorizontalSpeed = value; }
    }
    protected float VerticalSpeed
    {
        get { return Controller.VerticalSpeed; }
        set { Controller.VerticalSpeed = value; }
    }
    protected Vector3 Direction
    {
        get { return Controller.Direction; }
        set { Controller.Direction = value; }
    }
    protected CollisionFlags CharacterCollisionFlags
    {
        get { return Controller.CollisionFlags; }
        set { Controller.CollisionFlags = value; }
    }
    public Vector3 Velocity
    {
        get { return Controller.Velocity; }
        set { Controller.Velocity = value; }
    }

    // Helper Properties
    // What a character's vertical speed should be in order to stay on the ground
    protected float GroundVerticalSpeed
    {
        get { return (-Controller.Gravity * Time.deltaTime); }
    }
    // Whether the character is currently on the ground or not
    protected bool IsGrounded
    {
        get { return Controller.IsGrounded; }
    }
    // Whether the character touching a ceiling
    protected bool IsTouchingCeiling
    {
        get { return Controller.IsTouchingCeiling; }
    }
    // Whether the character is touching a wall
    protected bool IsTouchingWall
    {
        get { return Controller.IsTouchingWall; }
    }
}