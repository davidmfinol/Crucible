using UnityEngine;
using System.Collections;

/// <summary>
/// Tutorial sets up all the events and prefabs that teaches the player to play the game.
/// </summary>
[AddComponentMenu("Story Events/Sewer/Tutorial Main")]
public class Tutorial : MonoBehaviour
{
    // Scripted characters in the scene
    public GameObject MysteriousRunner;
    public Transform SewerDoor;
    //public Transform OlympusPosition;

    // save runner component to call script coroutines directly
    private MysteriousRunner _runner;
	private bool _sewerDoorOpen;

    //private TutorialAudioPlayer _sewerSounds;
    //private AudioPlayer _doorSounds;
   
    void Start ()
    {
        _runner = MysteriousRunner.GetComponent<MysteriousRunner> ();

        //_sewerSounds = GetComponentInChildren<TutorialAudioPlayer> ();
        //_doorSounds = SewerDoor.GetComponent<AudioPlayer> ();

		StartCoroutine ("OperateDoor");

    }

    public void ShowWallJump1 ()
    {
        if (!GameManager.SaveData.ShownWallJump1) {
            GameManager.SaveData.ShownWallJump1 = true;

            MysteriousRunner.gameObject.SetActive (true);
            _runner.StartCoroutine (_runner.ShowWallJump1());

        }

    }

	public void ShowSneak() {
		if (!GameManager.SaveData.ShownSneak) {
			GameManager.SaveData.ShownSneak = true;
			
			MysteriousRunner.gameObject.SetActive (true);
			_runner.StartCoroutine (_runner.ShowSneak());
			
		}

	}

	public void BeforeCamera() {
		SewerDoor.animation.Play ("Open");
		_sewerDoorOpen = true;
	
	}
    
//    public void ShowWallJump2 ()
//    {
//        if (!GameManager.SaveData.ShownWallJump2) {
//            GameManager.SaveData.ShownWallJump2 = true;
//
//            MysteriousRunner.gameObject.SetActive (true);
//            _runner.StartCoroutine (_runner.ShowWallJump2());
//                
//        }
//
//    }
    
//    public void ShowDoorSneak ()
//    {
//        if (!GameManager.SaveData.ShownDoorSneak) {
//            GameManager.SaveData.ShownDoorSneak = true;
//
//            MysteriousRunner.gameObject.SetActive (true);
//            _runner.StartCoroutine (_runner.ShowDoorSneak());
//            
//        }
//        
//    }

//    public void ShowStealthKill ()
//    {
//        if (!GameManager.SaveData.ShownStealthKillPrompt) {
//            if (GameManager.AI.EnemiesChasing == 0 && GameManager.AI.EnemiesSearching == 0 &&
//                GameManager.Player.IsGrounded) {
//
//                GameManager.SaveData.ShownStealthKillPrompt = true;
//
//                // TODO: stealth kill prompt by spawning a new coroutine which
//                // waits for the swipe left input.
//                StartCoroutine (WaitForAttack());
//
//            }
//
//        }
//
//    }

//    public IEnumerator WaitForAttack ()
//    {
//		GameManager.IsPlayingCutscene = true;
//		GameManager.UI.DisableInput ("Attack");
//		SneakAttackInstruction.gameObject.SetActive(true);
//		Time.timeScale = 0.50f;
//		Camera.main.GetComponent<CameraScrolling> ().CinematicOverride = true;
//
//        // TODO
//        while (true) {
//			if(Input.GetAxis ("Attack") < 0 || GameManager.Player.CharInput.Attack < 0) {
//				GameManager.UI.EnableInput();
//				break;
//
//			}
//
//            yield return null;
//        }
//		SneakAttackInstruction.gameObject.SetActive(false);
//		yield return new WaitForSeconds (2.0f);
//		Time.timeScale = 1.0f;
//		Camera.main.GetComponent<CameraScrolling> ().CinematicOverride = false;
//		GameManager.IsPlayingCutscene = false;
//
//    }
//
//    public void StartOperatingDoor ()
//    {
//        StartCoroutine ("OperateDoor");
//
//    }
//    
//    public void ReachTop ()
//    {
//        if (!GameManager.SaveData.SewerTopReached) {
//            GameManager.SaveData.SewerTopReached = true;
//
//            // close the door behind us
//            StopCoroutine ("OperateDoor");
//            SewerDoor.animation.Play ("Close");
//
//            StartCoroutine (SpawnOlympus());
//
//        }
//
//    }
//
//    public IEnumerator SpawnOlympus ()
//    {
//		GameManager.IsPlayingCutscene = true;
//        GameManager.UI.DisableInput ("");
//
//        Camera.main.GetComponent<CameraScrolling> ().Target = OlympusPosition.transform;
//        yield return new WaitForSeconds (2.0f);
//
//        // spawn olympus up high and have him fall.
//        Transform newOlympus = (Transform)Instantiate (OlympusPrefab, OlympusPosition.position, Quaternion.identity);
//        newOlympus.GetComponent<EnemyAISettings> ().ShouldWander = false;
//        newOlympus.GetComponent<CharacterAnimator> ().Direction = new Vector3 (-1.0f, 0.0f, 0.0f);
//
//        // drops 2 items.
//        newOlympus.GetComponent<ItemDropper> ().AddItem (Item.ItemType.Item_ComputerParts);
//
//        Camera.main.GetComponent<CameraScrolling> ().Target = null;
//        yield return new WaitForSeconds (2.0f);
//
//        Camera.main.GetComponent<CameraScrolling> ().Target = GameManager.Player.transform;
//        GameManager.UI.EnableInput ();
//		GameManager.IsPlayingCutscene = false;
//
//    }
//    
    public IEnumerator OperateDoor ()
    {
		while(true) {
			// see player & open? close.
			if((GameManager.AI.EnemiesChasing > 0) && _sewerDoorOpen) {
				Debug.Log ("Closing door.");

				SewerDoor.animation.Play("Close");
				_sewerDoorOpen = false;

			// no longer see player & closed? open.
			} else if( (GameManager.AI.EnemiesChasing == 0) && !_sewerDoorOpen) {
				Debug.Log ("Opening door.");

				SewerDoor.animation.Play("Open");
				_sewerDoorOpen = true;

			}
				
			yield return new WaitForSeconds (0.25f);
		
		}
				
	}

}
