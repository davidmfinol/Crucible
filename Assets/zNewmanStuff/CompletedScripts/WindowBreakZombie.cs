using UnityEngine;
using System.Collections;

[RequireComponent(typeof(Collider))]
public class WindowBreakZombie : MonoBehaviour {
	
    public Transform Zombie;
	ZombieCollider ZC;
	
	private bool isZombieBreakoutWindow; // = false;	
	private bool isBroken;
	
	private float zombieChance = 0.15f;

	void Awake () {
		if(Random.value < zombieChance)
			isZombieBreakoutWindow = true;
		else
			isZombieBreakoutWindow = false;		
	}
	
	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
		//if(isBroken)
			//Zombie.GetComponent<CharacterController>().enabled = false;			
	}
	
    void OnTriggerStay(Collider other){	
		
		if(isZombieBreakoutWindow && !isBroken && other.tag.Equals("Player")){
			isBroken = true;
			this.transform.FindChild("Glass1").gameObject.SetActive(false);
			this.transform.FindChild("Glass3").gameObject.SetActive(true);	
			// Vector3 spawnPosition = this.gameObject.transform.position;
			Vector3 spawnPosition = this.transform.FindChild("Glass1").position;
			spawnPosition.z += 1;
			spawnPosition.y += 1;

			MonoBehaviour.Instantiate(Zombie, spawnPosition, Quaternion.identity);
			//Zombie.collider.isTrigger = true;
			//Zombie.transform.collider.isTrigger = true;
			//Zombie.GetComponent<ZombieFSM>().enabled = true;
			//Zombie.gameObject.collider.isTrigger = true;


		}
	}	
	
	public bool willZombiePopOut(){
		return isZombieBreakoutWindow;	
	}
	
}
