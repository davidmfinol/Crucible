using UnityEngine;
using System.Collections;

/// <summary>
/// Camera target attributes defines how the CameraScrolling script follows its target.
/// Attach this script to a game object that you want CameraScrolling to be able to follow.
/// This entire script may end up being replaced.
/// </summary>
[AddComponentMenu("Camera/Camera Target Attributes")]
public class CameraTargetAttributes : MonoBehaviour
{
    // How high in world space should the camera look above the target?
    public float HeightOffset = 0.0f;

    // How much time in the future should the camera look ahead of this target?
    // This value will be multiplied by this target's velocity to find the look ahead distance
    public float VelocityLookAheadX = 0.5f;
    public float VelocityLookAheadY = 0.15f;

    // What's the maximum distance we should let the camera look ahead?
    public Vector2 MaxLookAhead = new Vector2 (10.0f, 5.0f);

    // Allow for dynamic zoom based off speed of the character
    public float ZoomOffset = 1.5f;
    public float MaxZoomIn = 0.9f;
    public float MaxZoomOut = 2.1f;
    public float ZoomInAcceleration = 0.5f;// How fast does the camera zoom in?
    public float ZoomOutAcceleration = 1.0f;// How fast does the camera zoom out?
    public float ZoomOutDelay = 2.0f; // How much time passes before we start zooming out?
    public float DeathZoom = 0.75f;  // How close to zoom on player death

    // How much should we zoom the camera based on this target?
    private float _distanceModifier = 1.0f;

    // How long the character has been staying still?
    private float _timeStationary;

    // Keep track of the character we are following
    private CharacterAnimator _character;
    private CharacterSettings _settings;

    void Start ()
    {
        _character = GetComponent<CharacterAnimator>();
        _settings = GetComponent<CharacterSettings> ();
        _timeStationary = 0;

    }

    // We handle the camera moving in on the character here
    void Update ()
    {
        if (_character == null || _settings == null)
            return;

        if (Mathf.Abs (_character.HorizontalSpeed) > 0.1) {
            _timeStationary = 0;
            float desired = ZoomOffset - (Mathf.Abs (_character.Velocity.x) / _settings.MaxHorizontalSpeed);
            if (desired < MaxZoomIn)
                desired = MaxZoomIn;
            else if (desired > 1)
                desired = MaxZoomOut;

            _distanceModifier = Mathf.Lerp (_distanceModifier, desired, ZoomInAcceleration * Time.deltaTime);
        } else {
            // Pause for zoom out delay, then zoom out at zoomoutacceleration
            _timeStationary += Time.deltaTime;
            if (_timeStationary > ZoomOutDelay) //TODO: add a check based on the enemy being focused && !CameraScrolling.EnemyFocused)
                _distanceModifier = Mathf.Lerp (_distanceModifier, MaxZoomOut, ZoomOutAcceleration * Time.deltaTime);
        }

    }

    public float DistanceModifier {
        get { return _distanceModifier; }
    }
}
