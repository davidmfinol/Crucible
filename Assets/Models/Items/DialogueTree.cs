using UnityEngine;
using System.Collections;

public class DialogueTree : MonoBehaviour {
	bool hasTriggered = false;
	void OnTriggerEnter ()
	{
		if (hasTriggered)
			return;
	  guiText.text = "Stop Human";
	  StartCoroutine("DelayText");
	}
	IEnumerator DelayText()
	{
	  hasTriggered = true;
	  float t = 0;
	  while (t < 2) 
	  {
	  t+= Time.deltaTime;
	  yield return null;
	  }
	  guiText.text = "Inspection Required!";
	  while (t < 4) 
	  {
	  t+= Time.deltaTime;
	  yield return null;
	  }
	  if (PlayerCharacterAnimator.countItems == 3)
		{
			guiText.text = "Human displays fiscal worthiness.  Subject not rogue.  Permission to enter – confirmed.";
		}
	  else
		{
			guiText.text = "Rogue human.  Execute terminatation of subject.  ";
		}q
	}

	
	
}
