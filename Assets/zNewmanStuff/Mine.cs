using UnityEngine;
using System;
using System.Collections;
using System.Collections.Generic;

// Restructure this Code

public class Mine : MonoBehaviour { // PlayerCharacterStateMachineState { // MonoBehaviour {
	
	// public Mine(PlayerCharacterStateMachine controller) : base(controller) { }
	
	GameObject player;
	//CharacterController player;
	
	// Use this for initialization
	void Start () {
		
		player = GameObject.Find("THEULTIMATEFINALRunningCharFinalfinalfinal(Clone)");

	}

	// protected override Enum OnUpdate(){
	void Update () {
		
		//Vector3 te = player.transform.position;
		
		// Change key
		if(Input.GetKeyDown(KeyCode.M)){
			// CharacterController.rigidbody.position();
			//GameObject mineCreate = (GameObject)Instantiate(Resources.Load("FloatingMine3"));
			//GameObject mineCreate = (GameObject)MonoBehaviour.Instantiate(Resources.Load ("FloatingMine3"), Controller.rigidbody.position, Quaternion.identity);
			GameObject mineCreate = (GameObject)MonoBehaviour.Instantiate(Resources.Load ("FloatingMine3"), player.transform.position + (player.transform.forward * 2), Quaternion.identity);
		}
		
		//return nextState;
	}
}
