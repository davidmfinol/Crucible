using UnityEngine;
using System.Collections;

// Sets a timer for how long the window pieces stay rendered
public class WindowShatter : MonoBehaviour {
	
	private float startTime;
	private float timeVisiable = 2.5f; 
	
	// Use this for initialization
	void Start () {
		startTime = Time.time;
	}
	
	// Update is called once per frame
	void Update () {	
		if(Time.time - startTime > timeVisiable)
			this.gameObject.SetActive(false);
	}
}
