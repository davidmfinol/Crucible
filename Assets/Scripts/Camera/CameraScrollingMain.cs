using UnityEngine;
using System.Collections;

/// <summary>
/// Camera scrolling main is the main camera script used to make the camera follow the player character.
/// It is heavily based off the camera script found in the Lerpz 2D platforming Unity tutorial project.
/// </summary>
[RequireComponent(typeof(Transform))]
[AddComponentMenu("Camera/Camera Scrolling Main")]
public class CameraScrollingMain : MonoBehaviour
{
    // How far back should the camera be from the target?
    public float Distance = 15.0f;

    // How strict should the camera follow the target?  Lower values make the camera more lazy.
    public float MovementSpringiness = 4.0f;
    public float EnemyFocusedSpringiness = 1.2f; // Same thing, but for when there is an enemy we're also tracking

    // The range for moving the camera between you and the enemies.
    public float EnemyFocus = 50.0f;
    private bool _enemyFocused;
    
    // We track this for a shake effect that we add on to the camera
    private ShakeEffect _shakeEffect;

    // The object being tracked, and it's properties
    private Transform _target;
    private CameraTargetAttributes _cameraTargetAttributes;
    private CharacterAnimator _targetAnimator;
    private Rigidbody _targetRigidbody;

    // Cinematic override for zooming
    private bool _cinematicOverride;
    
    void Start()
    {
        _shakeEffect = null;

    }

    // You almost always want camera motion to go inside of LateUpdate (), so that the camera follows
    // the target _after_ it has moved.  Otherwise, the camera may lag one frame behind.
    // NOTE: There's a reason we're using FixedUpdate, but I don't remember the specifics
    void FixedUpdate()
    {
        if (Target == null) {
            _enemyFocused = false;
            return;
        }

        Vector3 goalPosition = GetGoalPosition(Time.fixedDeltaTime);
        float springiness = MovementSpringiness;
        if (_enemyFocused) {
            springiness = EnemyFocusedSpringiness;
        }
        transform.position = Vector3.Lerp(transform.position, goalPosition, Time.fixedDeltaTime * springiness);

    }

    public void AddShake(float lifetime, Vector3 spread, float minSpeed, float maxSpeed)
    {
        if (_shakeEffect == null && TargetAttributes != null) {
            _shakeEffect = new ShakeEffect(lifetime, TargetAttributes.DistanceModifier, spread, minSpeed, maxSpeed);
        }

    }
    
    // Based on the camera attributes and the target's special camera attributes, find out where the
    // camera should move to.
    public Vector3 GetGoalPosition(float elapsedTime)
    {
        // Our camera script can take attributes from the target.  If there are no attributes attached, we have
        // the following defaults.

        // How high in world space should the camera look above the target?
        float heightOffset = 0.0f;
        // How much should we zoom the camera based on this target?
        float distanceModifier = 1.0f;
        // By default, we won't account for any target velocity or chaos in our calculations;
        float velocityLookAheadX = 0.0f;
        float velocityLookAheadY = 0.0f;
        Vector2 maxLookAhead = new Vector2(0.0f, 0.0f);

        // If our target has special attributes, use these instead of our above defaults.
        if (TargetAttributes != null) {
            heightOffset = TargetAttributes.HeightOffset;

            if (TargetAnimator != null && TargetAnimator.IsDead) {
                distanceModifier = TargetAttributes.DeathZoom;
            } else if (_shakeEffect != null) {
                distanceModifier = _shakeEffect.OldDistanceModifier;
            } else if (_cinematicOverride) { 
                distanceModifier = 0.5f;
            } else { 
                distanceModifier = TargetAttributes.DistanceModifier;
            }
                                                                                        
            velocityLookAheadX = TargetAttributes.VelocityLookAheadX;
            velocityLookAheadY = TargetAttributes.VelocityLookAheadY;
            maxLookAhead = TargetAttributes.MaxLookAhead;
        }

        Vector3 goalPosition = Target.position + new Vector3(0, heightOffset, -Distance * distanceModifier);

        Vector3 nearestEnemy = Vector3.zero;
        _enemyFocused = GetNearestEnemy(out nearestEnemy);
        if (_enemyFocused) {
            goalPosition += (nearestEnemy - GameManager.Player.transform.position) * 0.5f 
                + new Vector3(0, 0, -Vector3.Distance(nearestEnemy, GameManager.Player.transform.position) * 0.25f);
        }

        // Next, we refine our goalPosition by taking into account our target's current velocity.
        // This will make the camera slightly look ahead to wherever the character is going.

        // First assume there is no velocity.
        // This is so if the camera's target is not a Rigidbody, it won't do any look-ahead calculations because everything will be zero.
        Vector3 targetVelocity = Vector3.zero;

        // If we find a Rigidbody on the target, that means we can access a velocity!
        if (TargetRigidbody) {
            targetVelocity = TargetRigidbody.velocity;
        }
        

        // If the target has a velocity, we use that velocity
        if (TargetAnimator) {
            targetVelocity = TargetAnimator.Velocity;
        }
        

        // Estimate what the target's position will be in velocityLookAhead seconds (position = velocity * time).
        Vector3 lookAhead = targetVelocity;
        lookAhead.x *= velocityLookAheadX;
        lookAhead.y *= velocityLookAheadY;

        // We clamp the lookAhead vector to some sane values so that the target doesn't go offscreen.
        // This calculation could be more advanced (lengthy), taking into account the target's viewport position,
        // but this works pretty well in practice.
        lookAhead.x = Mathf.Clamp(lookAhead.x, -maxLookAhead.x, maxLookAhead.x);
        lookAhead.y = Mathf.Clamp(lookAhead.y, -maxLookAhead.y, maxLookAhead.y);
        // We never want to take z velocity into account as this is 2D.  Just make sure it's zero.
        lookAhead.z = 0.0f;

        // We want to make sure our lookahead accounts for how zoomed in the camera is
        lookAhead *= distanceModifier;

        // Stop looking ahead if we tagged it to false
        if (TargetAnimator != null && TargetAnimator.CurrentState.IsTag("NoLookAhead")) {
            lookAhead = Vector3.zero;
        }
        

        // Now add in our lookAhead calculation.  Our camera following is now a bit better!
        goalPosition += lookAhead;

        // Shake the camera if told
        if (_shakeEffect != null) {
            if (! _shakeEffect.IsDone) {
                goalPosition += _shakeEffect.Shake(elapsedTime);
            } else {
                _shakeEffect = null;
            }
            
        }

        // We will also make it so that the positions beyond the level boundaries are never seen. 
        Vector3 clampOffset = Vector3.zero;

        // Temporarily set the camera to the goal position so we can test positions for clamping.
        // But first, save the previous position.
        Vector3 cameraPositionSave = transform.position;
        transform.position = goalPosition;

        // Get the target position in viewport space.  Viewport space is relative to the camera.
        // The bottom left is (0,0) and the upper right is (1,1)
        Vector3 targetViewportPosition = GetComponent<Camera>().WorldToViewportPoint(Target.position);

        // First clamp to the right and top.  After this we will clamp to the bottom and left, so it will override this
        // clamping if it needs to.  This only occurs if the level is really small so that the camera sees more than
        // the entire level at once.

        // What is the world position of the very upper right corner of the camera?
        Vector3 upperRightCameraInWorld = GetComponent<Camera>().ViewportToWorldPoint(new Vector3(1.0f, 1.0f, targetViewportPosition.z));

        // Find out how far outside the world the camera is right now.
        clampOffset.x = Mathf.Min(GameManager.Level.Boundaries.xMax - upperRightCameraInWorld.x, 0.0f);
        clampOffset.y = Mathf.Min((GameManager.Level.Boundaries.yMax - upperRightCameraInWorld.y), 0.0f);

        // Now we apply our clamping to our goalPosition.  Now our camera won't go past the right and top boundaries of the level!
        goalPosition += clampOffset;

        // Now we do basically the same thing, except clamp to the lower left of the level.  This will override any previous clamping
        // if the level is really small.  That way you'll for sure never see past the lower-left of the level, but if the camera is
        // zoomed out too far for the level size, you will see past the right or top of the level.

        transform.position = goalPosition;
        Vector3 lowerLeftCameraInWorld = GetComponent<Camera>().ViewportToWorldPoint(new Vector3(0.0f, 0.0f, targetViewportPosition.z));

        // Find out how far outside the world the camera is right now.
        clampOffset.x = Mathf.Max((GameManager.Level.Boundaries.xMin - lowerLeftCameraInWorld.x), 0.0f);
        clampOffset.y = Mathf.Max((GameManager.Level.Boundaries.yMin - lowerLeftCameraInWorld.y), 0.0f);

        // Now we apply our clamping to our goalPosition once again.  Now our camera won't go past the left and bottom boundaries of the level!
        goalPosition += clampOffset;

        // Now that we're done calling functions on the camera, we can set the position back to the saved position;
        transform.position = cameraPositionSave;


        return goalPosition;

    }

    public bool GetNearestEnemy(out Vector3 nearestEnemy)
    {
        nearestEnemy = Vector3.zero;
        if (CinematicOverride) {
            return false;
        }

        Vector3 playerPos = GameManager.Player.transform.position;

        foreach (EnemyAI enemy in GameManager.AI.Enemies) {
            if (enemy == null || enemy.CharAnimator == null || enemy.CharAnimator.IsDead) {
                continue;
            }

            bool isCamera = (enemy.CharAnimator.EnemyType == EnemySaveState.EnemyType.Enemy_CameraSpotter);
            bool isChasing = (enemy.Awareness.Level == EnemyAwareness.AwarenessLevel.Chasing);
            float enemyDistance = Vector3.Distance(enemy.transform.position, playerPos);

            // HACK: THIS CHECK ALLOWS BABYBOT TO NOT HEAR THE SIGHT PUZZLE IN THE SEWER TUTORIAL
            if (enemy.PersonalHearingRadius != null && enemy.PersonalHearingRadius.IgnoreAbove && GameManager.Player != null && GameManager.Player.transform.position.y > 70) {
                continue;
            }

            // Track non-cameras who are not chasing, OR cameras who ARE "chasing".
            if ((isCamera || (!isCamera && !isChasing)) && 
                (enemyDistance < EnemyFocus || (enemy.Settings.CanHear && enemy.CouldHearPlayer))) {

                if (nearestEnemy == Vector3.zero) { 
                    nearestEnemy = enemy.transform.position;
                } else if (Vector3.Distance(playerPos, enemy.transform.position) < 
                    Vector3.Distance(playerPos, nearestEnemy)) {
                    nearestEnemy = enemy.transform.position;
                }
            }
        }

        return nearestEnemy != Vector3.zero;
        
    }
    
    public Transform Target {
        get { return _target; }
        set {
            // Remove audiolistener from old target
            if (_target != null && value != null && _target != value) {
                AudioListener listener = _target.GetComponent<AudioListener>();
                if (listener != null) { 
                    Destroy(listener);
                }
            }

            // Update to the new target
            _target = value;

            // And set it up
            if (_target != null) {
                _cameraTargetAttributes = _target.GetComponent<CameraTargetAttributes>();
                _targetAnimator = _target.GetComponent<CharacterAnimator>();
                _targetRigidbody = _target.GetComponent<Rigidbody>();

                if (_target.GetComponent<AudioListener>() == null) {
                    _target.gameObject.AddComponent<AudioListener>();
                }
            }
        }
    }

    public CameraTargetAttributes TargetAttributes {
        get { return _cameraTargetAttributes; }
    }

    public CharacterAnimator TargetAnimator {
        get { return _targetAnimator; }
    }

    public Rigidbody TargetRigidbody {
        get { return _targetRigidbody; }
    }

    public bool EnemyFocused {
        get { return _enemyFocused; }
    }

    public bool CinematicOverride {
        get { return _cinematicOverride; }
        set { _cinematicOverride = value; }
    }

}
