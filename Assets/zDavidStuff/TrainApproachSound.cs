using UnityEngine;
using System.Collections;

public class TrainApproachSound : MonoBehaviour {
	
	float StartYPos;
	float PrevYPos;
	bool hasPlayedAudio = false;
	// bool FirstPlay = true;
	int count = 0;
	
	
	//Yeah I know, this script is terribad
	
	// Use this for initialization
	void Start () {
		StartYPos = transform.position.y;
		PrevYPos = StartYPos;
		//audio.Play();	
	}
	
	// Update is called once per frame
	void Update () {
		
		if(!hasPlayedAudio && transform.position.y > PrevYPos){
			hasPlayedAudio = true;
			count++;
			if(count % 2 == 1){
				audio.Play();

			}
		}
		else if(hasPlayedAudio && transform.position.y < PrevYPos){
			hasPlayedAudio = false;	
		}
			
		PrevYPos = transform.position.y;
	}
}
