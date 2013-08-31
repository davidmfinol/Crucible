using UnityEngine;
using System.Collections;

public class AxelRunning : MonoBehaviour
{
	private float VerticalSpeed;
	
	// Use this for initialization
	void Start ()
	{
		animation.wrapMode = WrapMode.Loop;
		VerticalSpeed = Mathf.Sqrt(2 * 6 * 40);
		StartCoroutine("Running");
	}
	
	IEnumerator Running()
	{
		animation.CrossFade("RunningNinja");
		float t = 0;
		while (t < 2.7)
		{
			t+= Time.deltaTime;
			Vector3 newPos = transform.position;
			newPos.x-= 8 * Time.deltaTime;
			transform.position = newPos;
			yield return null;
		}
		StopCoroutine("Running");
		StartCoroutine("Jumping");
	}
	
	IEnumerator Jumping()
	{
		animation.CrossFade("Jumping");
		while (VerticalSpeed > 0)
		{
			Vector3 newPos = transform.position;
			newPos.x-= 6 * Time.deltaTime;
			newPos.y += VerticalSpeed * Time.deltaTime;
			VerticalSpeed -= Time.deltaTime * 40;
			transform.position = newPos;
			yield return null;
		}
		StopCoroutine("Jumping");
		StartCoroutine("Grabbing");
	}
	
	IEnumerator Grabbing ()
	{
		animation.wrapMode = WrapMode.Once;
		animation.CrossFade("Hanging");
		float t = 0;
		while (t < 1)
		{
			t+= Time.deltaTime;
			yield return null;
		}
		StopCoroutine("Grabbing");
		StartCoroutine("Climbing");
	}
	
	IEnumerator Climbing ()
	{
		animation.CrossFade("JumpingDownRight");
		while(animation.IsPlaying("JumpingDownRight"))
		{
			Vector3 newPos = transform.position;
			newPos.x-= 2f * Time.deltaTime;
			newPos.y+= 3.4f * Time.deltaTime;
			transform.position = newPos;
			yield return null;
		}
		StopCoroutine("Grabbing");
		transform.Rotate(0, 180, 0);
		StartCoroutine("Running");
	}
}
