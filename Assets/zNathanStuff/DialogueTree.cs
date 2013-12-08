using UnityEngine;
using System.Collections;

public class DialogueTree : MonoBehaviour
{
	AudioPlayer _audioPlayer;
	bool hasTriggered = false;
	void Start()
	{
		_audioPlayer = GetComponent<AudioPlayer>();
	}
	void OnTriggerEnter ()
	{
		if (hasTriggered)
			return;
		guiText.text = "Stop Human";
		StartCoroutine ("DelayText");
	}

	IEnumerator DelayText ()
	{
		hasTriggered = true;
		float t = 0;
		while (t < 2) {
			t += Time.deltaTime;
			yield return null;
		}
		guiText.text = "Inspection Required!";
		while (t < 4) {
			t += Time.deltaTime;
			yield return null;
		}
		if (PlayerCharacterAnimator.countItems == 3) {
			guiText.text = "Human displays fiscal worthiness.  Subject not rogue.  Permission to enter – confirmed.";
			_audioPlayer.Play(0);
		}
		else {
			guiText.text = "Rogue human.  Execute terminatation of subject.  ";
			_audioPlayer.Play(1);
		}
		yield return new WaitForSeconds(5);
		guiText.text = "";
	}
	
}
