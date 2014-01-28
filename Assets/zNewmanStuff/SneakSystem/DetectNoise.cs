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
			EnemyInput EnemyInput = transform.parent.GetComponent<EnemyInput>();
			if(EnemyInput.Awareness != EnemyInput.AwarenessType.Chasing){

				_searchLocation = other.transform.position;
				// Go into search mode
				transform.parent.GetComponent<EnemyInput>().Awareness = EnemyInput.AwarenessType.Searching;
				print("heard player");
			}
		}
	}*/

}
