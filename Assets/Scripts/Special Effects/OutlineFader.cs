using UnityEngine;
using System.Collections;

/// <summary>
/// Outline fader makes an object's outline fade in and out based off distance to the player.
/// NOTE: MUST USE OUTLINED/INTERACTIVE SHADER.
/// </summary>
[AddComponentMenu("Special Effects/Outline Fader")]
public class OutlineFader : MonoBehaviour
{
	void Update()
	{
		// The outline shader expects the _PlayerPos.w to indicate whether or not the object should be able to light up
		Vector4 playerPos = GameManager.Player.transform.position;
		playerPos.w =  1;
		renderer.material.SetVector ("_PlayerPos", playerPos);

	}

}
