using UnityEngine;
using System.Collections;

public class LevelingSystem : MonoBehaviour {
	
	private Texture2D ExpBarBack;
	private Texture2D ExpBarFront;
	
	private float ExpBarLength = 100;
	private float ExpBarWidth = 4;
	private float ExpBarXPos = 10;
	private float ExpBarYPos = 45;
	
	
	private static int Level = 1;
	private static float EXP = 0;
	private static float CurExpLength = 0;
	
	// Use this for initialization
	void Start () {
		Color backColor = new Color (0.5f, 0.5f, 0.5f, 1);
		Color frontColor = new Color (0.8f, 0.8f, 0.8f, 1);
		
		ExpBarBack = new Texture2D(1, 1, TextureFormat.RGB24, false);
		ExpBarFront = new Texture2D(1, 1, TextureFormat.RGB24, false);
		ExpBarBack.SetPixel(0, 0, backColor);
		ExpBarFront.SetPixel(0, 0, frontColor);
		
		ExpBarBack.Apply();
		ExpBarFront.Apply();
	}
	
	// Update is called once per frame
	void Update () {
	
	}
	
	void OnGUI(){
		//GUI.DrawTexture(new Rect(X, X, wX, wY), ExpBarFull);	
		GUI.DrawTexture(new Rect(ExpBarXPos, ExpBarYPos, ExpBarLength, ExpBarWidth ), ExpBarBack, ScaleMode.StretchToFill);
		GUI.DrawTexture(new Rect(ExpBarXPos, ExpBarYPos, CurExpLength, ExpBarWidth), ExpBarFront, ScaleMode.StretchToFill);
		GUI.Label(new Rect(10, 28, 100, 20), "Level " + Level);
	}
	
	public static void UpdateExp(){//int ExpAmount){
		//EXP += ExpAmount;
		EXP += 100;
		if(EXP >= 1000){
			Level++;
			EXP -= 1000;
		}
		CurExpLength = EXP / 10;
	}
}
