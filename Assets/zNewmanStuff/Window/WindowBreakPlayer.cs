using UnityEngine;
using System.Collections;

[RequireComponent(typeof(Collider))]
public class WindowBreakPlayer : MonoBehaviour {
	
    public Transform Zombie;	
	
	private bool isBroken = false;
	public float zombieChance = 0.05f;
	
	// Use this for initialization
	void Start () {		
		isBroken = this.transform.parent.GetComponent<WindowBreakZombie>().willZombiePopOut();
	}
	
	// Update is called once per frame
	void Update () {
		
	}
	
    void OnTriggerStay(Collider other){
		if(!isBroken){
			if(other.gameObject.layer == 9 || other.gameObject.layer == 8){	
				if(other.gameObject.GetComponent<HitBox>().Allegiance == BoxAllegiance.Team1){
				//if(other.tag.Equals("Player")){
					this.gameObject.SetActive(false);
					this.transform.parent.FindChild("Glass3").gameObject.SetActive(true);
					randomSpawner();
					isBroken = true;		
				}
			}	
		}
	}	
	
	void randomSpawner(){  // currently just spawns Zombies
		if(Random.value < zombieChance){
			Vector3 spawnPosition = this.gameObject.transform.position;
			spawnPosition.z += 1;
			spawnPosition.y += 1;
			MonoBehaviour.Instantiate(Zombie, spawnPosition, Quaternion.identity);
			this.transform.parent.GetComponent<ZombieCollider>().startCollisionTimer(Zombie, 0.1f);
		}
	}
}

