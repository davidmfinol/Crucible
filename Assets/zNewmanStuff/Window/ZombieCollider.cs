using UnityEngine;
using System.Collections;

public class EnemyCollider : MonoBehaviour {

	public bool collisionTimer = false;
	public Transform Enemy;
	private float endTime;
	
	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
		if(collisionTimer){
			Debug.Log("update");
			if(endTime < Time.time){
				
				
				//Enemy.transform.GetComponent<CharacterController>().enabled = true;
				//Enemy.transform.GetComponent<EnemyFSM>().enabled = true;
				//Physics.IgnoreLayerCollision(0, 11, false);
				collisionTimer = false;
				Debug.Log("timeup");
			}
			else{
				//Vector3 zombPos = Enemy.transform.position;
				//Vector3 newZombPos = new Vector3(zombPos.x, zombPos.y, zombPos.z - 1.0f);
					
				//Enemy.transform.position = newZombPos;	
				Debug.Log("should move");
			}
		}
	}
	
	public void startCollisionTimer(Transform enemy, float timeLength){
		Physics.IgnoreLayerCollision(13, 11, true);  // window
		//Physics.IgnoreLayerCollision(0, 11, true);
		Enemy = enemy;
		endTime = Time.time + timeLength;		
		collisionTimer = true;
		
		Debug.Log("collisiontimer");
		/*
		Vector3 zombPos = Enemy.transform.position;
		Vector3 newZombPos = new Vector3(zombPos.x, zombPos.y, zombPos.z - 5.0f);
		Enemy.transform.GetComponent<CharacterController>().Move(newZombPos);*/
		
		
		
		//Enemy.GetComponent<CharacterController>().enabled = false;
		//Enemy.GetComponent<EnemyFSM>().enabled = true;
		
		/*
		Enemy = enemy;
		endTime = Time.time + timeLength;
		collisionTimer = true;
		Physics.IgnoreLayerCollision(13, 11, true);  // window
		Physics.IgnoreLayerCollision(12, 11, true);  // building
		*/
	}

}
