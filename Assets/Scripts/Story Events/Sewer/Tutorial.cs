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

    // save runner component to call script coroutines directly
    private MysteriousRunner _runner;
    private TutorialAudioPlayer _sewerSounds;
    private AudioPlayer _doorSounds;
    private AudioPlayer _cameraSounds;
    private bool _sewerDoorOpen;

    void Start ()
    {
        _sewerDoorOpen = false;
        _sewerSounds = GetComponent<TutorialAudioPlayer> ();
        _runner = MysteriousRunner.GetComponent<MysteriousRunner> ();
        _doorSounds = SewerDoor.GetComponent<AudioPlayer> ();
        _cameraSounds = SewerCamera.GetComponent<AudioPlayer> ();

    }

    void Update ()
    {
        if (GameManager.AI.Enemies.Count > 0) {
            bool tutorialComplete = GameManager.AI.Enemies [0].GetComponent<CharacterAnimator> ().IsDead ();
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

    public void ShowStealthKillPrompt ()
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
        // TODO
        while (true) {

            yield return null;
        }
            
        // do stuff

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
        GameManager.UI.DisableInput ();

        Camera.main.GetComponent<CameraScrolling> ().Target = OlympusPosition.transform;
        yield return new WaitForSeconds (2.0f);

        // spawn olympus up high and have him fall.
        Transform newOlympus = (Transform)Instantiate (OlympusPrefab, OlympusPosition.position, Quaternion.identity);
        newOlympus.GetComponent<EnemyAI> ().ShouldWander = false;
        newOlympus.GetComponent<CharacterAnimator> ().Direction = new Vector3 (-1.0f, 0.0f, 0.0f);

        // drops 2 items.
        newOlympus.GetComponent<ItemDropper> ().AddItem (Item.ItemType.Item_ComputerParts);

        Camera.main.GetComponent<CameraScrolling> ().Target = null;
        yield return new WaitForSeconds (2.0f);

        Camera.main.GetComponent<CameraScrolling> ().Target = GameManager.Player.transform;
        GameManager.UI.EnableInput ();

    }
    
    public IEnumerator OperateDoor ()
    {
        // TODO: UPDATE TO HAVE PLAYER GO AWAY BEFORE REACTIVATING
        while (true) {
            if (_sewerDoorOpen && Mathf.Abs (GameManager.Player.CharInput.Horizontal) > 0.5) {
                SewerDoor.animation.Play ("Close");
                _sewerDoorOpen = false;
                yield return new WaitForSeconds (0.5f);
                _doorSounds.Play (_sewerSounds.DoorSlam, 0.5f);
                _cameraSounds.Play (_sewerSounds.CameraBeep, 0.3f);
            } else if (!_sewerDoorOpen && Mathf.Abs (GameManager.Player.CharInput.Horizontal) < 0.5) {
                SewerDoor.animation.Play ("Open");
                _sewerDoorOpen = true;
                yield return new WaitForSeconds (0.5f);
                _doorSounds.Play (_sewerSounds.DoorOpen, 0.7f);
            }
            yield return null; // FIXME: SLOW
        }

    }
}
