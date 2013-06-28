using UnityEngine;
using System.Collections;

public class ExplosionTimer : MonoBehaviour {
	
	private float startTime;
	private float endTime;
	private float explosionTimeLength = 4;
	
	// Use this for initialization
	void Start () {
		startTime = Time.time;
		endTime = Time.time + explosionTimeLength;
	}
	
	// Update is called once per frame
	void Update () {
		if(endTime < Time.time){
			//this.gameObject.SetActive(false);	
		}
	}
	
	
}
