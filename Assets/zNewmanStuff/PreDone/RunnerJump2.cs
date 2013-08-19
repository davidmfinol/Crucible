using UnityEngine;
using System.Collections;

public class RunnerJump2 : MonoBehaviour {
	
	Transform Runner;
	float endJumpPos;
	bool Triggered = false;	
	
	private float VerticalSpeed;	
	
	// Use this for initialization
	void Start () {

		Runner = transform.parent.FindChild("Runner");
		VerticalSpeed = Mathf.Sqrt(2 * 6 * 40);		
		
		// End ();
		
	}
	
	void OnTriggerEnter(Collider other){
		if(!Triggered && other.tag == "Player"){
			endJumpPos = Runner.transform.position.x - 12f;
			Triggered = true;
			Runner.animation.CrossFade("Jumping");
			StartCoroutine(Jump());
		}
	}
	
	IEnumerator Jump(){

		while(Runner.transform.position.x > endJumpPos){	
			Vector3 newPos = Runner.transform.position;
			newPos.x -= 16f * Time.deltaTime;
			newPos.y += VerticalSpeed * Time.deltaTime;
			VerticalSpeed -= Time.deltaTime * 40;
			Runner.transform.position = newPos;
			yield return null;
		}	
				
		StartCoroutine(Stand(0.3f));
	}	
	
	IEnumerator Stand(float waitTime){
		Runner.animation.CrossFade("Idle_001");
		yield return new WaitForSeconds(waitTime);
		StartCoroutine(Jump2());
	}
	
	IEnumerator Jump2(){
		Runner.animation.CrossFade("Jumping");		
		endJumpPos = Runner.transform.position.y + 10f;
		while(Runner.transform.position.y < endJumpPos){	
			Vector3 newPos = Runner.transform.position;
			newPos.y += 14f * Time.deltaTime;
			Runner.transform.position = newPos;
			yield return null;
		}
		
		End ();
	}
	
	void End(){
		Runner.transform.localPosition = new Vector3(11.651334f,46.90792f,7.163269f); 
		Runner.transform.Rotate(0,-90,0);  // Only if End() is uncommented at top
		//Runner.transform.Rotate(0,90,0);
		Runner.animation.Play("Idle_001");
		gameObject.SetActive(false);		
	}
}

