using UnityEngine;
using System.Collections;

/// <summary>
/// Tutorial sets up all the events and prefabs that teaches the player to play the game.
/// </summary>
[AddComponentMenu("In-game Events/Tutorial/Tutorial Main")]
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
	public Transform SewerDoor;

	private bool reachedTrigger1;


	void Start ()
	{
		reachedTrigger1 = false;
		StartCoroutine("WaitToShowInstructions");
	}

	public void ReachTrigger1()
	{
		reachedTrigger1 = true;
	}
	
	public void ReachTrigger2()
	{
		MysteriousRunner2.gameObject.SetActive(true);
	}
	
	public void ReachTrigger3()
	{
		// TODO
	}
	public void LeftTrigger3()
	{
		// TODO
	}

	public IEnumerator WaitToShowInstructions()
	{
		float elapsedTime = 0;
		while (elapsedTime < 10)
		{
			elapsedTime += Time.deltaTime;
			if(reachedTrigger1)
				StopCoroutine("WaitToShowInstructions");
			yield return null;
		}
		Instantiate (WalkSwipeSign);
		Instantiate (JumpSign);
		StopCoroutine("WaitToShowInstructions");
	}
}
