using UnityEngine;
using System.Collections;

/// <summary>
/// Touch Input is responsible for accepting the player's input on a mobile device and passing it to the playercharacterinput.
/// </summary>
[AddComponentMenu("User Interface/Touch Input")]
public class TouchInput : MonoBehaviour
{
    // TODO: base it on the size of the screen (NOTE THAT THESE VALUES ARE CURRENTLY STORED IN THE PREFAB)
    public float MinMovement = 8.0f;
    public float MinInteraction = 8.0f;
    public float MinGUISwipe = 8.0f;

    // Allow for switching between our different control schemes
    public int MovementUIType = 0;

    // Used for keeping track of swipes
	private Vector2 _startPos;
	private int _swipeID;
    private float _distanceForMaxSpeed;

    // Kept track for debugging
    private float _lastSwipeDeg;

    // Other components
	private WeaponsGui _weaponsGUI;
	private PlayerCharacterInput _input;

	void Start ()
	{
        _swipeID = -1;
        _distanceForMaxSpeed = Screen.width / 16.0f;

        _lastSwipeDeg = 0.0f;

		_weaponsGUI = GetComponentInChildren<WeaponsGui> ();
		_input = GameManager.Player.GetComponent<PlayerCharacterInput>();
	}

	void Update ()
	{	
#if !UNITY_EDITOR && UNITY_ANDROID
        // Reset certain inputs as appropriate
        _input.Vertical = 0;
        _input.Interaction = false;
		_input.Jump = new Vector2(0,0);
		_input.Attack = 0;
        _input.Pickup = false;

        // Go through all the touches
        bool moveTouched = false;
		foreach (Touch touch in Input.touches) 
		{
            Vector2 touchPos = touch.position;
			//Top right weapons switch
			if (touchPos.x > 2 * Screen.width / 3 && touchPos.y > 3 * Screen.height / 4)
                InterpretWeaponsGuiSwipe(touch);
			else if (touchPos.x < Screen.width / 2 )
			{
				moveTouched = true;
                InterpretMovementSwipe(touch, touchPos);
			}
			else
                InterpretInteractSwipe(touch);		
		}

        // Reset the horizontal input if movement side not touched
		if(!moveTouched)
			_input.Horizontal = 0;
#endif		
	}
	

    // TODO: SET UP WEAPONSGUI CORRECTLY
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
			if (touch.phase == TouchPhase.Moved && delta.magnitude > MinGUISwipe) 
			{
				_swipeID = -1;
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

	private void MovementType0(Touch touch, Vector2 moveStart)
	{
		_input.Horizontal = (touch.position.x - Screen.width/4)/(Screen.width/4);
	}

	private void MovementType1(Touch touch, Vector2 moveStart)
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
			if (touch.phase == TouchPhase.Moved && (delta.magnitude > MinMovement) )
			{
				_swipeID = -1;
				if (Mathf.Abs (delta.x) > Mathf.Abs (delta.y)) 
					_input.Horizontal = delta.x/_distanceForMaxSpeed;
			}
			else if (touch.phase == TouchPhase.Canceled || touch.phase == TouchPhase.Ended)
				_swipeID = -1;
		}
	}
	
	private void InterpretMovementSwipe(Touch touch, Vector2 moveStart)
	{		
		// first movement slider: 
		if (MovementUIType == 0)
			MovementType0 (touch, moveStart);
		else if (MovementUIType == 1)
			MovementType1 (touch, moveStart);
		else if (MovementUIType == 2 && (touch.position.x < Screen.width / 3) && (touch.position.x > Screen.width / 6) )
			MovementType1 (touch, moveStart);
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
			if (touch.phase == TouchPhase.Moved && delta.magnitude > MinInteraction) 
			{
				_swipeID = -1;
				_input.Vertical = delta.y;

				float rad = Mathf.Atan2(delta.y, delta.x);
				float deg = rad * 180.0f / Mathf.PI;

				_lastSwipeDeg = deg;
			
				// jump right
				if(deg > 30.0f && deg <= 70.0f)
					_input.Jump = new Vector2( (delta.x / _distanceForMaxSpeed) ,1);

				else if(deg > 70.0f && deg <= 110.0f)
					_input.Jump = new Vector2( 0, 1);
				
				else if(deg > 110.0f && deg <= 150.0f)
					_input.Jump = new Vector2( (delta.x / _distanceForMaxSpeed) ,1);

				else if(deg > 150.0f && deg <= 210.0f)
					_input.Attack = -1;
				
				else if(deg > 210.0f && deg <= 330.0f)
					_input.Pickup = true;

				else if(deg > 330.0f || deg < 30.0f) 
					_input.Attack = 1;

			// hold to interact
			} 
			else if(touch.phase == TouchPhase.Stationary)
			{
				_input.Interaction = true;
			} 
			else if (touch.phase == TouchPhase.Canceled || touch.phase == TouchPhase.Ended)
				_swipeID = -1;
		}
	}


    public float LastSwipeDeg 
    {
        get { return _lastSwipeDeg; }
    }
}
