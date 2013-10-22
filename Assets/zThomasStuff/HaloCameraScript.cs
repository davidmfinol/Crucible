using UnityEngine;
using System.Collections;

public class HaloCameraScript : MonoBehaviour
{
	public GameObject[] cameras;
	
	public void SelectCamera (int index)
	{
		for (int i =0; i<cameras.Length; i++) {
			// Activate the selected camera
			if (i == index) {
				cameras [i].camera.enabled = true;
				// Deactivate all other cameras
			} else {
				cameras [i].camera.enabled = false;
			}
 
		}
	}
}
