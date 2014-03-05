using UnityEngine;
using System.Collections;

[AddComponentMenu("Debug/Game Save Debugger")]
public class GameSaveDebugger : MonoBehaviour {

	// Update is called once per frame
	void Update () {
		if(Input.GetKeyDown(KeyCode.L)) {
			Debug.Log ("Clearing Game AND Level save data.");
			GameManager.DeleteSaves();

		}

	}
}
