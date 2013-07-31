using UnityEngine;
using System.Collections;

public class PauseMenuGUI : MonoBehaviour {
	
	public Texture2D MG;
	public Texture2D TWO;
	public int MGrow;
	public int MGcol;
	
	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
		KeyboardControl();	
	}
	
	void KeyboardControl(){
		if(Input.GetKeyDown(KeyCode.Escape)){
			Debug.Log ("In PMGUI");
			//MenuAnim.a(MG, 3, 3);
			MenuAnim.AnimateTexture(MG, 3, 3);
			MenuAnim.AnimateTexture(TWO, 3, 3);
		}
	}
}
