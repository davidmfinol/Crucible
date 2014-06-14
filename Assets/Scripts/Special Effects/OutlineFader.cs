using UnityEngine;
using System.Collections;

/// <summary>
/// Outline fader makes an object's outline fade in and out based off distance to the player.
/// NOTE: MUST USE OUTLINED/INTERACTIVE SHADER.
/// </summary>
[AddComponentMenu("Special Effects/Outline Fader")]
public class OutlineFader : MonoBehaviour
{
	// Things like ropes and ladders always want to be outlined, even if the player isn't on them
	public bool AlwaysOutline = false;

	void Start()
	{
		Color color = renderer.material.color;
		color.a = 1;
		renderer.material.color = color;

		if(AlwaysOutline) {
			renderer.material.SetVector ("_PlayerPos", Vector3.zero);
			this.enabled = false;
		}

	}

	void Update()
	{
		renderer.material.SetVector ("_PlayerPos", GameManager.Player.transform.position);

	}

}
