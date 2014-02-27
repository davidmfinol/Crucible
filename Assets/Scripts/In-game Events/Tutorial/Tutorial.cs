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

	private bool _reachedTrigger1;
    private bool _sewerDoorOpen;
    private CharacterAnimator _player;


	void Start ()
	{
		_reachedTrigger1 = false;
        _sewerDoorOpen = false;
        _player = GameManager.Player.GetComponent<CharacterAnimator>();
		StartCoroutine("WaitToShowInstructions");
	}

	public void ReachTrigger1()
	{
		_reachedTrigger1 = true;
	}
	
	public void ReachTrigger2()
	{
		MysteriousRunner2.gameObject.SetActive(true);
	}
	
	public void ReachTrigger3()
	{
        Olympus.gameObject.SetActive(true);
        StartCoroutine("OperateDoor");
	}
	public void LeftTrigger3()
    {
        StopCoroutine("OperateDoor");
	}

	public IEnumerator WaitToShowInstructions()
	{
		float elapsedTime = 0;
		while (elapsedTime < 10)
		{
			elapsedTime += Time.deltaTime;
			if(_reachedTrigger1)
				StopCoroutine("WaitToShowInstructions");
			yield return null;
		}
		Instantiate (WalkSwipeSign);
		Instantiate (JumpSign);
		StopCoroutine("WaitToShowInstructions");
	}

    public IEnumerator OperateDoor()
    {
        while (true)
        {
            if(_sewerDoorOpen && Mathf.Abs(_player.CharInput.Horizontal) > 0.5)
            {
                SewerDoor.animation.Play("Close");
                _sewerDoorOpen = false;
                yield return new WaitForSeconds(0.5f);
            }
            else if (!_sewerDoorOpen && Mathf.Abs(_player.CharInput.Horizontal) < 0.5)
            {
                SewerDoor.animation.Play("Open");
                _sewerDoorOpen = true;
                yield return new WaitForSeconds(0.5f);
            }
            yield return null;
        }
    }
}
