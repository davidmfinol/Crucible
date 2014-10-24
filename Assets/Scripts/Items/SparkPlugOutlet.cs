using UnityEngine;
using System.Collections;

public class SparkPlugOutlet : MonoBehaviour
{
		public StoryPlug StoryPlugInstance;
		public void TogglePlug ()
		{
				StoryPlugInstance.TogglePlug ();
		}
		// Use this for initialization
		void OnTriggerEnter (Collider other)
		{
				NewmanAnimator character = other.GetComponent<NewmanAnimator> ();
				if (character != null) {
						character.sparkPlugOutlet = this;
				}
		}
		void OnTriggerExit (Collider other)
		{
				NewmanAnimator character = other.GetComponent<NewmanAnimator> ();
				if (character != null) {
						character.sparkPlugOutlet = null;
				}
		}

}
