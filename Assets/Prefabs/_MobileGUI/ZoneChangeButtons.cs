using UnityEngine;
using System.Collections;

public class ZoneChangeButtons : MonoBehaviour 
{
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
		if(_player!=null && _player.CanTransitionZ && _player.Z_Higher != _player.CurrentZone)
		{
			initialColor.a = 0.2f;
		}
		else initialColor.a = 0.1f;
		GetComponent<GUITexture>().color = initialColor;
	}
}
