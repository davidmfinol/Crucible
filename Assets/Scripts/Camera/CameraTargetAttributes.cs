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
	public float VelocityLookAheadX = 2.0f;
	public float VelocityLookAheadY = 0.15f;

    // What's the maximum distance we should let the camera look ahead?
	public Vector2 MaxLookAhead = new Vector2(3.0f, 3.0f);

	// Allow for dynamic zoon based off speed of the character
	public float ZoomOffset = 1.5f;
	public float MaxZoomIn = 0.75f;
	public float MaxZoomOut = 1.5f;
    public float ZoomInAcceleration = 0.35f;// How fast does the camera zoom in?
    public float ZoomOutAcceleration = 0.5f;// How fast does the camera zoom out? //TODO
    public float ZoomOutDelay = 0.1f; // How much time passes before we start zooming out? //TODO
	private float _distanceModifier = 1.0f;// How much should we zoom the camera based on this target?

	// Keep track of the character we are following
	private CharacterAnimator _character;

	void Start()
	{
		_character = GameManager.Player.GetComponent<CharacterAnimator> ();
	}

    // We handle the camera moving in on the character here
    void Update()
    {
		if (_character == null)
			return;

		float desired = ZoomOffset - (Mathf.Abs(_character.Velocity.x) / _character.Settings.MaxHorizontalSpeed);
		if (desired < MaxZoomIn)
			desired = MaxZoomIn;
		else if (desired > MaxZoomOut)
			desired = MaxZoomOut;

		_distanceModifier = Mathf.Lerp (_distanceModifier, desired, ZoomInAcceleration * Time.deltaTime);
    }


	public float DistanceModifier
	{
		get { return _distanceModifier; }
	}
}
