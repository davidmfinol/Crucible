using UnityEngine;
using System.Collections;

[RequireComponent(typeof(Transform))]
public class CameraScrolling : MonoBehaviour
{

    // The object being tracked
    public Transform Target;

    // How far back should the camera be from the target?
    public float Distance = 15.0f;

    // How strict should the camera follow the target?  Lower values make the camera more lazy.
    public float Springiness = 4.0f;


    // Keep track of the boundaries of the level we're in
    private LevelAttributes _levelBoundaries;
    private Rect _levelBounds;

    void Awake()
    {
        _levelBoundaries = LevelAttributes.Instance;
        _levelBounds = _levelBoundaries.Bounds;
    }


    // You almost always want camera motion to go inside of LateUpdate (), so that the camera follows
    // the target _after_ it has moved.  Otherwise, the camera may lag one frame behind.
    void LateUpdate()
    {
        if (Target)
        {
            Vector3 goalPosition = GetGoalPosition();
            transform.position = Vector3.Lerp(transform.position, goalPosition, Time.deltaTime * Springiness);
        }
    }

    // Based on the camera attributes and the target's special camera attributes, find out where the
    // camera should move to.
    Vector3 GetGoalPosition()
    {
        // Our camera script can take attributes from the target.  If there are no attributes attached, we have
        // the following defaults.

        // How high in world space should the camera look above the target?
        float heightOffset = 0.0f;
        // How much should we zoom the camera based on this target?
        float distanceModifier = 1.0f;
        // By default, we won't account for any target velocity  or chaos in our calculations;
        float velocityLookAhead = 0.0f;
        Vector2 maxLookAhead = new Vector2(0.0f, 0.0f);
        //float chaos = 0.0f;

        // Look for CameraTargetAttributes in our target.
        CameraTargetAttributes cameraTargetAttributes = Target.GetComponent(typeof(CameraTargetAttributes)) as CameraTargetAttributes;

        // If our target has special attributes, use these instead of our above defaults.
        if (cameraTargetAttributes)
        {
            heightOffset = cameraTargetAttributes.HeightOffset;
            distanceModifier = cameraTargetAttributes.DistanceModifier;
            velocityLookAhead = cameraTargetAttributes.VelocityLookAhead;
            maxLookAhead = cameraTargetAttributes.MaxLookAhead;
            //chaos = cameraTargetAttributes.chaos;
        }

        Vector3 goalPosition = Target.position + new Vector3(0, heightOffset, -Distance * distanceModifier);

        // Next, we refine our goalPosition by taking into account our target's current velocity.
        // This will make the camera slightly look ahead to wherever the character is going.

        // First assume there is no velocity.
        // This is so if the camera's target is not a Rigidbody, it won't do any look-ahead calculations because everything will be zero.
        Vector3 targetVelocity = Vector3.zero;

        // If we find a Rigidbody on the target, that means we can access a velocity!
        Rigidbody targetRigidbody = Target.GetComponent<Rigidbody>();
        if (targetRigidbody)
            targetVelocity = targetRigidbody.velocity;

        // If we find a platformerController with a velocity, we use that velocity
        PlayerCharacterStateMachine targetController = Target.GetComponent<PlayerCharacterStateMachine>();
        if (targetController)
            targetVelocity = targetController.Velocity;

        // Estimate what the target's position will be in velocityLookAhead seconds (position = velocity * time).
        Vector3 lookAhead = targetVelocity * velocityLookAhead;

        // We clamp the lookAhead vector to some sane values so that the target doesn't go offscreen.
        // This calculation could be more advanced (lengthy), taking into account the target's viewport position,
        // but this works pretty well in practice.
        lookAhead.x = Mathf.Clamp(lookAhead.x, -maxLookAhead.x, maxLookAhead.x);
        lookAhead.y = Mathf.Clamp(lookAhead.y, -maxLookAhead.y, maxLookAhead.y);
        // We never want to take z velocity into account as this is 2D.  Just make sure it's zero.
        lookAhead.z = 0.0f;

        // Now add in our lookAhead calculation.  Our camera following is now a bit better!
        goalPosition += lookAhead;

        // @TODO FACTOR IN CHAOS (AND MORE?)

        // We will also make it so that the positions beyond the level boundaries are never seen. 

        Vector3 clampOffset = Vector3.zero;

        // Temporarily set the camera to the goal position so we can test positions for clamping.
        // But first, save the previous position.
        Vector3 cameraPositionSave = transform.position;
        transform.position = goalPosition;

        // Get the target position in viewport space.  Viewport space is relative to the camera.
        // The bottom left is (0,0) and the upper right is (1,1)
        Vector3 targetViewportPosition = camera.WorldToViewportPoint(Target.position);

        // First clamp to the right and top.  After this we will clamp to the bottom and left, so it will override this
        // clamping if it needs to.  This only occurs if the level is really small so that the camera sees more than
        // the entire level at once.

        // What is the world position of the very upper right corner of the camera?
        Vector3 upperRightCameraInWorld = camera.ViewportToWorldPoint(new Vector3(1.0f, 1.0f, targetViewportPosition.z));

        // Find out how far outside the world the camera is right now.
        clampOffset.x = Mathf.Min(_levelBounds.xMax - upperRightCameraInWorld.x, 0.0f);
        clampOffset.y = Mathf.Min((_levelBounds.yMax - upperRightCameraInWorld.y), 0.0f);

        // Now we apply our clamping to our goalPosition.  Now our camera won't go past the right and top boundaries of the level!
        goalPosition += clampOffset;

        // Now we do basically the same thing, except clamp to the lower left of the level.  This will override any previous clamping
        // if the level is really small.  That way you'll for sure never see past the lower-left of the level, but if the camera is
        // zoomed out too far for the level size, you will see past the right or top of the level.

        transform.position = goalPosition;
        Vector3 lowerLeftCameraInWorld = camera.ViewportToWorldPoint(new Vector3(0.0f, 0.0f, targetViewportPosition.z));

        // Find out how far outside the world the camera is right now.
        clampOffset.x = Mathf.Max((_levelBounds.xMin - lowerLeftCameraInWorld.x), 0.0f);
        clampOffset.y = Mathf.Max((_levelBounds.yMin - lowerLeftCameraInWorld.y), 0.0f);

        // Now we apply our clamping to our goalPosition once again.  Now our camera won't go past the left and bottom boundaries of the level!
        goalPosition += clampOffset;

        // Now that we're done calling functions on the camera, we can set the position back to the saved position;
        transform.position = cameraPositionSave;


        return goalPosition;
    }
}
