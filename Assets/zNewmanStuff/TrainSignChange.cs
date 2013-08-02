using UnityEngine;
using System.Collections;

public class TrainSignChange : MonoBehaviour {
	
	public Texture2D Proceed;
	public Texture2D Warning;
	
	float YStartPos;
	
	// Use this for initialization
	void Start () {
		YStartPos = transform.position.y;
	}
	
	// Update is called once per frame
	void Update () {
		
		//bool val = false;
		if(transform.position.y.Equals(YStartPos)){
			//val = true;	
			
			transform.FindChild("pPlane1").renderer.material.mainTexture = Proceed;
			transform.FindChild("pPlane2").renderer.material.mainTexture = Proceed;
			transform.FindChild("pPlane3").renderer.material.mainTexture = Proceed;
			
		}
		else{
			transform.FindChild("pPlane1").renderer.material.mainTexture = Warning;
			transform.FindChild("pPlane2").renderer.material.mainTexture = Warning;
			transform.FindChild("pPlane3").renderer.material.mainTexture = Warning;			
		}
		
		/*
		transform.FindChild("pPlane1").gameObject.SetActive(val);	
		transform.FindChild("pPlane2").gameObject.SetActive(val);
		transform.FindChild("pPlane3").gameObject.SetActive(val);
		transform.FindChild("wPlane1").gameObject.SetActive(!val);	
		transform.FindChild("wPlane2").gameObject.SetActive(!val);
		transform.FindChild("wPlane3").gameObject.SetActive(!val);		*/
	}
}
