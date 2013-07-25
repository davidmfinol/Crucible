using UnityEngine;
using System.Collections;

public class PauseMenuFlat : MonoBehaviour {
	
	bool Paused = false;

	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
		KeyboardControl();
	}
	
	void KeyboardControl(){
		if(transform.FindChild("MenuFlat").GetComponent<GUIMenuActivate>().controlsMenuOn == false){
		if(Input.GetKeyDown(KeyCode.Escape)){
			//Debug.Log("In Escape");
			//Paused = true;
			
			Time.timeScale = 0;

			
			transform.FindChild("MenuFlat").transform.gameObject.SetActive(true);				 
			 

			
		}
		}
	}
	
}
