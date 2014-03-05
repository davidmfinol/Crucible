using UnityEngine;
using System.Collections;

/// <summary>
/// Mysterious runner is the runner you see at the start of the game that teaches you the motions.
/// </summary>
[AddComponentMenu("In-game Events/Tutorial/Mysterious Runner")]
public class MysteriousRunner : MonoBehaviour
{
    public bool IsFirst;
    public Transform SewerDoor;

	private CharacterInput _input;


	void Start ()
	{
		_input = GetComponent<CharacterInput> ();

		if(IsFirst)
			StartCoroutine("ShowWallJump1");
		else
			StartCoroutine("ShowWallJump2");
	}

	public IEnumerator ShowWallJump1 ()
	{
		Camera.main.GetComponent<CameraScrolling>().Target = transform;
		_input.Horizontal = -1;
		yield return new WaitForSeconds (1.3f);
		_input.Horizontal = 0;
		_input.Jump = new Vector2(-1, 1);
		yield return new WaitForSeconds (0.5f);
		_input.Jump = new Vector2 (1, 1);
		yield return new WaitForSeconds (0.2f);
		_input.Horizontal = 1;
		_input.Jump = Vector2.zero;
		yield return new WaitForSeconds (0.9f);
		_input.Jump = new Vector2 (1, 1);
		Camera.main.GetComponent<CameraScrolling> ().Target = GameManager.Player.transform;
		yield return new WaitForSeconds (0.1f);
		_input.Jump = Vector2.zero;
		yield return new WaitForSeconds (2.5f);
		_input.Jump = new Vector2 (1, 1);
		yield return new WaitForSeconds (0.5f);
		gameObject.SetActive (false);
		StopCoroutine ("ShowWallJump1");
	}
	
	public IEnumerator ShowWallJump2 ()
	{
		Camera.main.GetComponent<CameraScrolling>().Target = transform;
		yield return new WaitForSeconds (1.0f);
		_input.Jump = new Vector2(-1, 1);
		yield return new WaitForSeconds (0.75f);
		_input.Jump = new Vector2 (1, 1);
		yield return new WaitForSeconds (0.5f);
		_input.Jump = new Vector2(-1, 1);
		yield return new WaitForSeconds (0.5f);
		_input.Jump = new Vector2 (1, 1);
		yield return new WaitForSeconds (0.5f);
		_input.Jump = new Vector2(-1, 1);
		yield return new WaitForSeconds (0.5f);
		_input.Jump = new Vector2 (1, 1);
		yield return new WaitForSeconds (0.5f);
		_input.Jump = new Vector2(-1, 1);
        yield return new WaitForSeconds (0.5f);
        _input.Jump = Vector2.zero;
        _input.Horizontal = -1.0f;
        yield return new WaitForSeconds (1.0f);
		_input.Horizontal = -0.3f;
        yield return new WaitForSeconds (0.5f);
        SewerDoor.animation.Play("Open");
		yield return new WaitForSeconds (5.0f);
		_input.Horizontal = -1;
		SewerDoor.animation.Play("Close");
		yield return new WaitForSeconds (1.0f);
        Camera.main.GetComponent<CameraScrolling> ().Target = GameManager.Player.transform;
        yield return new WaitForSeconds (0.5f);
        SewerDoor.animation.Play("Close");
		gameObject.SetActive (false);
		StopCoroutine ("ShowWallJump2");
	}
}
