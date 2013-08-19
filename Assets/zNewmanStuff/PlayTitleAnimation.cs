using UnityEngine;
using System.Collections;

public class PlayTitleAnimation : MonoBehaviour {
	
	public int YPosTriggerAnimation = 40;
	
	private bool hasPlayedAnimation = false;
	
	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
		if(!hasPlayedAnimation && (GameLevel.Player.transform.position.y > YPosTriggerAnimation)){
			transform.FindChild("TitleAnimPlane").transform.gameObject.SetActive(true);
			hasPlayedAnimation = true;
		}
		//if(hasPlayedAnimation && transform.FindChild("TitleAnimPlane").gameObject){
		//	gameObject.SetActive(false);	
		//}
	}
	
	/* //Needs to be rigidbody moving object
	void OnTriggerEnter(Collider other){
		if(other.Equals(GameLevel.Player)){
			transform.FindChild("TitleAnimPlane").transform.gameObject.SetActive(true);				
		}
	}*/
}
