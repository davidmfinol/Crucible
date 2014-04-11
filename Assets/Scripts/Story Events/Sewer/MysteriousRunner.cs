using UnityEngine;
using System.Collections;

/// <summary>
/// Mysterious runner is the runner you see at the start of the game that teaches you the motions.
/// </summary>
[AddComponentMenu("Story Events/Sewer/Mysterious Runner")]
public class MysteriousRunner : MonoBehaviour
{
	private bool _thrownBarrier = false;
	private bool _walkedUnderneath = false;

    public IEnumerator ShowWallJump1 ()
    {
        CharacterInput input = GetComponent<CharacterInput> ();
        Destroy (GameManager.Player.GetComponent<AudioListener> ());
        this.gameObject.AddComponent<AudioListener> ();
        GameManager.MainCamera.Target = transform;
        GameManager.IsPlayingCutscene = true;

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

        GameManager.IsPlayingCutscene = false;
        GameManager.MainCamera.Target = GameManager.Player.transform;
        Destroy (gameObject.GetComponent<AudioListener> ());
        GameManager.Player.gameObject.AddComponent<AudioListener> ();
        gameObject.SetActive (false);

    }

    public IEnumerator ShowSneak (Vector3 startPosition)
    {
        CharacterInput input = GetComponent<CharacterInput> ();
        Destroy (GameManager.Player.GetComponent<AudioListener> ());
        this.gameObject.AddComponent<AudioListener> ();
        GameManager.MainCamera.Target = transform;
        GameManager.IsPlayingCutscene = true;

        transform.position = startPosition;
        input.Horizontal = 1.0f;
        yield return new WaitForSeconds (0.3f);

		input.Horizontal = 0.5f;
		yield return new WaitForSeconds (2.5f);
		GameManager.MainCamera.Target = null; 
		yield return new WaitForSeconds (3.5f);

		GameManager.MainCamera.Target = transform;
        GameManager.IsPlayingCutscene = false;
        GameManager.MainCamera.Target = GameManager.Player.transform;
        Destroy (gameObject.GetComponent<AudioListener> ());
        GameManager.Player.gameObject.AddComponent<AudioListener> ();
        gameObject.SetActive (false);

    }

	public IEnumerator ShowSightPuzzle (Vector3 startPosition)
	{
		CharacterInput input = GetComponent<CharacterInput> ();
        Destroy (GameManager.Player.GetComponent<AudioListener> ());
        this.gameObject.AddComponent<AudioListener> ();
        GameManager.MainCamera.Target = transform;
        GameManager.IsPlayingCutscene = true;

        transform.position = startPosition;
		input.Horizontal = -1f;
		yield return new WaitForSeconds (1.2f);
		input.Horizontal = 0f;
		input.Vertical = 1.0f;
		yield return new WaitForSeconds (2.5f);
		input.Vertical = -1.0f;
        yield return new WaitForSeconds (0.3f);
		input.Vertical = 0.0f;
		input.Horizontal = -0.5f;
		yield return new WaitForSeconds (2.5f);
		GameManager.MainCamera.Target = null;
		input.Jump = new Vector2(-1, 1);
		yield return new WaitForSeconds (0.2f);
		input.Jump = new Vector2(-1, 1);
		yield return new WaitForSeconds (3.5f);

		GameManager.MainCamera.Target = transform;
        GameManager.IsPlayingCutscene = false;
        GameManager.MainCamera.Target = GameManager.Player.transform;
        Destroy (gameObject.GetComponent<AudioListener> ());
        GameManager.Player.gameObject.AddComponent<AudioListener> ();
        gameObject.SetActive (false);
	}

	public IEnumerator ShowOlympusSpawn (Vector3 startPosition)
	{
		CharacterInput input = GetComponent<CharacterInput> ();
		Destroy (GameManager.Player.GetComponent<AudioListener> ());
		this.gameObject.AddComponent<AudioListener> ();
		GameManager.MainCamera.Target = transform;
		GameManager.IsPlayingCutscene = true;
		
		transform.position = startPosition;
		input.Horizontal = -0.5f;
		yield return new WaitForSeconds (1.7f);
		_walkedUnderneath = true;
		input.Horizontal = 0f;
		yield return new WaitForSeconds (0.75f);
		GameManager.MainCamera.Target = transform;
		yield return new WaitForSeconds (0.5f);
		input.Horizontal = 1f;
		yield return new WaitForSeconds (0.1f);
		input.Horizontal = 0f;
		input.Attack = 1f;
		_thrownBarrier = true;
		yield return new WaitForSeconds (0.5f);
		input.Attack = 0f;
		GameManager.MainCamera.Target = null;
		input.Horizontal = -1f;
		yield return new WaitForSeconds (1.3f);
		input.Jump = new Vector2(-1,1);
		input.Horizontal = 0f;
		yield return new WaitForSeconds (3.5f);


		GameManager.IsPlayingCutscene = false;
		GameManager.UI.EnableInput ();
		GameManager.MainCamera.Target = GameManager.Player.transform;
		Destroy (gameObject.GetComponent<AudioListener> ());
		GameManager.Player.gameObject.AddComponent<AudioListener> ();
		gameObject.SetActive (false);
	}

	public bool WalkedUnderneath {
		get {
			return _walkedUnderneath;
		}
	}

	public bool ThrownBarrier {
		get {
			return _thrownBarrier;
		}
	}
}
