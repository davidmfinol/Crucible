using UnityEngine;
using System.Collections;

public class MenuAnim : MonoBehaviour {
	
	static bool Animating = false;
	public static Texture2D AnimTex;
	static Texture2D texture;
	
	public static Rect textureCrop = new Rect( 0.0f, 0f, 0.1f, 0.5f );
	public static Vector2 position = new Vector2( 10, 10 );	
	
	
	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
		Debug.Log("In Update");	
	}
	
	void OnGUI(){

		Debug.Log("In OnGUI");
		if(Animating){
			//GUI.Box(new Rect(0, 0,Screen.width,Screen.height), "hello"); 
			//GUI.DrawTexture(new Rect(0,0, texture.width, texture.height), texture);
			Debug.Log("babsbdfb");
    		GUI.BeginGroup( new Rect( 0,0, Screen.width, Screen.height) );
   			GUI.DrawTexture ( new Rect(-(texture.width/8), -20, texture.width*3, texture.height*3), texture );
    		GUI.EndGroup();
    		//GUI.BeginGroup( new Rect( position.x, position.y, texture.width * textureCrop.width, texture.height * textureCrop.height ) );
   			//GUI.DrawTexture( new Rect( -texture.width * textureCrop.x, -texture.height * textureCrop.y, texture.width, texture.height ), texture );
    		//GUI.EndGroup();				
			
		}
	}	
	
	public static void AnimateTexture(Texture2D tex, int row, int col){
		Animating = true;
		AnimTex = tex;
		texture = tex;
		Debug.Log("Animating: " + Animating);
	}
}
