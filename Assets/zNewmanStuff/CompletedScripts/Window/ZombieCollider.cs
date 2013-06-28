using UnityEngine;
using System.Collections;

public class ZombieCollider : MonoBehaviour {

	public bool collisionTimer = false;
	private Transform Zombie;
	private float endTime;
	
	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
		if(collisionTimer){
			if(endTime < Time.time){
				
				
				
				//Physics.IgnoreLayerCollision(12, 11, false);
				collisionTimer = false;
			}
			else{
				//Vector3  Zombie.transform.position;	
			}
		}
	}
	
	public void startCollisionTimer(Transform enemy, float timeLength){
		Physics.IgnoreLayerCollision(13, 11, true);  // window
		Zombie = enemy;
		collisionTimer = true;
		
		Zombie.transform.GetComponent<CharacterController>().enabled = false;
		
		/*
		Zombie = enemy;
		endTime = Time.time + timeLength;
		collisionTimer = true;
		Physics.IgnoreLayerCollision(13, 11, true);  // window
		Physics.IgnoreLayerCollision(12, 11, true);  // building
		*/
	}

}
