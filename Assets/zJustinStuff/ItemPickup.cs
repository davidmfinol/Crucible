﻿using UnityEngine;
using System.Collections;

public class ItemPickup : MonoBehaviour {

	// Update is called once per frame
	void OnTriggerEnter(Collider other) {
		PlayerCharacterSettings sett = other.GetComponent<PlayerCharacterSettings>();
		other.CompareTag ("Player");

		if (sett != null) {
			sett.score += 1;
			print("Player Score now " + sett.score);

			Destroy( this.gameObject );

		}

	}

}