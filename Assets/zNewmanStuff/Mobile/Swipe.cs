using UnityEngine;
using System.Collections;

public class Swipe : MonoBehaviour
{
	Vector2 StartPos;
	int SwipeID = -1;
	float minMovement = 20.0f;

	public Transform DebugBox;
	private WeaponsGui _weaponsGUI;
	private PlayerCharacterInput _input;


	void Start ()
	{
		_weaponsGUI = GetComponent<WeaponsGui> ();
		_input = GameManager.Player.GetComponent<PlayerCharacterInput>();
	}

	void Update ()
	{	
#if !UNITY_EDITOR
		input.Jump = false;
		input.Attack1 = false;
		input.Attack2 = false;
		bool moveTouched = false;
		foreach (var T in Input.touches) 
		{
			var P = T.position;
			//Top right weapons switch
			if (P.x > 2 * Screen.width / 3 && P.y > 3 * Screen.height / 4)
				InterpretWeaponsGuiSwipe(T);
			
			else if (P.x < Screen.width / 2 )
			{
				moveTouched = true;
				InterpretMovementSwipe(T);
			}
			
			else
				InterpretInteractSwipe(T);		
		}
		if(!moveTouched)
			input.HorizontalInput = 0;
#endif		
	}
	
	private void InterpretWeaponsGuiSwipe(Touch touch)
	{
		Vector2 position = touch.position;
		if (touch.phase == TouchPhase.Began && SwipeID == -1)
		{
			SwipeID = touch.fingerId;
			StartPos = position;
		} 
			
		else if (touch.fingerId == SwipeID)
		{
			Vector2 delta = position - StartPos;
			if (touch.phase == TouchPhase.Moved && delta.magnitude > minMovement) 
			{
				SwipeID = -1;
				if (Mathf.Abs (delta.x) > Mathf.Abs (delta.y)) 
				{
					
					if (delta.x > 0) 
					{
						//Instantiate(BOX, Right, Quaternion.identity);	
						if (!_weaponsGUI.Animating) 
						{	
							_weaponsGUI.RightSelect = true;
							_weaponsGUI.Animating = true;
						}
						Debug.Log ("Swipe Right Found");
					} else {
 
						Debug.Log ("Swipe Left Found");
						//Instantiate(BOX, Left, Quaternion.identity);	
						if (!_weaponsGUI.Animating) {	
							_weaponsGUI.LeftSelect = true;
							_weaponsGUI.Animating = true;	
						}		
					}
				} else {					
					if (delta.y > 0) {
						//Instantiate(BOX, Up, Quaternion.identity);
						Debug.Log ("Swipe Up Found");
					} else {
						//Instantiate(BOX, Down, Quaternion.identity);
						Debug.Log ("Swipe Down Found");
					}
				}
			} else if (touch.phase == TouchPhase.Canceled || touch.phase == TouchPhase.Ended)
				SwipeID = -1;
		}
	}
	
	private void InterpretMovementSwipe(Touch touch)
	{		
		// first movement slider: input.HorizontalInput = (touch.position.x - Screen.width/4)/(Screen.width/4);
		Vector2 position = touch.position;
		if (touch.phase == TouchPhase.Began && SwipeID == -1)
		{
			SwipeID = touch.fingerId;
			StartPos = position;
		} 
		
		else if (touch.fingerId == SwipeID)
		{
			Vector2 delta = position - StartPos;
			if (touch.phase == TouchPhase.Moved && delta.magnitude > minMovement) 
			{
				SwipeID = -1;
				if (Mathf.Abs (delta.x) > Mathf.Abs (delta.y)) 
				{
					
					if (delta.x > 0) 
					{
						//Instantiate(BOX, Right, Quaternion.identity);	
						_input.HorizontalInput = 1-1/delta.x;
						Debug.Log ("Swipe Right Found");
					} else {
						_input.HorizontalInput = -1+1/delta.x;
						Debug.Log ("Swipe Left Found");
						//Instantiate(BOX, Left, Quaternion.identity);			
					}
				} else {					
					if (delta.y > .5) {
						//Instantiate(BOX, Up, Quaternion.identity);
						_input.Jump = true;
					} else {
						_input.Attack2 = true;
						//Instantiate(BOX, Down, Quaternion.identity);
						Debug.Log ("Swipe Down Found");
					}
				}
			} else if (touch.phase == TouchPhase.Canceled || touch.phase == TouchPhase.Ended)
				SwipeID = -1;
		}
	}
	
	private void InterpretInteractSwipe(Touch touch)
	{
		Vector2 position = touch.position;
		if (touch.phase == TouchPhase.Began && SwipeID == -1)
		{
			SwipeID = touch.fingerId;
			StartPos = position;
		} 
			
		else if (touch.fingerId == SwipeID)
		{
			Vector2 delta = position - StartPos;
			if (touch.phase == TouchPhase.Moved && delta.magnitude > minMovement) 
			{
				SwipeID = -1;
				if (Mathf.Abs (delta.x) > Mathf.Abs (delta.y)) 
				{
					
					if (delta.x > 0) 
					{
						//Instantiate(BOX, Right, Quaternion.identity);	
						_input.Attack1 = true;
						Debug.Log ("Swipe Right Found");
					} else {
 						_input.Attack1 = true;
						Debug.Log ("Swipe Left Found");
						//Instantiate(BOX, Left, Quaternion.identity);			
					}
				} else {					
					if (delta.y > .5) {
						//Instantiate(BOX, Up, Quaternion.identity);
						_input.Jump = true;
					} else {
						_input.Attack2 = true;
						//Instantiate(BOX, Down, Quaternion.identity);
						Debug.Log ("Swipe Down Found");
					}
				}
			} else if (touch.phase == TouchPhase.Canceled || touch.phase == TouchPhase.Ended)
				SwipeID = -1;
		}
	}
}
