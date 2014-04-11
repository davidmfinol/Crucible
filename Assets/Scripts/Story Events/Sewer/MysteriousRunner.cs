using UnityEngine;
using System.Collections;

/// <summary>
/// Mysterious runner is the runner you see at the start of the game that teaches you the motions.
/// </summary>
[AddComponentMenu("Story Events/Sewer/Mysterious Runner")]
public class MysteriousRunner : MonoBehaviour
{
    public IEnumerator ShowWallJump1 ()
    {
        CharacterInput input = GetComponent<CharacterInput> ();
        Destroy (GameManager.Player.GetComponent<AudioListener> ());
        this.gameObject.AddComponent<AudioListener> ();
        GameManager.MainCamera.Target = transform;
        GameManager.IsPlayingCutscene = true;

        input.Horizontal = -1;
        yield return new WaitForSeconds (1.05f);
        input.Horizontal = 0;
        input.Jump = new Vector2 (-1, 1);
        yield return new WaitForSeconds (0.2f);
        input.Jump = Vector2.zero;
        yield return new WaitForSeconds (0.7f);
        input.Jump = new Vector2 (1, 1);
        yield return new WaitForSeconds (1.5f);

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
        input.Horizontal = 0.5f;
        yield return new WaitForSeconds (8.0f);

        GameManager.IsPlayingCutscene = false;
        GameManager.MainCamera.Target = GameManager.Player.transform;
        Destroy (gameObject.GetComponent<AudioListener> ());
        GameManager.Player.gameObject.AddComponent<AudioListener> ();
        gameObject.SetActive (false);

    }
}
