using UnityEngine;
using System.Collections;

public class BirdMovement : MonoBehaviour {
	public Vector3 velocity;
	
	// Update is called once per frame
	void Update () {
		transform.Translate(velocity);
	}
}
