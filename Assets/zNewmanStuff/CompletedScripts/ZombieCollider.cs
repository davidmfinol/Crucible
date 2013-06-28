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
				Physics.IgnoreLayerCollision(12, 11, false);
				collisionTimer = false;
			}
		}
	}
	
	public void startCollisionTimer(Transform enemy, float timeLength){
		Zombie = enemy;
		endTime = Time.time + timeLength;
		collisionTimer = true;
		Physics.IgnoreLayerCollision(13, 11, true);  // window
		Physics.IgnoreLayerCollision(12, 11, true);  // building
	}

}
