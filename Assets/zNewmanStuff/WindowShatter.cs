using UnityEngine;
using System.Collections;

public class WindowShatter : MonoBehaviour {
	
    public Transform Zombie;
	
	private bool isBroken = false;
	private bool isZombieBreakoutWindow = false;
	
	// Use this for initialization
	void Start () {
	
		if(Random.value < 1.0f)  // 1 in 10 chance of zombie popping out window simply by being near the window
			isZombieBreakoutWindow = true;
	}
	
	// Update is called once per frame
	void Update () {
	
	}
	
    void OnTriggerStay(Collider other){
		
		
		if(isZombieBreakoutWindow && !isBroken && other.tag.Equals("Player")){
				isBroken = true;
				this.transform.FindChild("Window").gameObject.SetActive(false);
				//this.transform.FindChild("Shatter Effect").gameObject.SetActive(true);	
				Vector3 spawnPosition = this.gameObject.transform.position;
				spawnPosition.z += 40;
				spawnPosition.y += 3;
				MonoBehaviour.Instantiate(Zombie, spawnPosition, Quaternion.identity);			
		}
		
		//if(other.tag.Equals("Player")){
		//	Debug.Log("tag works");
		//}
		//Debug.Log("tag: " + other.tag.);
		
		//Debug.Log("Collided");
		//if(isZombieBreakoutWindow && !isBroken){
		/*
			if(other.gameObject.GetComponent<HitBox>().Allegiance == BoxAllegiance.Team1){
				isBroken = true;
				this.transform.FindChild("Window").gameObject.SetActive(false);
				//this.transform.FindChild("Shatter Effect").gameObject.SetActive(true);	
				Vector3 spawnPosition = this.gameObject.transform.position;
				spawnPosition.z += 40;
				spawnPosition.y += 3;
				MonoBehaviour.Instantiate(Zombie, spawnPosition, Quaternion.identity);
			}
		
		}*/
		
		/*
		Debug.Log("Collided");
		
		if(!isBroken){
			if(other.gameObject.layer == 9 || other.gameObject.layer == 8){		
				Debug.Log("Recognized Layer");
				if(other.gameObject.GetComponent<HitBox>().Allegiance == BoxAllegiance.Team1){  
					isBroken = true;
					Debug.Log("I've been hit");
					
					this.transform.FindChild("Window").gameObject.SetActive(false);
					this.transform.FindChild("Shatter Effect").gameObject.SetActive(true);
					//this.gameObject.SetActive(false);
					randomSpawner();
	
				}
			}
		}*/
	}	
	
	
	/*
	void randomSpawner(){
		Vector3 spawnPosition = this.gameObject.transform.position;
		spawnPosition.z += 40;
		spawnPosition.y += 3;
		MonoBehaviour.Instantiate(Zombie, spawnPosition, Quaternion.identity);
	}	
	*/
}
