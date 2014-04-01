using UnityEngine;
using System.Collections;

/// <summary>
/// Mysterious runner is the runner you see at the start of the game that teaches you the motions.
/// </summary>
[AddComponentMenu("Story Events/Sewer/Mysterious Runner")]
public class MysteriousRunner : MonoBehaviour
{
    public Transform SewerDoor;
    private CharacterInput _input;
	
    public IEnumerator ShowWallJump1 ()
    {
		_input = GetComponent<CharacterInput> ();

        Camera.main.GetComponent<CameraScrolling> ().Target = transform;
        GameManager.UI.DisableInput ();
		GameManager.IsPlayingCutscene = true;

		Destroy (GameManager.Player.GetComponent<AudioListener> ());
        this.gameObject.AddComponent<AudioListener> ();


        _input.Horizontal = -1;
        yield return new WaitForSeconds (1.3f);
        _input.Horizontal = 0;
        _input.Jump = new Vector2 (-1, 1);
        yield return new WaitForSeconds (0.2f);
		Camera.main.GetComponent<CameraScrolling> ().Target = null;
		yield return new WaitForSeconds (0.7f);
		_input.Jump = new Vector2 (1, 1);
        yield return new WaitForSeconds (0.75f);

        Camera.main.GetComponent<CameraScrolling> ().Target = GameManager.Player.transform;
        GameManager.UI.EnableInput ();
        Destroy (gameObject.GetComponent<AudioListener> ());
        GameManager.Player.gameObject.AddComponent<AudioListener> ();
        yield return new WaitForSeconds (0.1f);
        _input.Jump = Vector2.zero;
		_input.Horizontal = 0;

		SewerDoor.animation.Play ("Open");

        gameObject.SetActive (false);

		GameManager.IsPlayingCutscene = false;

    }
    
    public IEnumerator ShowWallJump2 ()
    {
        // Set up
		_input = GetComponent<CharacterInput> ();
        Camera.main.GetComponent<CameraScrolling> ().Target = transform;
        GameManager.UI.DisableInput ();
		GameManager.IsPlayingCutscene = true;

        Destroy (GameManager.Player.GetComponent<AudioListener> ());
        this.gameObject.AddComponent<AudioListener> ();
        gameObject.transform.position = new Vector3(68f, 56.920f, 0.0f);

        // Move left
        _input.Horizontal = -1;
        _input.Jump = Vector2.zero;

        // First jump to wall
        yield return new WaitForSeconds (0.1f);
		_input.Horizontal = 0;
        _input.Jump = new Vector2 (-1, 1);

        // Wall jump 1
        yield return new WaitForSeconds (0.75f);
        //_input.Jump = Vector2.zero;
       // yield return new WaitForSeconds (0.01f);
        _input.Jump = new Vector2 (1, 1);
        
        // Wall jump 2
        yield return new WaitForSeconds (0.5f);
     //   _input.Jump = Vector2.zero;
     //   yield return new WaitForSeconds (0.01f);
        _input.Jump = new Vector2 (-1, 1);
        
        // Wall jump 3
        yield return new WaitForSeconds (0.5f);
     //   _input.Jump = Vector2.zero;
     //   yield return new WaitForSeconds (0.01f);
        _input.Jump = new Vector2 (1, 1);
        
        // Wall jump 4
        yield return new WaitForSeconds (0.5f);
    //    _input.Jump = Vector2.zero;
  //      yield return new WaitForSeconds (0.01f);
        _input.Jump = new Vector2 (-1, 1);
        yield return new WaitForSeconds (0.5f);

//        _input.Jump = new Vector2 (1, 1);
//        yield return new WaitForSeconds (0.5f);
//        _input.Jump = new Vector2 (-1, 1);
//        yield return new WaitForSeconds (0.5f);
        _input.Jump = Vector2.zero;
        _input.Horizontal = -1.0f;
        yield return new WaitForSeconds (0.6f);
		_input.Horizontal = 0.0f;
		yield return new WaitForSeconds (2.0f);

        // Clean up
        Camera.main.GetComponent<CameraScrolling> ().Target = GameManager.Player.transform;
        GameManager.UI.EnableInput ();
        Destroy (gameObject.GetComponent<AudioListener> ());
        GameManager.Player.gameObject.AddComponent<AudioListener> ();

		// pre-open the door 
        gameObject.SetActive (false);

		GameManager.IsPlayingCutscene = false;

    }

	public IEnumerator ShowDoorSneak ()
	{
		Camera.main.GetComponent<CameraScrolling> ().Target = transform;
		GameManager.UI.DisableInput ();
		GameManager.IsPlayingCutscene = true;
		Destroy (GameManager.Player.GetComponent<AudioListener> ());
		this.gameObject.AddComponent<AudioListener> ();

		// door closes on her when running
		_input.Horizontal = -1.0f;
		yield return new WaitForSeconds (1.20f);
		SewerDoor.animation.Play ("Close");
		yield return new WaitForSeconds (0.1f);
	
		// she backflips out of the way
		_input.Jump = new Vector2 (1.0f, 1.0f);
		yield return new WaitForSeconds (0.1f);
		_input.Jump = Vector2.zero;
		_input.Horizontal = -1.0f;
		yield return new WaitForSeconds (0.3f);
		// door re-opens
		SewerDoor.animation.Play ("Open");
	

		// pauses for a second.
		_input.Horizontal = 0.0f;
		yield return new WaitForSeconds (2.0f);

		// starts running again BRIEFLY and see the door start to close
		_input.Horizontal = -1.0f;
		yield return new WaitForSeconds (0.55f);
		SewerDoor.animation.Play ("Close");
		yield return new WaitForSeconds (0.20f);

		// pause for a sec for it to open
		_input.Horizontal = 0.0f;
		yield return new WaitForSeconds (2.0f);
		SewerDoor.animation.Play ("Open");
		yield return new WaitForSeconds (1.0f);

		// sneak through
		_input.Horizontal = -0.3f;
		yield return new WaitForSeconds (2.0f);
		Camera.main.GetComponent<CameraScrolling> ().Target = null;
		_input.Horizontal = -1.0f;
		SewerDoor.animation.Play ("Close");

	
		// door closes behind her and she starts running again
		_input.Horizontal = -1.0f;
		SewerDoor.animation.Play ("Close");

		// run for a bit, then stop
		yield return new WaitForSeconds (1.0f);


		Camera.main.GetComponent<CameraScrolling> ().Target = GameManager.Player.transform;
		GameManager.UI.EnableInput ();
		Destroy (gameObject.GetComponent<AudioListener> ());
		GameManager.Player.gameObject.AddComponent<AudioListener> ();
		//        yield return new WaitForSeconds (0.5f);
		        SewerDoor.animation.Play ("Open");

		gameObject.SetActive (false);
		GameManager.IsPlayingCutscene = true;

	}

}
