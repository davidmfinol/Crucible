using UnityEngine;
using System.Collections;

public class MeetJasper : MonoBehaviour {
	public Transform TVScreen1;
	public Transform TVScreen2;
	public Transform TVScreen3;
	private TutorialQuad _quad;

	void Start() {
		_quad = GetComponentInChildren<TutorialQuad>();

	}

	void OnTriggerEnter(Collider other) {
		if (!GameManager.SaveData.ShownMeetJasper) {
			GameManager.SaveData.ShownMeetJasper = true;

			PlayerCharacterAnimator anim = other.gameObject.GetComponent<PlayerCharacterAnimator> ();

			if (anim != null) {
				StartCoroutine("DoDialogue");
				
			}

		}

	}

	public IEnumerator DoDialogue ()
	{
		if(TVScreen1!= null)
			TVScreen1.renderer.material.color = new Color (0.0f, 0.0f, 0.0f, 1.0f);
		if(TVScreen2!= null)
			TVScreen2.renderer.material.color = new Color (0.0f, 0.0f, 0.0f, 1.0f);
		if(TVScreen3!= null)
			TVScreen3.renderer.material.color = new Color (0.0f, 0.0f, 0.0f, 1.0f);
		Debug.Log ("JasperText1");
		_quad.gameObject.renderer.enabled = true;
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
		if(TVScreen3!= null)
			TVScreen1.renderer.material.color = new Color (1.0f, 1.0f, 1.0f, 1.0f);
		if(TVScreen3!= null)
			TVScreen2.renderer.material.color = new Color (1.0f, 1.0f, 1.0f, 1.0f);
		if(TVScreen3!= null)
			TVScreen3.renderer.material.color = new Color (1.0f, 1.0f, 1.0f, 1.0f);
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
