using UnityEngine;
using System.Collections;

[RequireComponent(typeof(Collider))]
public class WindowBreakZombie : MonoBehaviour {
	
    public Transform Zombie;

	private bool isZombieBreakoutWindow; // = false;	
	private bool isBroken;
	
	public float zombieChance = 0.15f;

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
			this.transform.GetComponent<ZombieCollider>().startCollisionTimer(Zombie, 2.0f);	
		}
	}	
	
	public bool willZombiePopOut(){
		return isZombieBreakoutWindow;	
	}
	
}
