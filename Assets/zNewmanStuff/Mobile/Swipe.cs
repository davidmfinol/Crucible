using UnityEngine;
using System.Collections;

public class Swipe : MonoBehaviour {
Vector2 StartPos;
int SwipeID = -1;
float minMovement = 20.0f;
	
	
private WeaponsGui WeaponSelect;	

// Use this for initialization
	void Start ()
	{
		WeaponSelect = GetComponent<WeaponsGui>();		
	}
	// Update is called once per frame
	void Update ()
	{
		
	    foreach (var T in Input.touches) {
	       var P = T.position;
		   //if(P.x < 400)
			//	continue;
	       if (T.phase == TouchPhase.Began && SwipeID == -1) {
	         SwipeID = T.fingerId;
	         StartPos = P;
	       } else if (T.fingerId == SwipeID) {
	         var delta = P - StartPos;
	         if (T.phase == TouchPhase.Moved && delta.magnitude > minMovement) {
	          SwipeID = -1;
	          if (Mathf.Abs (delta.x) > Mathf.Abs (delta.y)) {
						
	              if (delta.x > 0) {
						//Instantiate(BOX, Right, Quaternion.identity);	
						if(!WeaponSelect.Animating){	
	 						WeaponSelect.RightSelect = true;
							WeaponSelect.Animating = true;
						}
	                 Debug.Log ("Swipe Right Found");
	              } else {
	 
	                 Debug.Log ("Swipe Left Found");
						//Instantiate(BOX, Left, Quaternion.identity);	
						if(!WeaponSelect.Animating){	
							WeaponSelect.LeftSelect = true;
							WeaponSelect.Animating = true;	
						}		
	              }
	          } 
	          else {					
	              if (delta.y > 0) {
	 				//Instantiate(BOX, Up, Quaternion.identity);
	                 Debug.Log ("Swipe Up Found");
	              } else {
	 				//Instantiate(BOX, Down, Quaternion.identity);
	                 Debug.Log ("Swipe Down Found");
	              }
	          }
	         } else if (T.phase == TouchPhase.Canceled || T.phase == TouchPhase.Ended)
	          SwipeID = -1;
	       } 
	    }
	} 
}
