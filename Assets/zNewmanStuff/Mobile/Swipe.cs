using UnityEngine;
using System.Collections;

public class Swipe : MonoBehaviour {
Vector2 StartPos;
int SwipeID = -1;
float minMovement = 20.0f;
	
	
private WeaponsGui WeaponSelect;	
// Testing	
// public Transform BOX;
private Vector3 Left;
private Vector3 Right;
private Vector3 Up;
private Vector3 Down;
	
// Testing	
	
// Use this for initialization
	void Start ()
	{
		WeaponSelect = GetComponent<WeaponsGui>();
		Left = new Vector3(-4, 2, 0);
		Right = new Vector3(4, 2, 0);
		Up = new Vector3(0, 6, 0);
		Down = new Vector3(0, 0, 0);		
	}
	// Update is called once per frame
	void Update ()
	{
		
		//if(Input.GetKeyDown(KeyCode.J)){
		//	Instantiate(BOX, Right, Quaternion.identity);
		//}
		
	    foreach (var T in Input.touches) {
	       var P = T.position;
	       if (T.phase == TouchPhase.Began && SwipeID == -1) {
	         SwipeID = T.fingerId;
	         StartPos = P;
	       } else if (T.fingerId == SwipeID) {
	         var delta = P - StartPos;
	         if (T.phase == TouchPhase.Moved && delta.magnitude > minMovement) {
	          SwipeID = -1;
	          if (Mathf.Abs (delta.x) > Mathf.Abs (delta.y)) {
						
				//Testing
				//Instantiate(MINE, MINE.position, Quaternion.identity);		
				
				//Testing
						
	              if (delta.x > 0) {
						//Instantiate(BOX, Right, Quaternion.identity);		
	 					WeaponSelect.RightSelect = true;
						WeaponSelect.Animating = true;
	                 Debug.Log ("Swipe Right Found");
	              } else {
	 
	                 Debug.Log ("Swipe Left Found");
						//Instantiate(BOX, Left, Quaternion.identity);	
						WeaponSelect.LeftSelect = true;
						WeaponSelect.Animating = true;	
	              }
	          } 
	          else {
				//Testing
				//Instantiate(Zombie, Zombie.position, Quaternion.identity);							
						
				//Testing						
						
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
