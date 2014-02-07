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

    // How much should we zoom the camera based on this target?
    public float DistanceModifier = 1.0f;

    // How much time in the future should the camera look ahead of this target?
    // This value will be multiplied by this target's velocity to find the look ahead distance
    public float VelocityLookAhead = 0.15f;

    // What's the maximum distance we should let the camera look ahead?
    public Vector2 MaxLookAhead = new Vector2(3.0f, 3.0f);

	// How fast does the camera zoom in?
	public float DistanceLerp = 0.005f;

	private float _origDistanceModifier;

	private PlayerCharacterAnimator _player;

	void Start()
	{
		_origDistanceModifier = DistanceModifier;
		_player = GameManager.Player.GetComponent<PlayerCharacterAnimator> ();
	}

    // We handle the camera moving in on the player here
    void Update()
    {
		if (_player == null)
			return;

		float desired = _origDistanceModifier * (1.5f - (Mathf.Abs(_player.HorizontalSpeed) / _player.Settings.MaxHorizontalSpeed));
		DistanceModifier = Mathf.Lerp (DistanceModifier, desired, DistanceLerp);
    }

}
