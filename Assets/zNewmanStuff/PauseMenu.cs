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
			//GameTime.Paused = true;
			Debug.LogWarning("Pressed Pause");
			GameTime.Paused = !(GameTime.Paused);
			//Time.timeScale = 0;	
			transform.Find("FG").gameObject.active = !(transform.Find("FG").gameObject.active);
			transform.Find("MG").gameObject.active = !(transform.Find("MG").gameObject.active);
			//gameObject.GetComponentInChildren(
		}
	}
}
