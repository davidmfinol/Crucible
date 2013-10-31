using UnityEngine;
using System.Collections;

public class GuiOpacity : MonoBehaviour {

	private float _currentOpacity;
	Color initialColor;
	
	void Start () 
	{
		initialColor = GetComponent<GUITexture>().color;
		initialColor.a = 0.1f;
		
		GetComponent<GUITexture>().color = initialColor;
	}
	
	void Update () 
	{
		initialColor = GetComponent<GUITexture>().color;
		initialColor.a = 0.3f;
		GetComponent<GUITexture>().color = initialColor;
	}
}
