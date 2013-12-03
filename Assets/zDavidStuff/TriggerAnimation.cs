using UnityEngine;
using System.Collections;

public class TriggerAnimation : MonoBehaviour 
{
	bool _up = true;
	void OnTriggerEnter()
	{
		if (_up)
			animation.Play("Up");
		else
			animation.Play("Down");
		_up = !_up;
	}
}
