using UnityEngine;
using System.Collections;

/// <summary>
/// Tutorial trigger sends a message to the main tutorial class when it is entered
/// </summary>
[AddComponentMenu("In-game Events/Tutorial/Tutorial Trigger")]
public class TutorialTrigger : MonoBehaviour
{
	public string Message;
	public string Message2;

	void OnTriggerEnter(Collider other)
	{
		if(other.CompareTag("Player"))
		   SendMessageUpwards(Message);
	}

	void OnTriggerExit(Collider other)
	{
		if(other.CompareTag("Player") && Message2 != null && !Message2.Equals(""))
			SendMessageUpwards(Message2);
	}
}
