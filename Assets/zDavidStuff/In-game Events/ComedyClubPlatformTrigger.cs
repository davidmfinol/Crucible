using UnityEngine;
using System.Collections;

public class ComedyClubPlatformTrigger : MonoBehaviour 
{
	private bool _up = true;
	private bool _isTriggered = false;


	void OnTriggerEnter(Collider collider)
	{
		if(_isTriggered || !collider.CompareTag("Player")) 
			return;

		_isTriggered = true;
		PlayAnimation();
	}

	private void PlayAnimation()
	{
		Debug.Log("Play animation: " + _up );
		if (_up)
			animation.Play("Up");
		else
			animation.Play("Down");
		_up = !_up;
		_isTriggered = false;
	}
}
