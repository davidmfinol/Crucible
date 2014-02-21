using UnityEngine;
using System.Collections;

/// <summary>
/// Tutorial sets up all the events and prefabs that teaches the player to play the game.
/// </summary>
[AddComponentMenu("In-game Events/Tutorial")]
public class Tutorial : MonoBehaviour
{
	// Signs that appear on screen, when appropriate
	public Transform ArrowSign;
	public Transform AttackSign;
	public Transform BentArrowSign;
	public Transform JumpSign;
	public Transform WalkSwipeSign;

	// Scripted characters in the scene
	public Transform MysteriousRunner1;
	public Transform MysteriousRunner2;
	public Transform Olympus;


	void Start ()
	{
		
	}

	void Update ()
	{
		
	}
}
