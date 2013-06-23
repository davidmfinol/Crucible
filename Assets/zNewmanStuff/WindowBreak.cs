using UnityEngine;
using System.Collections;

[RequireComponent(typeof(Collider))]
public class WindowBreak : MonoBehaviour {
	
    public Transform Zombie;	
	
	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
		
	}
	
    void OnTriggerStay(Collider other){
		
		if(other.gameObject.layer == 9 || other.gameObject.layer == 8){		
			if(other.gameObject.GetComponent<HitBox>().Allegiance == BoxAllegiance.Team1){
				this.gameObject.SetActive(false);
				randomSpawner();
				Debug.Log("I've been hit");
			}
		}
	}	
	
	void randomSpawner(){
		Vector3 spawnPosition = this.gameObject.transform.position;
		spawnPosition.z -= 3;
		MonoBehaviour.Instantiate(Zombie, spawnPosition, Quaternion.identity);
	}
}
