using UnityEngine;
using System.Collections;

public class Swipe : MonoBehaviour
{
	private Vector2 _startPos;
	private int _swipeID = -1;
	private float _minMovement = 20.0f;

	public int MovementUIType = 0;
	public float DistanceForMaxSpeed = Screen.width/8;
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
#if !UNITY_EDITOR && !UNITY_STANDALONE
		_input.Jump = new Vector2(0,0);
		_input.Attack = 0;
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
				InterpretMovementSwipe(T, P);
			}
			
			else
				InterpretInteractSwipe(T);		
		}
		if(!moveTouched)
			_input.Horizontal = 0;
#endif		
	}
	
	private void InterpretWeaponsGuiSwipe(Touch touch)
	{
		Vector2 position = touch.position;
		if (touch.phase == TouchPhase.Began && _swipeID == -1)
		{
			_swipeID = touch.fingerId;
			_startPos = position;
		} 
			
		else if (touch.fingerId == _swipeID)
		{
			Vector2 delta = position - _startPos;
			if (touch.phase == TouchPhase.Moved && delta.magnitude > _minMovement) 
			{
				//_swipeID = -1;
				if (Mathf.Abs (delta.x) > Mathf.Abs (delta.y)) 
				{				
					if (delta.x > 0) 
					{
						//Instantiate(BOX, Right, Quaternion.identity);	
						/*if (!_weaponsGUI.Animating) 
						{	
							_weaponsGUI.RightSelect = true;
							_weaponsGUI.Animating = true;
						}*/
						MovementUIType++;
						if(MovementUIType > 2)
							MovementUIType = 0;
						Debug.Log ("Swipe Right Found");
					} else {
						MovementUIType--;
						if(MovementUIType < 0)
							MovementUIType = 2;
						Debug.Log ("Swipe Left Found");
						//Instantiate(BOX, Left, Quaternion.identity);	
						/*if (!_weaponsGUI.Animating) {	
							_weaponsGUI.LeftSelect = true;
							_weaponsGUI.Animating = true;	
						}	*/	
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
				_swipeID = -1;
		}
	}
	
	private void InterpretMovementSwipe(Touch touch, Vector2 moveStart)
	{		
		// first movement slider: 
		if (MovementUIType == 0)
			_input.Horizontal = (touch.position.x - Screen.width/4)/(Screen.width/4);
		else if (MovementUIType == 1)
		{
			Vector2 position = touch.position;
			if (touch.phase == TouchPhase.Stationary)
				return;
			else if (touch.phase == TouchPhase.Began && _swipeID == -1)
			{
				_swipeID = touch.fingerId;
				_startPos = position;
			} 
		
			else if (touch.fingerId == _swipeID)
			{
				Vector2 delta = position - _startPos;
				if (touch.phase == TouchPhase.Moved && delta.magnitude > _minMovement) 
				{
					_swipeID = -1;
					if (Mathf.Abs (delta.x) > Mathf.Abs (delta.y)) 
					{
						
						if (delta.x > 0) 
						{
							//Instantiate(BOX, Right, Quaternion.identity);	
							_input.Horizontal = delta.x/DistanceForMaxSpeed;
							Debug.Log ("Swipe Right Found");
						} else {
							_input.Horizontal = delta.x/DistanceForMaxSpeed;
							Debug.Log ("Swipe Left Found");
							//Instantiate(BOX, Left, Quaternion.identity);			
						}
					/*} else {					
					if (delta.y > .5) {
						//Instantiate(BOX, Up, Quaternion.identity);
						_input.Jump = true;
					} else {
						_input.Attack2 = true;
						//Instantiate(BOX, Down, Quaternion.identity);
						Debug.Log ("Swipe Down Found");
					}*/
					}
				} else if (touch.phase == TouchPhase.Canceled || touch.phase == TouchPhase.Ended)
					_swipeID = -1;
			}
		}
		else if (MovementUIType == 2 && touch.position.x < Screen.width/3 && touch.position.x > Screen.width/6)
		{
			Vector2 position = touch.position;
			if (touch.phase == TouchPhase.Stationary)
				return;
			else if (touch.phase == TouchPhase.Began && _swipeID == -1)
			{
				_swipeID = touch.fingerId;
				_startPos = position;
			} 
			
			else if (touch.fingerId == _swipeID)
			{
				Vector2 delta = position - _startPos;
				if (touch.phase == TouchPhase.Moved && delta.magnitude > _minMovement) 
				{
					_swipeID = -1;
					if (Mathf.Abs (delta.x) > Mathf.Abs (delta.y)) 
					{
						
						if (delta.x > 0) 
						{
							//Instantiate(BOX, Right, Quaternion.identity);	
							_input.Horizontal = delta.x/DistanceForMaxSpeed;
							Debug.Log ("Swipe Right Found");
						} else {
							_input.Horizontal = delta.x/DistanceForMaxSpeed;
							Debug.Log ("Swipe Left Found");
							//Instantiate(BOX, Left, Quaternion.identity);			
						}
						/*} else {					
					if (delta.y > .5) {
						//Instantiate(BOX, Up, Quaternion.identity);
						_input.Jump = true;
					} else {
						_input.Attack2 = true;
						//Instantiate(BOX, Down, Quaternion.identity);
						Debug.Log ("Swipe Down Found");
					}*/
					}
				} else if (touch.phase == TouchPhase.Canceled || touch.phase == TouchPhase.Ended)
					_swipeID = -1;
			}
		}
	}
		
	private void InterpretInteractSwipe(Touch touch)
	{
		Vector2 position = touch.position;
		if (touch.phase == TouchPhase.Began && _swipeID == -1)
		{
			_swipeID = touch.fingerId;
			_startPos = position;
		} 
			
		else if (touch.fingerId == _swipeID)
		{
			Vector2 delta = position - _startPos;
			if (touch.phase == TouchPhase.Moved && delta.magnitude > _minMovement) 
			{
				_swipeID = -1;
				_input.Vertical = delta.y;
				if (Mathf.Abs (delta.x) > Mathf.Abs (delta.y)) 
				{
					
					if (delta.x > 0) 
					{
						//Instantiate(BOX, Right, Quaternion.identity);	
						_input.Attack = -1;
						Debug.Log ("Swipe Right Found");
					} else {
 						_input.Attack = 1;
						Debug.Log ("Swipe Left Found");
						//Instantiate(BOX, Left, Quaternion.identity);			
					}
				} else {					
					if (delta.y > .5) {
						//Instantiate(BOX, Up, Quaternion.identity);
						_input.Jump = new Vector2(0,1);
					} else {
						_input.Attack = 1;
						//Instantiate(BOX, Down, Quaternion.identity);
						Debug.Log ("Swipe Down Found");
					}
				}

			// hold to interact
			} else if(touch.phase == TouchPhase.Stationary) {
				_input.Interaction = true;

			} else if (touch.phase == TouchPhase.Canceled || touch.phase == TouchPhase.Ended)
				_swipeID = -1;
		}
	}
}
