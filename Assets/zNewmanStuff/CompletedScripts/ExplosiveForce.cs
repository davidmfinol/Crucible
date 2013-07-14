using UnityEngine;
using System.Collections;

public class ExplosiveForce : MonoBehaviour {

	// Use this for initialization
	void Start () {
		Debug.Log("forces");
		rigidbody.AddExplosionForce(5, this.transform.position, 10000f);
		rigidbody.AddForce(new Vector3(500,500,500));		
	}
	
	// Update is called once per frame
	void Update () {
		Debug.Log("forces");
		rigidbody.AddExplosionForce(5, this.transform.position, 10000f);
		rigidbody.AddForce(new Vector3(500,500,500));
	}
}
