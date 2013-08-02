using UnityEngine;
using System.Collections;

[RequireComponent(typeof(Collider))]
public class WindowBreakZombie : MonoBehaviour {
	
    public Transform Zombie;
	private Transform ZombieInGame;
	
	private int AnimationSteps = 2;
	private float moveDistance = 1.5f;
	private float movePerFrame;
	
	private bool isZombieBreakoutWindow; // = false;	
	private bool isBroken = false;
	
	public float zombieChance = 0.15f;

	void Awake () {
		if(Random.value < zombieChance)
			isZombieBreakoutWindow = true;
		else
			isZombieBreakoutWindow = false;		
	}
	
	// Use this for initialization
	void Start () {
		movePerFrame = moveDistance / AnimationSteps;
	}
	
	// Update is called once per frame
	void Update () {
		if(isBroken){
			Vector3 newZombPos = new Vector3(ZombieInGame.transform.position.x, ZombieInGame.transform.position.y, ZombieInGame.transform.position.z - movePerFrame);
			ZombieInGame.transform.position = newZombPos;
			AnimationSteps--;
			if(AnimationSteps == 0){
				isBroken = false;	
			}
		}
		
	}
	
    void OnTriggerStay(Collider other){	
		
		if(isZombieBreakoutWindow && !isBroken && other.tag.Equals("Player")){
			isBroken = true;
			isZombieBreakoutWindow = false;
			this.transform.FindChild("Glass1").gameObject.SetActive(false);
			this.transform.FindChild("Glass3").gameObject.SetActive(true);	
			// Vector3 spawnPosition = this.gameObject.transform.position;
			Vector3 spawnPosition = this.transform.FindChild("Glass1").position;
			spawnPosition.z += 1;
			spawnPosition.y += 1;
			//MonoBehaviour.Instantiate(Zombie, spawnPosition, Quaternion.identity);
			ZombieInGame = (Transform) Instantiate(Zombie, spawnPosition, Quaternion.identity);
			//this.transform.GetComponent<ZombieCollider>().startCollisionTimer(zombCopy, 2.0f);			
			//Vector3 newZombPos = new Vector3(zombCopy.transform.position.x, zombCopy.transform.position.y, zombCopy.transform.position.z - 1);
			//zombCopy.transform.position = newZombPos;
		}
	}	
	
	public bool willZombiePopOut(){
		return isZombieBreakoutWindow;	
	}
	
}
