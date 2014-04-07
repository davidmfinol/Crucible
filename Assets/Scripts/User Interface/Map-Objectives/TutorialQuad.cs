using UnityEngine;
using System.Collections;

public class TutorialQuad : MonoBehaviour
{
	public void Update()
	{
		gameObject.transform.position = new Vector3(GameManager.Player.transform.position.x, GameManager.Player.transform.position.y+5, transform.position.z);
	}

}