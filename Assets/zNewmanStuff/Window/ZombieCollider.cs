using UnityEngine;
using System.Collections;

public class ZombieCollider : MonoBehaviour {

	public bool collisionTimer = false;
	public Transform Zombie;
	private float endTime;
	
	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
		if(collisionTimer){
			Debug.Log("update");
			if(endTime < Time.time){
				
				
				//Zombie.transform.GetComponent<CharacterController>().enabled = true;
				//Zombie.transform.GetComponent<ZombieFSM>().enabled = true;
				//Physics.IgnoreLayerCollision(0, 11, false);
				collisionTimer = false;
				Debug.Log("timeup");
			}
			else{
				//Vector3 zombPos = Zombie.transform.position;
				//Vector3 newZombPos = new Vector3(zombPos.x, zombPos.y, zombPos.z - 1.0f);
					
				//Zombie.transform.position = newZombPos;	
				Debug.Log("should move");
			}
		}
	}
	
	public void startCollisionTimer(Transform enemy, float timeLength){
		Physics.IgnoreLayerCollision(13, 11, true);  // window
		//Physics.IgnoreLayerCollision(0, 11, true);
		Zombie = enemy;
		endTime = Time.time + timeLength;		
		collisionTimer = true;
		
		Debug.Log("collisiontimer");
		/*
		Vector3 zombPos = Zombie.transform.position;
		Vector3 newZombPos = new Vector3(zombPos.x, zombPos.y, zombPos.z - 5.0f);
		Zombie.transform.GetComponent<CharacterController>().Move(newZombPos);*/
		
		
		
		//Zombie.GetComponent<CharacterController>().enabled = false;
		//Zombie.GetComponent<ZombieFSM>().enabled = true;
		
		/*
		Zombie = enemy;
		endTime = Time.time + timeLength;
		collisionTimer = true;
		Physics.IgnoreLayerCollision(13, 11, true);  // window
		Physics.IgnoreLayerCollision(12, 11, true);  // building
		*/
	}

}
