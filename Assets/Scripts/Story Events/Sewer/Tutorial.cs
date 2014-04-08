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
    public Transform OlympusPosition;
    public Transform OlympusPrefab;
    public Transform SewerDoor;
    public Transform SewerCamera;
    public Transform NextLevel;
	public Transform SneakAttackInstruction;

    // save runner component to call script coroutines directly
    private MysteriousRunner _runner;
    private TutorialAudioPlayer _sewerSounds;
    private AudioPlayer _doorSounds;
    private AudioPlayer _cameraSounds;
    private bool _sewerDoorOpen;

    void Start ()
    {
        _sewerDoorOpen = false;
        _sewerSounds = GetComponentInChildren<TutorialAudioPlayer> ();
        _runner = MysteriousRunner.GetComponent<MysteriousRunner> ();
        _doorSounds = SewerDoor.GetComponent<AudioPlayer> ();
        _cameraSounds = SewerCamera.GetComponent<AudioPlayer> ();
		SneakAttackInstruction.gameObject.SetActive(false);
    }

    void Update ()
    {
        if (GameManager.AI.Enemies.Count > 0) {
            bool tutorialComplete = GameManager.AI.Enemies [0].GetComponent<CharacterAnimator> ().IsDead;
            NextLevel.gameObject.SetActive (tutorialComplete);
            GameManager.SaveData.TutorialComplete = tutorialComplete;
        }

    }

    public void ShowWallJump1 ()
    {
        if (!GameManager.SaveData.ShownWallJump1) {
            GameManager.SaveData.ShownWallJump1 = true;

            MysteriousRunner.gameObject.SetActive (true);
            _runner.StartCoroutine (_runner.ShowWallJump1());

        }

    }
    
    public void ShowWallJump2 ()
    {
        if (!GameManager.SaveData.ShownWallJump2) {
            GameManager.SaveData.ShownWallJump2 = true;

            MysteriousRunner.gameObject.SetActive (true);
            _runner.StartCoroutine (_runner.ShowWallJump2());
                
        }

    }
    
    public void ShowDoorSneak ()
    {
        if (!GameManager.SaveData.ShownDoorSneak) {
            GameManager.SaveData.ShownDoorSneak = true;

            MysteriousRunner.gameObject.SetActive (true);
            _runner.StartCoroutine (_runner.ShowDoorSneak());
            
        }
        
    }

    public void ShowStealthKill ()
    {
        if (!GameManager.SaveData.ShownStealthKillPrompt) {
            if (GameManager.AI.EnemiesChasing == 0 && GameManager.AI.EnemiesSearching == 0 &&
                GameManager.Player.IsGrounded) {

                GameManager.SaveData.ShownStealthKillPrompt = true;

                // TODO: stealth kill prompt by spawning a new coroutine which
                // waits for the swipe left input.
                StartCoroutine (WaitForAttack());

            }

        }

    }

    public IEnumerator WaitForAttack ()
    {
		GameManager.IsPlayingCutscene = true;
		GameManager.UI.DisableInput ();
		SneakAttackInstruction.gameObject.SetActive(true);
		Time.timeScale = 0.50f;
		Camera.main.GetComponent<CameraScrolling> ().CinematicOverride = true;

        // TODO
        while (true) {
			if(Input.GetAxis ("Attack") < 0 || GameManager.Player.CharInput.Attack < 0) {
				GameManager.UI.EnableInput();
				break;

			}

            yield return null;
        }
		SneakAttackInstruction.gameObject.SetActive(false);
		yield return new WaitForSeconds (2.0f);
		Time.timeScale = 1.0f;
		Camera.main.GetComponent<CameraScrolling> ().CinematicOverride = false;
		GameManager.IsPlayingCutscene = false;

    }

    public void StartOperatingDoor ()
    {
        StartCoroutine ("OperateDoor");

    }
    
    public void ReachTop ()
    {
        if (!GameManager.SaveData.SewerTopReached) {
            GameManager.SaveData.SewerTopReached = true;

            // close the door behind us
            StopCoroutine ("OperateDoor");
            SewerDoor.animation.Play ("Close");

            StartCoroutine (SpawnOlympus());

        }

    }

    public IEnumerator SpawnOlympus ()
    {
		GameManager.IsPlayingCutscene = true;
        GameManager.UI.DisableInput ();

        Camera.main.GetComponent<CameraScrolling> ().Target = OlympusPosition.transform;
        yield return new WaitForSeconds (2.0f);

        // spawn olympus up high and have him fall.
        Transform newOlympus = (Transform)Instantiate (OlympusPrefab, OlympusPosition.position, Quaternion.identity);
        newOlympus.GetComponent<EnemyAISettings> ().ShouldWander = false;
        newOlympus.GetComponent<CharacterAnimator> ().Direction = new Vector3 (-1.0f, 0.0f, 0.0f);

        // drops 2 items.
        newOlympus.GetComponent<ItemDropper> ().AddItem (Item.ItemType.Item_ComputerParts);

        Camera.main.GetComponent<CameraScrolling> ().Target = null;
        yield return new WaitForSeconds (2.0f);

        Camera.main.GetComponent<CameraScrolling> ().Target = GameManager.Player.transform;
        GameManager.UI.EnableInput ();
		GameManager.IsPlayingCutscene = false;

    }
    
    public IEnumerator OperateDoor ()
    {
		// distance at which door senses running and closes.
		// also the distance a sensed player must reach before the door opens again.
		float sensorDistance = 10.0f;

		//SewerDoor.animation["Open"].speed = 1.0f;
		//SewerDoor.animation["Close"].speed = 1.0f;

		GameObject light1 = GameObject.Find ("polySurface177 6");
		ColorPulse light1Pulse = light1.AddComponent<ColorPulse> ();
		light1Pulse.MinColor = new Color (0.0f, 0.0f, 0.0f, 1.0f);
		light1Pulse.MaxColor = new Color (1.0f, 0.0f, 0.0f, 1.0f);
		light1Pulse.Speed = 5.0f;
		light1Pulse.On = false;

		GameObject light2 = GameObject.Find ("polySurface177 7");
		ColorPulse light2Pulse = light2.AddComponent<ColorPulse> ();
		light2Pulse.MinColor = new Color (0.0f, 0.0f, 0.0f, 1.0f);
		light2Pulse.MaxColor = new Color (1.0f, 0.0f, 0.0f, 1.0f);
		light2Pulse.Speed = 5.0f;
		light2Pulse.On = false;

		GameObject light3 = GameObject.Find ("polySurface177 8");
		ColorPulse light3Pulse = light3.AddComponent<ColorPulse> ();
		light3Pulse.MinColor = new Color (0.0f, 0.0f, 0.0f, 1.0f);
		light3Pulse.MaxColor = new Color (1.0f, 0.0f, 0.0f, 1.0f);
		light3Pulse.Speed = 5.0f;
		light3Pulse.On = false;

		while(true) {
			float distanceToPlayer = Mathf.Abs (GameManager.Player.transform.position.x - SewerDoor.transform.position.x);

			if(_sewerDoorOpen) {
				// player in sensor range of an open door, and running?
				if( (distanceToPlayer <= sensorDistance) &&
				    !GameManager.Player.IsSneaking)  {
					
					SewerDoor.animation.Play ("Close");
					_sewerDoorOpen = false;
					_doorSounds.Play (_sewerSounds.DoorSlam, 0.5f);
					_cameraSounds.Play (_sewerSounds.CameraBeep, 0.3f);

					// start flashing the lights.
					light1Pulse.On = true;
					light2Pulse.On = true;
					light3Pulse.On = true;
			//		SewerCamera.animation.enabled = true;

				}

				// if sewer door closed,
			} else {
				// and player is outside of the sensor range, open it.
				if(distanceToPlayer > sensorDistance) {
					SewerDoor.animation.Play ("Open");
					_sewerDoorOpen = true;
					_doorSounds.Play (_sewerSounds.DoorOpen, 0.7f);
				
					light1Pulse.On = false;
					light2Pulse.On = false;
					light3Pulse.On = false;
				//	SewerCamera.animation.enabled = false;

				}
				
			}

			yield return new WaitForSeconds (0.5f);
			
		}

	}

}
