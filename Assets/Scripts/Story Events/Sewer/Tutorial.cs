using UnityEngine;
using System.Collections;

/// <summary>
/// Tutorial sets up all the events and prefabs that teaches the player to play the game.
/// </summary>
[AddComponentMenu("Story Events/Sewer/Tutorial")]
public class Tutorial : StoryPlug
{
    // The prompts that the player sees on-screen
    public Transform LeftHandVignette;
    public Transform LeftThumbPrint;
    public Transform RightHandVignette;
    public Transform RightThumbPrint;
	
    // Scripted characters in the scene
    public NewmanHologram Hologram;
    public GameObject SewerDoor;
    public GameObject SpinningFan;
    public GameObject Jasper;
    public GameObject ToFadeFront;

    // The locations where certain effects will happen
    public Transform SneakStartPosition;
    public Transform RunnerPositionOlympusSpawn;
    public Transform Olympus1Position;
    public Transform OlympusPrefab;

    // The sewer door and fan sounds
    public TutorialAudioPlayer DoorSounds;
    public TutorialAudioPlayer FanSounds;
    private bool _sewerDoorOpen;
    private bool _fanSpinning;

    void Start()
    {
        SewerDoor.GetComponent<Animation>().Play("Close");
        SpinningFan.GetComponent<Animation>().Play("SpinningLoop");
        StartCoroutine(KeepFanSpinning());

    }

    public void ShowIntroCutscene()
    {
        if (!GameManager.SaveData.HasShownIntroCutscene) {
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
        Animator cameraAnim = GameManager.MainCamera.GetComponent<Animator>();
        cameraAnim.enabled = true;
        cameraAnim.SetBool(Animator.StringToHash("IntroMoveIn"), true);

        // Other world effects
        Animator JasperAnim = Jasper.GetComponent<Animator>();
        JasperAnim.SetBool(Animator.StringToHash("IntroMoveIn"), true);
        Fader[] faders = ToFadeFront.GetComponentsInChildren<Fader>();
        foreach (Fader fader in faders) {
            fader.FadeIn();
        }

        // Make the player fall down
        GameManager.Player.MecanimAnimator.SetBool(MecanimHashes.Die, true);

        yield return new WaitForSeconds(7);

        // Some house-keeping for the animators
        cameraAnim.SetBool(Animator.StringToHash("IntroMoveIn"), false);
        JasperAnim.SetBool(Animator.StringToHash("IntroMoveIn"), false);

        yield return new WaitForSeconds(3);

        // Re-enable the camera
        cameraAnim.enabled = false;
        GameManager.MainCamera.enabled = true;

        // The cut-scene is complete, move on to the first tutorial event
        StartCoroutine(ShowTwoHands());

    }

    public IEnumerator ShowTwoHands()
    {
        // Create the pieces we're showing
        Transform leftHandVignette = (Transform)Instantiate(LeftHandVignette, LeftHandVignette.position, LeftHandVignette.rotation);
        AlphaPulse leftPulse = leftHandVignette.GetComponent<AlphaPulse>();
        if (leftPulse == null) {
            leftPulse = leftHandVignette.gameObject.AddComponent<AlphaPulse>();
        }
        Transform rightHandVignette = (Transform)Instantiate(RightHandVignette, RightHandVignette.position, RightHandVignette.rotation);
        AlphaPulse rightPulse = rightHandVignette.GetComponent<AlphaPulse>();
        if (rightPulse == null) {
            rightPulse = rightHandVignette.gameObject.AddComponent<AlphaPulse>();
        }
        Transform leftThumb = (Transform)Instantiate(LeftThumbPrint, LeftThumbPrint.position, LeftThumbPrint.rotation);
        Transform rightThumb = (Transform)Instantiate(RightThumbPrint, RightThumbPrint.position, RightThumbPrint.rotation);

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

            foreach (Touch touch in Input.touches) {
                if (touch.position.x < Screen.width / 2) {
                    leftSideTouched = true;
                }
                if (touch.position.x > Screen.width / 2) {
                    rightSideTouched = true;
                }
            }

            leftPulse.On = !leftSideTouched;
            leftThumb.GetComponent<Renderer>().enabled = !leftSideTouched;
            rightPulse.On = !rightSideTouched;
            rightThumb.GetComponent<Renderer>().enabled = !rightSideTouched;

            if (leftSideTouched && rightSideTouched) {
                hasUsed2Hands = true;
            }
            
            yield return null;

        }

        // Remove the shown pieces
        Destroy(leftHandVignette.gameObject);
        Destroy(leftThumb.gameObject);
        Destroy(rightHandVignette.gameObject);
        Destroy(rightThumb.gameObject);
        
        // Make the player get up
        GameManager.Player.MecanimAnimator.SetBool(MecanimHashes.Respawn, true);
        yield return new WaitForSeconds(1.0f);

        // Let them move again
        GameManager.MainCamera.CinematicOverride = false;
        GameManager.IsPlayingCutscene = false;

    }

    public void ShowWallJump()
    {
        if (!GameManager.SaveData.HasShownWallJump) {
            GameManager.SaveData.HasShownWallJump = true;

            Hologram.gameObject.SetActive(true);
            Hologram.StartCoroutine(Hologram.ShowWallJump());

        }

    }

    public void ShowSneak()
    {
        if (!GameManager.SaveData.HasShownSneak) {
            GameManager.SaveData.HasShownSneak = true;
            
            Hologram.gameObject.SetActive(true);
            Hologram.StartCoroutine(Hologram.ShowSneak(SneakStartPosition.position));
            
        }

    }

    public void ShowSightPuzzle()
    {
        // HACK: MAKE THE BABYBOT IGNORE NOW
        EnemyAI babyBot = null;
        foreach (EnemyAI ai in GameManager.AI.Enemies) {
            if (ai.CharAnimator.EnemyType == EnemySaveState.EnemyType.Enemy_BabyBot) {
                babyBot = ai;
            }
        }
        if (babyBot != null) {
            babyBot.PersonalHearingRadius.IgnoreAbove = true;
            ((BabyBotAnimator)(babyBot.CharAnimator)).Sound.MaxDistance = 5;
        }

        // Mainly just affects the door
        if (!GameManager.SaveData.HasShownSightPuzzle) {
            GameManager.SaveData.HasShownSightPuzzle = true;

            SewerDoor.GetComponent<Animation>().Play("Open");
            StartCoroutine("OperateDoor");
        }

    }
    
    public IEnumerator OperateDoor()
    {
        while (true) {
            // see player & open? close.
            if ((GameManager.AI.EnemiesChasing > 0) && _sewerDoorOpen) {
                SewerDoor.GetComponent<Animation>().Play("Close");
                DoorSounds.Play(DoorSounds.DoorSlam, DoorSounds.DoorSlamVolume);
                _sewerDoorOpen = false;
                
                // no longer see player & closed? open.
            } else if ((GameManager.AI.EnemiesChasing == 0) && !_sewerDoorOpen) {
                SewerDoor.GetComponent<Animation>().Play("Open");
                DoorSounds.Play(DoorSounds.DoorOpen, DoorSounds.DoorOpenVolume);
                _sewerDoorOpen = true;
                
            }
            
            yield return new WaitForSeconds(0.25f);
            
        }
        
    }

    public void ShowSpawnOlympus()
    {
        if (!GameManager.SaveData.HasShownOlympusSpawn) {
            GameManager.SaveData.HasShownOlympusSpawn = true;

            Hologram.gameObject.SetActive(true);
            Hologram.StartCoroutine(Hologram.ShowOlympusSpawn(RunnerPositionOlympusSpawn.position));

            StartCoroutine(SpawnOlympus());
            GameManager.IsPlayingCutscene = true;
        }
    }

    public IEnumerator SpawnOlympus()
    {
        // Wait until the runner has walked past
        while (Hologram.WalkedUnderneath == false) {
            yield return null;
        }
        GameManager.MainCamera.Target = Olympus1Position.transform;
        yield return new WaitForSeconds(0.5f);

        // Spawn olympus up high and have him fall
        Transform newOlympus = (Transform)Instantiate(OlympusPrefab, Olympus1Position.position, Quaternion.identity);
        newOlympus.GetComponent<EnemyAISettings>().ShouldWander = false;
        newOlympus.GetComponent<CharacterAnimator>().Direction = new Vector3(-1.0f, 0.0f, 0.0f);

        // Look at Olympus fall
        GameManager.MainCamera.Target = newOlympus;
        yield return new WaitForSeconds(0.1f);

        // THESE MUST BE DONE HERE, SO THAT THE START METHOD CANNOT OVERWRITE THEM.
        EnemyAI enemyAI = newOlympus.GetComponent<EnemyAI>();
        enemyAI.CharAnimator.CharInput.UpdateInputMethod = null;
        enemyAI.Settings.ShouldWander = false;
        enemyAI.Settings.CanSee = false;                        
        enemyAI.Settings.CanHear = false;
        yield return new WaitForSeconds(2.2f);
        enemyAI.Settings.ShouldWander = false;
        enemyAI.Settings.CanSee = false;                        
        enemyAI.Settings.CanHear = false;

        // Have olympus try to chase down the runner
        CharacterInput input = newOlympus.GetComponent<CharacterInput>();
        input.Horizontal = -0.7f;
        yield return new WaitForSeconds(0.90f);
        input.Horizontal = 0.0f;
        input.Attack = 1.0f;
        yield return new WaitForSeconds(2.0f);

        // Enable the olympus as normal
        enemyAI.CharAnimator.CharInput.UpdateInputMethod = enemyAI.UpdateInput;
        enemyAI.Settings.CanSee = true;                        
        enemyAI.Settings.CanHear = true;
            
    }

    public IEnumerator KeepFanSpinning()
    {
        FanSounds.PlayLoop(FanSounds.FanSpinning, FanSounds.FanSpinningVolume);
        
        // Check every now to see if all the sparkplugs have been picked up
        _fanSpinning = true;
        while (_fanSpinning) {
            yield return new WaitForSeconds(0.5f);
							
        }

        // If the sparkplug's gone, make the fan stop
        Destroy(SpinningFan.GetComponentInChildren<DeathTrigger>());
        FanSounds.Stop();
        FanSounds.Play(FanSounds.FanStopping, FanSounds.FanStoppingVolume);
        
        // Close the door behind you
        StopCoroutine("OperateDoor");
        if (_sewerDoorOpen) {
            SewerDoor.GetComponent<Animation>().Play("Close");
        }
        // Power down
        while (SpinningFan.GetComponent<Animation>()["SpinningLoop"].speed > 0.1f) {
            SpinningFan.GetComponent<Animation>() ["SpinningLoop"].speed -= (0.5f * Time.deltaTime);
            yield return null;
        }
        SpinningFan.GetComponent<Animation>().Stop();
    
    }

    public override void TogglePlug()
    {
        _fanSpinning = !_fanSpinning;

    }

}
