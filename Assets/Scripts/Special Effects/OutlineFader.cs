using UnityEngine;
using System.Collections;

/// <summary>
/// Outline fader makes an object's outline fade in and out based off distance to the player.
/// NOTE: MUST USE OUTLINED/INTERACTIVE SHADER.
/// </summary>
public class OutlineFader : MonoBehaviour
{

	void Start()
	{
		Color color = renderer.material.color;
		color.a = 1;
		renderer.material.color = color;

	}

	void Update()
	{
		renderer.material.SetVector ("_PlayerPos", GameManager.Player.transform.position);

	}

}
