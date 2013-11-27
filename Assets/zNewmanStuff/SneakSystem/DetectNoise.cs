using UnityEngine;
using System.Collections;

public class DetectNoise : MonoBehaviour {

	private Vector3 _searchLocation;

	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
	
	}

	/*void OnTriggerEnter(Collider other){
		if(other.tag == "PlayerSound"){
			ZombieInput zombieInput = transform.parent.GetComponent<ZombieInput>();
			if(zombieInput.Awareness != ZombieInput.AwarenessType.Chasing){

				_searchLocation = other.transform.position;
				// Go into search mode
				transform.parent.GetComponent<ZombieInput>().Awareness = ZombieInput.AwarenessType.Searching;
				print("heard player");
			}
		}
	}*/

}
