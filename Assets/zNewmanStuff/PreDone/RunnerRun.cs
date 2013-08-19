using UnityEngine;
using System.Collections;

public class RunnerRun : MonoBehaviour {
	
	Transform Runner;
	float endJumpPos;
	bool Triggered = false;	
	
	private float VerticalSpeed;		
	
	// Use this for initialization
	void Start () {
		Runner = transform.parent.FindChild("Runner");
		VerticalSpeed = Mathf.Sqrt(2 * 6 * 40);			
	}
	
	void OnTriggerEnter(Collider other){
		if(!Triggered && other.tag == "Player"){
			//endJumpPos = Runner.transform.position.x - 12f;
			Triggered = true;
			Runner.animation.CrossFade("RunningNinja");
			Runner.transform.Rotate(0,90,0);
			StartCoroutine(NinjaRun());
		}
	}
	/*
	IEnumerator Turn(){
		float endRotatePos = 270;
		while(Runner.transform.rotation.y > endRotatePos){	
			
			Runner.transform.rotation.
			
			Vector3 newPos = Runner.transform.position;
			newPos.x -= 16f * Time.deltaTime;
			newPos.y += VerticalSpeed * Time.deltaTime;
			VerticalSpeed -= Time.deltaTime * 40;
			Runner.transform.position = newPos;
			yield return null;
		}		
		
	}*/
	
	IEnumerator NinjaRun(){
		float endRunPos = Runner.transform.position.x - 15;
		while(Runner.transform.position.x > endRunPos){	
			Vector3 newPos = Runner.transform.position;
			newPos.x -= 13f * Time.deltaTime;
			Runner.transform.position = newPos;
			yield return null;
		}	
		StartCoroutine(Jump ());
	}
	
	IEnumerator Jump(){
		Runner.animation.CrossFade("Jumping");		
		float endJumpPos = Runner.transform.position.x - 8;
		while(Runner.transform.position.x > endJumpPos){	
			Vector3 newPos = Runner.transform.position;
			newPos.x -= 16f * Time.deltaTime;
			newPos.y += VerticalSpeed * Time.deltaTime;
			VerticalSpeed -= Time.deltaTime * 40;
			Runner.transform.position = newPos;
			yield return null;
		}
		End ();
	}
	
	void End(){
		Runner.gameObject.SetActive(false);
	}	
}
