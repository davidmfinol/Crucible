using UnityEngine;
using System.Collections;

/// <summary>
/// Outline fader makes an object's outline fade in and out based off distance to the player.
/// NOTE: MUST USE OUTLINED SHADER.
/// </summary>
public class OutlineFader : MonoBehaviour
{
	// When the player is this distance away from this object, start fading in
	public float FadeDistance = 20.0f;

	private Color _outlineColor;

	void Start()
	{
		renderer.material.color = Color.white;
		_outlineColor = renderer.material.GetColor ("_OutlineColor");

	}

	void Update()
	{
		Vector3 closestPoint = collider.ClosestPointOnBounds (GameManager.Player.transform.position);
		float dist = Vector3.Distance (closestPoint, GameManager.Player.transform.position);
		_outlineColor.a = 1 - (dist / FadeDistance);
		if(_outlineColor.a < 0)
			_outlineColor.a = 0;
		renderer.material.SetColor ("_OutlineColor", _outlineColor);

	}

}
