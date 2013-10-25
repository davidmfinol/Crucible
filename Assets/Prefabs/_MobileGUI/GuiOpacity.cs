using UnityEngine;
using System.Collections;

public class GuiOpacity : MonoBehaviour {

	private float _currentOpacity;
	private CharacterAnimator _player;
	Color initialColor;
	// Use this for initialization
	void Start () 
	{
		initialColor = GetComponent<GUITexture>().color;
		initialColor.a = 0.1f;
		
		GetComponent<GUITexture>().color = initialColor;
		_player = GameManager.Player.GetComponent<CharacterAnimator>();
	}
	
	// Update is called once per frame
	void Update () 
	{
		initialColor = GetComponent<GUITexture>().color;
		initialColor.a = 0.3f;
		GetComponent<GUITexture>().color = initialColor;
	}
}
