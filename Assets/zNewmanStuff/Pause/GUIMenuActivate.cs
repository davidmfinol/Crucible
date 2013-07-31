using UnityEngine;
using System.Collections;

public class GUIMenuActivate : MonoBehaviour {
	
	public Texture2D MG;
	public Texture2D FG;
	public Texture2D BG;
	
	public Texture2D ControlsMenu;
	
	float SW = Screen.width;
	float SH = Screen.height;
	
	public bool controlsMenuOn = false;
	
	// Use this for initialization
	void Start () {
		GUI.color = new Color(1,1,1,1);
		GUI.skin.button.border.Remove(new Rect(0,0,20,20));
	}
	
	// Update is called once per frame
	void Update () {
	
	}
	
	void OnGUI(){
		/*	
		GUI.DrawTexture(new Rect(0,0,MG.width,MG.height), MG);
		GUI.DrawTexture(new Rect(0,0,FG.width,FG.height), FG);
		GUI.DrawTexture(new Rect(0,0,BG.width,BG.height), BG);*/
		GUI.DrawTexture(new Rect(0,0,Screen.width,Screen.height), BG);			
		GUI.DrawTexture(new Rect(0,0,Screen.width,Screen.height), MG);

		
		if(!controlsMenuOn){
			GUI.DrawTexture(new Rect(0,0,Screen.width,Screen.height), FG);
			GUI.color = new Color(1,1,1,0.4f);
			if(GUI.Button(new Rect(SW/2.82f, SH/1.55f, SW/3, SH/10), "")){//, GUIStyle.none)){
				controlsMenuOn = true;
				Debug.Log("Dadada");	
			}
			GUI.color = Color.white;
		}
		else{
			GUI.DrawTexture(new Rect(0,0,Screen.width,Screen.height), ControlsMenu);
			//if(Input.GetKeyDown(KeyCode.Escape)){
			//	controlsMenuOn = false;	
			//}
		}
		GUI.color = new Color(1,1,1,0.4f);
		if(GUI.Button(new Rect(SW/1.275f, SH/1.15f, SW/7, SH/12), "")){
			controlsMenuOn = false;
			gameObject.SetActive(false);
			Time.timeScale = 1;
		}
		GUI.color = Color.white;
	}
}
