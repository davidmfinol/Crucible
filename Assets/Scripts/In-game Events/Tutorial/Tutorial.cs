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
	public Transform PipeSign;

	// Scripted characters in the scene
	public GameObject MysteriousRunner;
	public Transform OlympusPosition;
	public Transform OlympusPrefab;
	public Transform SewerDoor;
	public Transform NextLevel;

	// save runner component to call script coroutines directly
	private MysteriousRunner _runner;
	
	private bool _sewerDoorOpen;


	void Start ()
	{
		_sewerDoorOpen = false;
		_runner = MysteriousRunner.GetComponent<MysteriousRunner> ();

	}

	void Update()
	{
		// FIXME: SLOW
		if(GameManager.AI.Enemies.Count > 0)
		{
			bool tutorialComplete = GameManager.AI.Enemies[0].GetComponent<CharacterAnimator>().IsDead(); // FIXME: VERY SLOW
			NextLevel.gameObject.SetActive(tutorialComplete);
			GameManager.SaveData.TutorialComplete = tutorialComplete;
		}
	}

	public void ShowWallJump1()
	{
		if(!GameManager.SaveData.ShownWallJump1) {
			GameManager.SaveData.ShownWallJump1 = true;

			MysteriousRunner.gameObject.SetActive(true);
			_runner.StartCoroutine ("ShowWallJump1");

		}

	}
	
	public void ShowWallJump2()
	{
		if(!GameManager.SaveData.ShownWallJump2) {
			GameManager.SaveData.ShownWallJump2 = true;

			MysteriousRunner.gameObject.SetActive(true);
			_runner.StartCoroutine ("ShowWallJump2");
				
		}

	}

	
	public void ShowDoorSneak()
	{
		if(!GameManager.SaveData.ShownDoorSneak) {
			GameManager.SaveData.ShownDoorSneak = true;

			MysteriousRunner.gameObject.SetActive(true);
			_runner.StartCoroutine ("ShowDoorSneak");
			
		}
		
	}

	public void StartOperatingDoor() {
		StartCoroutine("OperateDoor");

	}
	
	public void ReachTop()
	{
		if(!GameManager.SaveData.SewerTopReached) {
			GameManager.SaveData.SewerTopReached = true;

			// close the door behind us
			StopCoroutine ("OperateDoor");
			SewerDoor.animation.Play ("Close");

			StartCoroutine ("SpawnOlympus");

		}

	}

	public IEnumerator SpawnOlympus()
	{
		GameManager.UI.DisableInput ();

		Camera.main.GetComponent<CameraScrolling> ().Target = OlympusPosition.transform;
		yield return new WaitForSeconds (2.0f);

		// spawn olympus up high and have him fall.
		Transform newOlympus = (Transform) Instantiate (OlympusPrefab, OlympusPosition.position, Quaternion.identity);
		newOlympus.GetComponent<EnemyAI>().ShouldWander = false;
		newOlympus.GetComponent<CharacterAnimator>().Direction = new Vector3(-1.0f, 0.0f, 0.0f);

		// drops 2 items.
		newOlympus.GetComponent<ItemDropper> ().AddItem (Item.ItemType.Item_ComputerParts);

		Camera.main.GetComponent<CameraScrolling> ().Target = null;
		yield return new WaitForSeconds (2.0f);

		Camera.main.GetComponent<CameraScrolling> ().Target = GameManager.Player.transform;
		GameManager.UI.EnableInput ();

		StopCoroutine ("SpawnOlympus");

	}

	
    public IEnumerator OperateDoor()
    {
        while (true)
        {
            if(_sewerDoorOpen && Mathf.Abs(GameManager.Player.CharInput.Horizontal) > 0.5)
            {
                SewerDoor.animation.Play("Close");
                _sewerDoorOpen = false;
                yield return new WaitForSeconds(0.5f);
            }
            else if (!_sewerDoorOpen && Mathf.Abs(GameManager.Player.CharInput.Horizontal) < 0.5)
            {
                SewerDoor.animation.Play("Open");
                _sewerDoorOpen = true;
                yield return new WaitForSeconds(0.5f);
            }
            yield return null; // FIXME: SLOW
        }

    }
}
