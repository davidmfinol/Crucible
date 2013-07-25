using UnityEngine;
using System.Collections;

public class PauseMenu : MonoBehaviour {

	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
		KeyboardControl();
	}
	
	void KeyboardControl(){
		if(Input.GetKeyDown(KeyCode.Escape)){
			//GameTime.Paused = !GameTime.Paused;
			//transform.FindChild("FG").transform.gameObject.SetActive(GameTime.Paused);
			//transform.FindChild("MG").transform.gameObject.SetActive(GameTime.Paused);
			//transform.FindChild("BG").transform.gameObject.SetActive(GameTime.Paused);
			
		}
	}
	
	void OnGUI(){
		//GUI.Box(new Rect(0, 0,Screen.width,Screen.height), "hello"); 	
	}
}
