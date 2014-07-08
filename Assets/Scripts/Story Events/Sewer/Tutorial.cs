using UnityEngine;
using System.Collections;

/// <summary>
/// Tutorial sets up all the events and prefabs that teaches the player to play the game.
/// </summary>
[AddComponentMenu("Story Events/Sewer/Tutorial")]
public class Tutorial : MonoBehaviour
{
    // The prompts that the player sees on-screen
    public Transform LeftHandVignette;
    public Transform LeftThumbPrint;
    public Transform RightHandVignette;
    public Transform RightThumbPrint;

    // Scripted characters in the scene
    public MysteriousRunner Runner;
    public GameObject SewerDoor;
	public GameObject SpinningFan;
	public GameObject Jasper;
	public GameObject ToFadeFront;

    // The locations where certain effects will happen
    public Transform SneakStartPosition;
	public Transform SightPuzzlePosition;
	public Transform RunnerPositionOlympusSpawn;
    public Transform Olympus1Position;
	public Transform OlympusPrefab;
	public Transform AIBarrier;
    //public Transform Olympus2Position;

	public TutorialAudioPlayer FanSounds;
    public TutorialAudioPlayer DoorSounds;

	private bool _stopFanStopping;
    private bool _sewerDoorOpen;

    void Start ()
    {
		SewerDoor.animation.Play ("Close");

		SpinningFan.animation.Play ("SpinningLoop");
		StartCoroutine (KeepFanSpinning ());
        StartCoroutine (KeepShieldActive());

    }

	public void ShowIntroCutscene()
	{
        if(!GameManager.SaveData.HasShownIntroCutscene) {
            GameManager.SaveData.HasShownIntroCutscene = true;
			StartCoroutine(PlayIntroCutscene());
        }

	}

	public IEnumerator PlayIntroCutscene()
	{
        // Switch the camera animation
        GameManager.IsPlayingCutscene = true;
        GameManager.MainCamera.CinematicOverride = true;
		GameManager.MainCamera.enabled = false;
		Animator cameraAnim = GameManager.MainCamera.GetComponent<Animator> ();
		cameraAnim.enabled = true;
		cameraAnim.SetBool (Animator.StringToHash("IntroMoveIn"), true);

		// Other world effects
		Animator JasperAnim = Jasper.GetComponent<Animator> ();
		JasperAnim.SetBool (Animator.StringToHash("IntroMoveIn"), true);
		Fader[] faders = ToFadeFront.GetComponentsInChildren<Fader> ();
		foreach (Fader fader in faders)
			fader.FadeIn();

		// Make the player fall down
		GameManager.Player.MecanimAnimator.SetBool (MecanimHashes.Die, true);

		yield return new WaitForSeconds (7);

		// Some house-keeping for the animators
		cameraAnim.SetBool (Animator.StringToHash("IntroMoveIn"), false);
		JasperAnim.SetBool (Animator.StringToHash("IntroMoveIn"), false);

		yield return new WaitForSeconds (3);

		// Re-enable the camera
		cameraAnim.enabled = false;
        GameManager.MainCamera.enabled = true;

        // The cut-scene is complete, move on to the first tutorial event
		StartCoroutine (ShowTwoHands ());

	}

    public IEnumerator ShowTwoHands ()
    {
        // Create the pieces we're showing
        Transform leftHandVignette = (Transform)Instantiate (LeftHandVignette, LeftHandVignette.position, LeftHandVignette.rotation);
        AlphaPulse leftPulse = leftHandVignette.GetComponent<AlphaPulse> ();
        if (leftPulse == null)
            leftPulse = leftHandVignette.gameObject.AddComponent<AlphaPulse> ();
        Transform rightHandVignette = (Transform)Instantiate (RightHandVignette, RightHandVignette.position, RightHandVignette.rotation);
        AlphaPulse rightPulse = rightHandVignette.GetComponent<AlphaPulse> ();
        if (rightPulse == null)
            rightPulse = rightHandVignette.gameObject.AddComponent<AlphaPulse> ();
        Transform leftThumb = (Transform)Instantiate (LeftThumbPrint, LeftThumbPrint.position, LeftThumbPrint.rotation);
        Transform rightThumb = (Transform)Instantiate (RightThumbPrint, RightThumbPrint.position, RightThumbPrint.rotation);

		// We only need to force 2 hands on the mobile devices
		bool hasUsed2Hands = false;
#if UNITY_EDITOR || UNITY_STANDALONE || UNITY_WEBPLAYER
		hasUsed2Hands = true;
#endif

        // Wait until they finally have used both hands to move on
        bool leftSideTouched = false;
        bool rightSideTouched = false;
		while (!hasUsed2Hands) {

            leftSideTouched = false;
            rightSideTouched = false;

            foreach(Touch touch in Input.touches) {
                if(touch.position.x < Screen.width / 2)
                    leftSideTouched = true;
                if(touch.position.x > Screen.width / 2)
                    rightSideTouched = true;
            }

            leftPulse.On = !leftSideTouched;
            leftThumb.renderer.enabled = !leftSideTouched;
            rightPulse.On = !rightSideTouched;
            rightThumb.renderer.enabled = !rightSideTouched;

            if(leftSideTouched && rightSideTouched)
				hasUsed2Hands = true;
            
            yield return null;

        }

        // Remove the shown pieces
        Destroy (leftHandVignette.gameObject);
        Destroy (leftThumb.gameObject);
        Destroy (rightHandVignette.gameObject);
        Destroy (rightThumb.gameObject);
        
        // Make the player get up
        GameManager.Player.MecanimAnimator.SetBool (MecanimHashes.StandingUp, true);
        yield return new WaitForSeconds(1.0f);

        // Let them move again
        GameManager.MainCamera.CinematicOverride = false;
        GameManager.IsPlayingCutscene = false;

    }

    public void ShowWallJump ()
    {
        if (!GameManager.SaveData.HasShownWallJump) {
            GameManager.SaveData.HasShownWallJump = true;

            Runner.gameObject.SetActive (true);
            Runner.StartCoroutine (Runner.ShowWallJump ());

        }

    }

    public void ShowSneak ()
    {
        if (!GameManager.SaveData.HasShownSneak) {
            GameManager.SaveData.HasShownSneak = true;
            
            Runner.gameObject.SetActive (true);
            Runner.StartCoroutine (Runner.ShowSneak (SneakStartPosition.position));
            
        }

    }

	public void ShowSightPuzzle ()
    {
        // HACK: MAKE THE BABYBOT IGNORE NOW
        EnemyAI babyBot = null;
        foreach(EnemyAI ai in GameManager.AI.Enemies)
            if(ai.Animator.EnemyType == EnemySaveState.EnemyType.Enemy_BabyBot)
                babyBot = ai;
        babyBot.PersonalHearingRadius.IgnoreAbove = true;
        ((BabyBotAnimator)(babyBot.Animator)).Sound.MaxDistance = 5;

		if (!GameManager.SaveData.HasShownSightPuzzle){
            GameManager.SaveData.HasShownSightPuzzle = true;

			SewerDoor.animation.Play("Open");
			StartCoroutine("OperateDoor");
        }

	}

	public void ShowSpawnOlympus ()
	{
		if (!GameManager.SaveData.HasShownOlympusSpawn){
			GameManager.SaveData.HasShownOlympusSpawn = true;

			Runner.gameObject.SetActive (true);
			Runner.StartCoroutine (Runner.ShowOlympusSpawn (RunnerPositionOlympusSpawn.position));

			StartCoroutine(SpawnOlympus());
			GameManager.IsPlayingCutscene = true;
		}
	}

    public void BeforeCamera ()
    {
        SewerDoor.animation.Play ("Open");
        _sewerDoorOpen = true;
    
    }

    public IEnumerator OperateDoor ()
    {
        while (true) {
            // see player & open? close.
            if ((GameManager.AI.EnemiesChasing > 0) && _sewerDoorOpen) {
                SewerDoor.animation.Play ("Close");
                DoorSounds.Play (DoorSounds.DoorSlam, 1.0f);
                _sewerDoorOpen = false;

                // no longer see player & closed? open.
            } else if ((GameManager.AI.EnemiesChasing == 0) && !_sewerDoorOpen) {
                SewerDoor.animation.Play ("Open");
                DoorSounds.Play (DoorSounds.DoorOpen, 1.0f);
                _sewerDoorOpen = true;

            }
                
            yield return new WaitForSeconds (0.25f);
            
        }
        
    }

	public IEnumerator SpawnOlympus ()
	{
		while(Runner.WalkedUnderneath == false)
			yield return null;
		GameManager.MainCamera.Target = Olympus1Position.transform;
		yield return new WaitForSeconds (0.5f);
		
		// spawn olympus up high and have him fall.
		Transform newOlympus = (Transform)Instantiate (OlympusPrefab, Olympus1Position.position, Quaternion.identity);
		GameManager.MainCamera.Target = newOlympus;
		newOlympus.GetComponent<EnemyAISettings> ().ShouldWander = false;
		newOlympus.GetComponent<CharacterAnimator> ().Direction = new Vector3 (-1.0f, 0.0f, 0.0f);
		EnemyAI enemyAI = newOlympus.GetComponent<EnemyAI>();
  		// drops 2 items.
		newOlympus.GetComponent<ItemDropper> ().AddItem (Item.ItemType.Item_ComputerParts);

        // Olympus gives chase to the mysterious runner for a bit
		yield return new WaitForSeconds(2.3f);

        // THESE MUST BE DONE HERE, SO THAT THE START METHOD CANNOT OVERWRITE THEM.
        enemyAI.GetComponent<CharacterInput>().UpdateInputMethod = null;
        enemyAI.GetComponent<EnemyAISettings>().ShouldWander = false;
        enemyAI.GetComponent<EnemyAISettings>().CanSee = false;                        
        enemyAI.GetComponent<EnemyAISettings>().CanHear = false;

		CharacterInput input = newOlympus.GetComponent<CharacterInput> ();
		input.Horizontal = -0.7f;
		yield return new WaitForSeconds(0.90f);
		input.Horizontal = 0.0f;
		input.Attack = 1.0f;
		yield return new WaitForSeconds(2.0f);

		StartCoroutine(ForcePunch(input));

        enemyAI.GetComponent<CharacterInput>().UpdateInputMethod = enemyAI.UpdateInput;
        enemyAI.GetComponent<EnemyAISettings>().CanSee = true;                        
        enemyAI.GetComponent<EnemyAISettings>().CanHear = true;
        	
	}

	public IEnumerator ForcePunch (CharacterInput input)
	{
		while(true)
		{
			yield return new WaitForSeconds(0.5f);
			// if he's dead or after you, stop punching randomly.
            if((input) == null || Mathf.Abs (input.Horizontal) > 0.1f)
                break;
			input.Attack = 1.0f;
		}
	}

	public IEnumerator KeepShieldActive() {
        yield return null;

		while(true) {
            // if there are no olympuses near the holoshield, destroy it.

            yield return new WaitForSeconds(0.25f);

            // *** find the shield ***
            Item shield = null;
            
            // if found shield, remove it and stop.
            foreach(Item item in GameManager.Level.Items) {
                if(item.name.Contains ("HoloShield")) {
                    shield = item;
                    
                }
                
            }

            // no more olympuses alive, destroy
            if(GameManager.AI.OlympusesAlive == 0) {
           
                if(shield != null) {
                    Destroy (shield.gameObject);

                }

            } else {
                if(shield != null) {
                    // make any Olympuses not wander who are near the shield.
                    foreach(EnemyAI ai in GameManager.AI.Enemies) {
                       if((ai is OlympusAI) && (Vector3.Distance(shield.transform.position, ai.transform.position) < 40.0f) ) {
                            ai.Settings.ShouldWander = false;
                            ai.Settings.CanSee = true;                        
                            ai.Settings.CanHear = true;
                            ai.Settings.VisionMemory = 999.9f;

                        }
                       
                    }

                }

            }

		}

	}

	public IEnumerator KeepFanSpinning ()
	{
		FanSounds.PlayLoop(FanSounds.FanSpinning, 1.0f);

		while(true)
		{
			
			yield return new WaitForSeconds(0.5f);

			bool sparkPlugFound = false;

			// spark plug still in the level?
			foreach( Item item in GameManager.Level.Items) {
				if( item.WeaponPrefab.GetComponent<SparkPlug>() != null) {
					sparkPlugFound = true;
					break;

				}

			}

			// all spark plugs removed from level?
			// make the fan non-lethal and enter a separate wind-down loop
			if( !sparkPlugFound ) {
				Destroy(SpinningFan.GetComponentInChildren<DeathTrigger>());
				if(!_stopFanStopping)
				{
					_stopFanStopping = true;
					FanSounds.Play(FanSounds.FanStopping, 1.0f);
				}
				break;

			}

        }
        
        // close the door behind you
        StopCoroutine("OperateDoor");
        SewerDoor.animation.Play("Close");


		// power down.
		while(SpinningFan.animation["SpinningLoop"].speed > 0.1f) {
			SpinningFan.animation["SpinningLoop"].speed -= (0.5f * Time.deltaTime);

			yield return null;

		}

		SpinningFan.animation.Stop ();
	
	}

}
