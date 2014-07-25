using UnityEngine;
using System.Collections;

/// <summary>
/// Newman hologram provides example actions for the player to learn in the sewer tutorial.
/// </summary>
[AddComponentMenu("Story Events/Sewer/Newman Hologram")]
public class NewmanHologram : MonoBehaviour
{
	private bool _walkedUnderneath = false;

    public IEnumerator ShowWallJump ()
    {
        // Start the cutscene
        CharacterInput input = GetComponent<CharacterInput> ();
        input.UpdateInputMethod = null;
        GameManager.IsPlayingCutscene = true;
        GameManager.MainCamera.Target = transform;

        // Do the walljump
        input.Horizontal = -1;
        yield return new WaitForSeconds (1.15f);
        input.Horizontal = 0;
        input.Jump = new Vector2 (-1, 1);
		GameManager.MainCamera.Target = null;
        yield return new WaitForSeconds (0.2f);
        input.Jump = Vector2.zero;
        yield return new WaitForSeconds (0.7f);
        input.Jump = new Vector2 (1, 1);
        yield return new WaitForSeconds (1.5f);
		input.Jump = new Vector2 (1, 1);

        // End the cutscene
        GameManager.MainCamera.Target = GameManager.Player.transform;
        GameManager.IsPlayingCutscene = false;
        gameObject.SetActive (false);

    }

    public IEnumerator ShowSneak (Vector3 startPosition)
    {
        // Start the cutscene
        CharacterInput input = GetComponent<CharacterInput> ();
        input.UpdateInputMethod = null;
        GameManager.IsPlayingCutscene = true;
        GameManager.MainCamera.Target = transform;

		// Start moving left
        transform.position = startPosition;
		input.Horizontal = 0.4f;
		yield return new WaitForSeconds (1.0f);

		// Zoom in on Babybot
		GameManager.MainCamera.CinematicOverride = true;
		EnemyAI babyBot = null;
		foreach(EnemyAI ai in GameManager.AI.Enemies)
			if(ai.Animator.EnemyType == EnemySaveState.EnemyType.Enemy_BabyBot)
				babyBot = ai;
		GameManager.MainCamera.Target = babyBot.transform; 
		GameManager.MainCamera.CinematicOverride = false;
		yield return new WaitForSeconds (1.5f);

		// Go back to the runner
		CameraTargetAttributes camAtt = gameObject.AddComponent<CameraTargetAttributes>();
		GameManager.MainCamera.Target = transform;
		yield return new WaitForSeconds (1.5f);
		Destroy(camAtt);

        // End the cutscene
        GameManager.MainCamera.Target = GameManager.Player.transform;
        GameManager.IsPlayingCutscene = false;
        gameObject.SetActive (false);

    }

	public IEnumerator ShowOlympusSpawn (Vector3 startPosition)
	{
        // Start the cutscene
		CharacterInput input = GetComponent<CharacterInput> ();
        input.UpdateInputMethod = null;
        GameManager.IsPlayingCutscene = true;
		GameManager.MainCamera.Target = transform;

        // Walk for a bit
		transform.position = startPosition;
		input.Horizontal = -0.5f;
		yield return new WaitForSeconds (2.0f);
		_walkedUnderneath = true;
		yield return new WaitForSeconds (1.0f);
		input.Horizontal = 0f;
		yield return new WaitForSeconds (0.75f);
		GameManager.MainCamera.Target = transform;
		yield return new WaitForSeconds (1.0f);
		input.Horizontal = 1f;
		yield return new WaitForSeconds (0.1f);
		input.Horizontal = 0f;
		yield return new WaitForSeconds (0.25f);
		input.Attack = 1f;

        // Escape the olympus
		yield return new WaitForSeconds (0.5f);
		input.Attack = 0f;
		GameManager.MainCamera.Target = null;
		input.Horizontal = -1f;
		yield return new WaitForSeconds (0.75f);
		input.Jump = new Vector2(-1,1);
		input.Horizontal = 0f;
		yield return new WaitForSeconds (3.5f);

        // End the cutscene
        GameManager.MainCamera.Target = GameManager.Player.transform;
        GameManager.IsPlayingCutscene = false;
		gameObject.SetActive (false);

	}

	public bool WalkedUnderneath {
        get { return _walkedUnderneath; }
	}

}
