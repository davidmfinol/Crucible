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
    public Transform RightHandVignette;

    // Scripted characters in the scene
    public MysteriousRunner Runner;
    public GameObject SewerDoor;

    // The locations where certain effects will happen
    public Transform SneakStartPosition;
	public Transform SightPuzzlePosition;
	public Transform RunnerPositionOlympusSpawn;
    public Transform Olympus1Position;
	public Transform OlympusPrefab;
	public Transform AIBarrier;
    //public Transform Olympus2Position;

    private bool _sewerDoorOpen;

    void Start ()
    {
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
        
        yield return new WaitForSeconds(2.0f);

        // Create the pieces we're showing
        //Transform leftHandVignette = (Transform)Instantiate (LeftHandVignette, LeftHandVignette.position, LeftHandVignette.rotation);
        //Transform rightHandVignette = (Transform)Instantiate (RightHandVignette, RightHandVignette.position, RightHandVignette.rotation);
        // TODO

        // We only need to force 2 hands on the mobile devices
#if UNITY_EDITOR || UNITY_STANDALONE || UNITY_WEB
        GameManager.SaveData.HasUsed2Hands = true;
#endif

        // Wait until they finally have used both hands to move on
        while (!GameManager.SaveData.HasUsed2Hands) {
            yield return null;
            //TODO
        }

        // Remove the shown pieces
        //TODO
        
        // Make the player get up
        GameManager.Player.MecanimAnimator.SetBool (MecanimHashes.StandingUp, true);

        yield return new WaitForSeconds(2.0f);

        // And show the wall jump
        GameManager.MainCamera.CinematicOverride = false;
        ShowWallJump ();

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
		if (!GameManager.SaveData.HasShownSightPuzzle){
			GameManager.SaveData.HasShownSightPuzzle = true;

			Runner.gameObject.SetActive (true);
			Runner.StartCoroutine (Runner.ShowSightPuzzle (SightPuzzlePosition.position));
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
			GameManager.UI.DisableInput ();
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
                _sewerDoorOpen = false;

                // no longer see player & closed? open.
            } else if ((GameManager.AI.EnemiesChasing == 0) && !_sewerDoorOpen) {
                SewerDoor.animation.Play ("Open");
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
		enemyAI.enabled = false;
		// drops 2 items.
		newOlympus.GetComponent<ItemDropper> ().AddItem (Item.ItemType.Item_ComputerParts);

		StartCoroutine(ShowBarrier());
		yield return new WaitForSeconds(2.0f);
		CharacterInput input = newOlympus.GetComponent<CharacterInput> ();
		input.Horizontal = -0.4f;
		yield return new WaitForSeconds(0.5f);
		input.Horizontal = 0.0f;
		input.Attack = 1.0f;
		yield return new WaitForSeconds(2.0f);

		StartCoroutine(ForcePunch(input));
		enemyAI.enabled = true;
	
	}

	public IEnumerator ForcePunch (CharacterInput input)
	{
		while(true)
		{
			yield return new WaitForSeconds(0.5f);
			input.Attack = 1.0f;
		}
	}

	public IEnumerator ShowBarrier ()
	{
		while(Runner.ThrownBarrier == false)
			yield return null;
		AIBarrier.gameObject.SetActive(true);

	}

}
