using UnityEngine;
using System.Collections;

/// <summary>
/// Tutorial sets up all the events and prefabs that teaches the player to play the game.
/// </summary>
[AddComponentMenu("Story Events/Sewer/Tutorial Main")]
public class Tutorial : MonoBehaviour
{
    // The prompts that the player sees on-screen
    public Transform LeftHandVignette;
    public Transform RightHandVignette;

    // Scripted characters in the scene
    public GameObject MysteriousRunner;
    public Transform SewerDoor;
    //public Transform OlympusPosition;

    // save runner component to call script coroutines directly
    private MysteriousRunner _runner;
    private bool _sewerDoorOpen;

    void Start ()
    {
        _runner = MysteriousRunner.GetComponent<MysteriousRunner> ();
        
        StartCoroutine (OperateDoor ());

    }

    public void ForceTwoHands ()
    {
        if (!GameManager.SaveData.HasUsed2Hands) {
            StartCoroutine (ShowTwoHands ());
        }

    }

    public IEnumerator ShowTwoHands ()
    {
        // Make the player fall down
        GameManager.MainCamera.CinematicOverride = true;
        GameManager.Player.MecanimAnimator.SetBool (MecanimHashes.Die, true);

        // Create the pieces we're showing
        Transform leftHandVignette = (Transform)Instantiate (LeftHandVignette, LeftHandVignette.position, LeftHandVignette.rotation);
        Transform rightHandVignette = (Transform)Instantiate (RightHandVignette, RightHandVignette.position, RightHandVignette.rotation);
        // TODO

        // We only need to force 2 hands on the mobile devices
#if UNITY_EDITOR || UNITY_STANDALONE || UNITY_WEB
        GameManager.SaveData.HasUsed2Hands = true;
#endif

        // Wait until they finally have used both hands to move on
        while (!GameManager.SaveData.HasUsed2Hands) {
            yield return null;
        }

        // Hide the shown pieces

        // Make the player get up
        GameManager.MainCamera.CinematicOverride = false;
        GameManager.Player.MecanimAnimator.SetBool (MecanimHashes.Respawn, true);

        // And show the wall jump
        ShowWallJump ();

    }

    public void ShowWallJump ()
    {
        if (!GameManager.SaveData.HasShownWallJump) {
            GameManager.SaveData.HasShownWallJump = true;

            MysteriousRunner.gameObject.SetActive (true);
            _runner.StartCoroutine (_runner.ShowWallJump1 ());

        }

    }

    public void ShowSneak ()
    {
        if (!GameManager.SaveData.HasShownSneak) {
            GameManager.SaveData.HasShownSneak = true;
            
            MysteriousRunner.gameObject.SetActive (true);
            _runner.StartCoroutine (_runner.ShowSneak ());
            
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
                Debug.Log ("Closing door.");

                SewerDoor.animation.Play ("Close");
                _sewerDoorOpen = false;

                // no longer see player & closed? open.
            } else if ((GameManager.AI.EnemiesChasing == 0) && !_sewerDoorOpen) {
                Debug.Log ("Opening door.");

                SewerDoor.animation.Play ("Open");
                _sewerDoorOpen = true;

            }
                
            yield return new WaitForSeconds (0.25f);
            
        }
        
    }

}
