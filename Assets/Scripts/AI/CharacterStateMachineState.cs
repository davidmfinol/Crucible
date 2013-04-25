using UnityEngine;
using System;
using System.Collections;

public abstract class CharacterStateMachineState
{
    // The controller that is using this state
    private CharacterStateMachineBase _controller;

    // Each state is aware of how long it has been in that state
    private float _duration;

    protected CharacterStateMachineState(CharacterStateMachineBase controller)
    {
        _controller = controller;
    }

    public virtual void StartState()
    {
        Duration = 0;
    }

    /// <summary>
    /// CharacterStateMachineState.Update() is the meat of this control system
    /// It finds the desired HorizontalSpeed, VerticalSpeed, and Direction of movement by calling the subclass's OnUpdateState()
    /// It then makes that movement and returns the nextState specified by the subclass
    /// </summary>
    public virtual Enum Update()
    {
        Enum nextState = Controller.CurrentState;

        // Moving platform support
        if (Controller.ActivePlatform != null && ShouldMoveWithPlatform())
        {
            Vector3 newGlobalPlatformPoint = Controller.ActivePlatform.TransformPoint(Controller.ActiveLocalPlatformPoint);
            Vector3 moveDistance = (newGlobalPlatformPoint - Controller.ActiveGlobalPlatformPoint);
            Controller.transform.position = Controller.transform.position + moveDistance;
        }

        // We let the individual state do their processing and set the desired Direction, VerticalSpeed, and HorizontalSpeed
        nextState = OnUpdate();

        // Recheck platform every frame
        if (Controller.ActivePlatform != null && !"Hangable".Equals(Controller.ActivePlatform.tag))
            Controller.ActivePlatform = null;

        // Update the time spent on this state
        Duration += Time.deltaTime;

        // Calculate motion for the frame
        float horizontal = Mathf.Abs(Direction.x*Direction.x) > 0.01 ? Direction.x * HorizontalSpeed : 1 * HorizontalSpeed;
        Vector3 currentMovementOffset = new Vector3(horizontal, VerticalSpeed, 0);

        // Make the motion be time-based instead of frame-based
        currentMovementOffset *= Time.deltaTime;

        // Keep track of where we started out this frame, to be used to calculate velocity
        Vector3 lastPosition = Controller.transform.position;

        // Move our character!
        CharacterCollisionFlags = Controller.CharacterController.Move(currentMovementOffset);

        // Calculate the velocity based on the current and previous position.  
        // This means our velocity will only be the amount the character actually moved as a result of collisions.
        Velocity = (Controller.transform.position - lastPosition) / Time.deltaTime;

        // We should finally make our character be able to face the correct way
        if (Direction.sqrMagnitude > 0.01)
            Controller.transform.rotation = Quaternion.Slerp(Controller.transform.rotation, Quaternion.LookRotation(Direction), Time.deltaTime * Controller.RotationSmoothing);
        else
            Controller.transform.rotation = Quaternion.Slerp(Controller.transform.rotation, Quaternion.Euler(Vector3.zero), Time.deltaTime * Controller.RotationSmoothing);

        // Moving platforms support
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
    protected virtual CharacterStateMachineBase Controller
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
    protected bool isNearCeiling
    {
        get
        {
            Ray ray = new Ray(Controller.transform.position, Vector3.up);
            RaycastHit hit;

            return Physics.Raycast(ray, out hit, 3.0f) && (hit.transform.gameObject.layer == 9);
        }
    }
    // Whether the character is touching a wall
    protected bool IsTouchingWall
    {
        get { return Controller.IsTouchingWall; }
    }
}