using UnityEngine;
using System.Collections;

public class MeetJasper : MonoBehaviour {

	public bool WasPlayed = false;
	private TutorialQuad _quad;

	void Start() {
		WasPlayed = false;
		_quad = GetComponentInChildren<TutorialQuad>();

	}

	void OnTriggerEnter(Collider other) {
		PlayerCharacterAnimator anim = other.gameObject.GetComponent<PlayerCharacterAnimator> ();

		if (anim && !WasPlayed) {
			WasPlayed = true;

			StartCoroutine("DoDialogue");

		}

	}

	public IEnumerator DoDialogue ()
	{
		Debug.Log ("JasperText1");
		_quad.gameObject.renderer.material.mainTexture = Resources.Load<Texture2D>("JasperText1");
		yield return new WaitForSeconds (3.0f);
		Debug.Log ("JasperText2");
		_quad.gameObject.renderer.material.mainTexture = Resources.Load<Texture2D>("JasperText2");
		yield return new WaitForSeconds (3.0f);
		Debug.Log ("JasperText3");
		_quad.gameObject.renderer.material.mainTexture = Resources.Load<Texture2D>("JasperText3");
		yield return new WaitForSeconds (3.0f);
		_quad.gameObject.renderer.material.mainTexture = Resources.Load<Texture2D>("JasperText4");
		yield return new WaitForSeconds (3.0f);
		_quad.gameObject.renderer.material.mainTexture = Resources.Load<Texture2D>("JasperText5");
		yield return new WaitForSeconds (3.0f);
		_quad.gameObject.renderer.material.mainTexture = Resources.Load<Texture2D>("JasperText6");
		yield return new WaitForSeconds (3.0f);
		_quad.gameObject.renderer.material.mainTexture = Resources.Load<Texture2D>("JasperText7");
		yield return new WaitForSeconds (3.0f);
		_quad.gameObject.renderer.enabled = false;
		StopCoroutine ("DoDialogue");
	}

}
