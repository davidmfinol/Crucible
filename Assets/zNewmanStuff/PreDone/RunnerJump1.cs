using UnityEngine;
using System.Collections;

public class RunnerJump1 : MonoBehaviour {
	
	Transform Runner;
	float endJumpPos;
	
	bool Triggered = false;
	bool Grab1 = false;
	float projectedTime;
	private float VerticalSpeed;	

	
	// Use this for initialization
	void Start () {
		Runner = transform.parent.FindChild("Runner");
		endJumpPos = Runner.transform.position.x + 10.4f;
		VerticalSpeed = Mathf.Sqrt(2 * 6 * 40);	
		
		// Take this out;
		// End ();
	}
	
	// Update is called once per frame
	void Update () {
		
	}
	
	void OnTriggerEnter(Collider other){
		if(!Triggered && other.tag == "Player"){
			Triggered = true;
			Runner.animation.CrossFade("Jumping");
			StartCoroutine(Jump());
		}
	}
	
	IEnumerator Jump(){
		// put Grab1 here;
		while(Runner.transform.position.x < endJumpPos){
			
			if(!Grab1 && Runner.transform.position.x > endJumpPos - 3f){
				Runner.animation.CrossFade("Hanging");
				Runner.animation.wrapMode = WrapMode.Once;
				Grab1 = true;
			}
			
			Vector3 newPos = Runner.transform.position;
			newPos.x += 10.4f * Time.deltaTime;
			newPos.y += VerticalSpeed * Time.deltaTime;
			VerticalSpeed -= Time.deltaTime * 40;
			Runner.transform.position = newPos;
			yield return null;
		}	
		StartCoroutine(GetUp(0.5f));		
		
	}
	
	IEnumerator GetUp(float waitTime){
		yield return new WaitForSeconds(waitTime);
		Runner.animation.CrossFade("JumpingDownRight");		
		while(Runner.animation.IsPlaying("JumpingDownRight"))
		{
			Vector3 newPos = Runner.transform.position;
			newPos.x += 0.5f * Time.deltaTime;
			newPos.y += 3f * Time.deltaTime;
			Runner.transform.position = newPos;
			yield return null;
		}
		endJumpPos = Runner.transform.position.x + 2.7f;
		StartCoroutine(Running());	
	}
	
	IEnumerator Running(){
		Runner.animation.CrossFade("Running");		
		while(Runner.transform.position.x < endJumpPos){
			Vector3 newPos = Runner.transform.position;
			newPos.x += 9f * Time.deltaTime;
			//newPos.y += VerticalSpeed * Time.deltaTime;
			//VerticalSpeed -= Time.deltaTime * 40;
			Runner.transform.position = newPos;
			yield return null;			
		}
		End ();

	}
	
	void End(){
		
		Runner.transform.localPosition = new Vector3(30.66977f,31.89074f,5.562922f); 
		
		//Vector3 teleportPos = Runner.transform.position;
		//teleportPos.x += 20f;
		//teleportPos.y += 19.19f;
		//teleportPos.z += 1.7f;
		// Runner.transform.position = teleportPos;
		Runner.transform.Rotate(0,180,0);
		Runner.animation.Play("Idle_001");
		Runner.animation.wrapMode = WrapMode.Loop;
		gameObject.SetActive(false);		
	}
	
}
