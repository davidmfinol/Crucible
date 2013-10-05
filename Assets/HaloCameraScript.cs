using UnityEngine;
using System.Collections;

public class HaloCameraScript : MonoBehaviour {
	GameObject[] cameras; 
	// Use this for initialization
	void Start () {
		
	}
	
	void SelectCamera (int index) {
    for (int i =0;i<cameras.Length; i++) {
    // Activate the selected camera
        if (i == index){
            cameras[i].camera.active = true;
    // Deactivate all other cameras
        }else{
        cameras[i].camera.active = false;
    	}
 
	}
	}
	// Update is called once per frame
	void Update () {
	
	}
}
