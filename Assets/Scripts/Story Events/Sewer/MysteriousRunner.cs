using UnityEngine;
using System.Collections;

/// <summary>
/// Mysterious runner is the runner you see at the start of the game that teaches you the motions.
/// </summary>
[AddComponentMenu("Story Events/Sewer/Mysterious Runner")]
public class MysteriousRunner : MonoBehaviour
{
	private bool _walkedUnderneath = false;

    public IEnumerator ShowWallJump ()
    {
        CharacterInput input = GetComponent<CharacterInput> ();
        input.UpdateInputMethod = null;
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
        gameObject.SetActive (false);

    }

    public IEnumerator ShowSneak (Vector3 startPosition)
    {
        CharacterInput input = GetComponent<CharacterInput> ();
        input.UpdateInputMethod = null;
        GameManager.MainCamera.Target = transform;
        GameManager.IsPlayingCutscene = true;

        transform.position = startPosition;
//        input.Horizontal = 1.0f;
//        yield return new WaitForSeconds (0.3f);

		input.Horizontal = 0.5f;
		yield return new WaitForSeconds (3.0f);
		GameManager.MainCamera.Target = null; 
		yield return new WaitForSeconds (3.5f);

        GameManager.IsPlayingCutscene = false;
        GameManager.MainCamera.Target = GameManager.Player.transform;
        gameObject.SetActive (false);

    }

	public IEnumerator ShowSightPuzzle (Vector3 startPosition)
	{
        CharacterInput input = GetComponent<CharacterInput> ();
        input.UpdateInputMethod = null;
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

        GameManager.IsPlayingCutscene = false;
        GameManager.MainCamera.Target = GameManager.Player.transform;
        gameObject.SetActive (false);
	}

	public IEnumerator ShowOlympusSpawn (Vector3 startPosition)
	{
		CharacterInput input = GetComponent<CharacterInput> ();
		input.UpdateInputMethod = null;
		GameManager.MainCamera.Target = transform;
		GameManager.IsPlayingCutscene = true;

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

		Vector3 shieldPos = transform.position;
		shieldPos += Vector3.right * 3.0f;
		shieldPos += Vector3.down * 2.0f;
		Instantiate(Resources.Load("Prefabs/Weapons/OnField/HoloShield"), shieldPos, Quaternion.Euler(0.0f, 270.0f, 0.0f) );
		yield return new WaitForSeconds (0.5f);
		input.Attack = 0f;
		GameManager.MainCamera.Target = null;
		input.Horizontal = -1f;
		yield return new WaitForSeconds (1.3f);
		input.Jump = new Vector2(-1,1);
		input.Horizontal = 0f;
		yield return new WaitForSeconds (3.5f);


		GameManager.IsPlayingCutscene = false;
		GameManager.MainCamera.Target = GameManager.Player.transform;
		gameObject.SetActive (false);
	}

	public bool WalkedUnderneath {
		get {
			return _walkedUnderneath;
		}
	}
}
