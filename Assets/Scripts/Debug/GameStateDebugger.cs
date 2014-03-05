using UnityEngine;
using System.Collections;

/// <summary>
/// Game state debugger helps with debugging general game manager state.
/// </summary>
[AddComponentMenu("Debug/Game State Debugger")]
public class GameStateDebugger : MonoBehaviour
{
	public bool Hide = true;
	
	void Awake()
	{
		enabled = Debug.isDebugBuild;
	}

	void Update ()
	{
		if(Input.GetKeyDown(KeyCode.L))
		{
			Debug.Log ("Clearing Game AND Level save data.");
			GameManager.DeleteSaves();
		}
	}

	void OnGUI()
	{
		if(Hide)
			return;

		GUI.Box(new Rect(50, 10, 300, 20), "Level" + GameManager.Level.Ready + " AI" + GameManager.AI.Ready + " UI" + GameManager.UI.Ready + " Audio" + GameManager.Audio.Ready + " Subs" + GameManager.Subtitles.Ready);
		GUI.Box(new Rect(50, 35, 300, 20), "All Ready: " + GameManager.Instance.AllManagersReady);
		GUI.Box(new Rect(50, 60, 300, 20), "Player at: " + GameManager.Player.transform.position);
	}

}
