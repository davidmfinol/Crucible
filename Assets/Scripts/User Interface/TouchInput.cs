using UnityEngine;
using System.Collections.Generic;

/// <summary>
/// Touch Input is responsible for accepting the player's input on a mobile device and passing it to the playercharacterinput.
/// </summary>
[AddComponentMenu("User Interface/Touch Input")]
public class TouchInput : MonoBehaviour
{
    // Allow for switching between our different control schemes
    public int MovementUIType = 1;
	public Transform DotPrefab;
	private List<Transform> _userInterfaceDots;

    // Used for keeping track of swipes and where they start
	private int _moveID;
	private Vector2 _moveStartPos;
	private float _moveMin;
	private float _distanceForMaxSpeed;

	// Kept track for debugging
	private float _lastSwipeDeg;
	private int _actionID;
	private Vector2 _actionStartPos;
	private float _actionMin;
	
	private int _guiID;
	private Vector2 _guiStartPos;
	private float _guiMin;
	
    // Other components
	private PlayerCharacterInput _input;

	void Start ()
	{
		_moveID = -1;
		_moveStartPos = Vector2.zero;
		_distanceForMaxSpeed = Screen.width / 8.0f;
		_moveMin = Screen.width / 32.0f;

		_lastSwipeDeg = 0.0f;
		_actionID = -1;
		_actionStartPos = Vector2.zero;
		_actionMin = Screen.width / 32.0f;

		_guiID = -1;
		_guiStartPos = Vector2.zero;
		_guiMin = Screen.width / 16.0f;

		_input = GameManager.Player.GetComponent<PlayerCharacterInput>();

		_userInterfaceDots = new List<Transform>();
		for(int i = 0; i < 9; i++)
		{
			Transform dot = (Transform)Instantiate(DotPrefab);
			dot.renderer.enabled = false;
			_userInterfaceDots.Add(dot);
		}

	}
    
#if UNITY_ANDROID && !UNITY_EDITOR
	void Update ()
	{	
        // Reset certain inputs as appropriate
        _input.Vertical = 0;
        _input.Interaction = false;
		_input.Jump = new Vector2(0,0);
		_input.Attack = 0;
        _input.Pickup = false;

        // Go through all the touches
        bool moveTouched = false;
		bool actTouched = false;
		foreach (Touch touch in Input.touches) 
		{
            Vector2 touchPos = touch.position;
			//Top right weapons switch
			if (touchPos.x > 2 * Screen.width / 3 && touchPos.y > 3 * Screen.height / 4)
                InterpretWeaponsGuiSwipe(touch);
			else if (touchPos.x < Screen.width / 2 )
			{
				InterpretMovementSwipe(touch, touchPos);
				moveTouched = true;
			}
			else
			{
                InterpretInteractSwipe(touch);
				actTouched = true;
			}
		}

		DisplayActionDots(actTouched);

        // Reset the horizontal input if movement side not touched
		if(!moveTouched)
			_input.Horizontal = 0;
    }
#endif
	

    // TODO: SET UP WEAPONSGUI CORRECTLY
	private void InterpretWeaponsGuiSwipe(Touch touch)
	{
		Vector2 position = touch.position;
		if (touch.phase == TouchPhase.Began && _guiID == -1)
		{
			_guiID = touch.fingerId;
			_guiStartPos = position;
		} 
		else if (touch.fingerId == _guiID)
		{
			Vector2 delta = position - _guiStartPos;
			if (touch.phase == TouchPhase.Moved && delta.magnitude > _guiMin) 
			{
				_guiID = -1;
				if (Mathf.Abs (delta.x) > Mathf.Abs (delta.y)) 
				{				
					if (delta.x > 0) 
						MovementUIType = 0;
					else
						MovementUIType = 1;
				}
			} else if(touch.phase == TouchPhase.Stationary && delta.magnitude <= _guiMin) {
				MovementUIType = 2;

			} else if (touch.phase == TouchPhase.Canceled || touch.phase == TouchPhase.Ended)
				_guiID = -1;
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
		else if (touch.phase == TouchPhase.Began && _moveID == -1)
		{
			_moveID = touch.fingerId;
			_moveStartPos = position;
		} 
		else if (touch.fingerId == _moveID)
		{
			Vector2 delta = position - _moveStartPos;
			if (touch.phase == TouchPhase.Moved && (delta.magnitude > _moveMin) )
			{
				if (Mathf.Abs (delta.x) > Mathf.Abs (delta.y)) 
					_input.Horizontal = delta.x/_distanceForMaxSpeed;

			}
			else if (touch.phase == TouchPhase.Canceled || touch.phase == TouchPhase.Ended)
				_moveID = -1;
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
		if (touch.phase == TouchPhase.Began && _actionID == -1)
		{
			_actionID = touch.fingerId;
			_actionStartPos = position;
		} 
		else if (touch.fingerId == _actionID)
		{
			Vector2 delta = position - _actionStartPos;
			if (touch.phase == TouchPhase.Moved && delta.magnitude > _actionMin) 
			{
				_actionID = -1;
				_input.Vertical = delta.y;

				float rad = Mathf.Atan2(delta.y, delta.x);
				float deg = rad * 180.0f / Mathf.PI;

				_lastSwipeDeg = deg;
			
				// jump right
				if(deg > 25.0f && deg <= 75.0f)
					_input.Jump = new Vector2( 1,1);

				// straight up
				else if(deg > 75.0f && deg <= 105.0f)
					_input.Jump = new Vector2( 0, 1);

				// jump left
				else if(deg > 105.0f && deg <= 155.0f)
					_input.Jump = new Vector2( -1 ,1);

				// attack left
				else if(deg > 155.0f && deg <= 210.0f)
					_input.Attack = -1;

				// pickup
				else if(deg > 210.0f && deg <= 330.0f)
					_input.Pickup = true;

				// attack right
				else if(deg > 330.0f || deg <= 25.0f) 
					_input.Attack = 1;

			// hold to interact
			} 
			else if(touch.phase == TouchPhase.Stationary)
			{
				// TODO: make this context-sensitive for ladders & climbing
				_input.Interaction = true;
			} 
			else if (touch.phase == TouchPhase.Canceled || touch.phase == TouchPhase.Ended)
				_actionID = -1;
		}
	}

	// TODO: REFACTOR THIS METHOD TO MAKE MORE EFFICIENT (ALSO NO COPY PASTE OF ANGLES)
	private void DisplayActionDots(bool actTouched)
	{
		if(!actTouched)
		{
			for(int dot=0; dot<_userInterfaceDots.Count; dot++)
			{
				_userInterfaceDots[dot].renderer.enabled = false;
				_userInterfaceDots[dot].renderer.material.color = Color.white;
			}
			return;
		}
		float x0 = (_actionStartPos.x - Screen.width/2.0f)/32.0f - 0.3f;
		float y0 = (_actionStartPos.y - Screen.height/2.0f)/32.0f;
		float[] dotPositions = {-5.5f,-5.5f,-5.5f,0.0f,-5.5f,5.5f,0.0f,-5.5f,0.0f,0.0f,0.0f,5.5f,5.5f,-5.5f,5.5f,0.0f,5.5f,5.5f};
		for(int dot=0; dot<_userInterfaceDots.Count; dot++)
		{
			_userInterfaceDots[dot].transform.position = new Vector3(x0 + dotPositions[dot*2], 0, y0 + dotPositions[dot*2+1]);
			_userInterfaceDots[dot].renderer.enabled = true;

			_userInterfaceDots[dot].renderer.material.color = Color.white;

			// jump right
			if(_lastSwipeDeg > 25.0f && _lastSwipeDeg <= 75.0f && dot == 8)
				_userInterfaceDots[dot].renderer.material.color = Color.green;
			
			// straight up
			else if(_lastSwipeDeg > 75.0f && _lastSwipeDeg <= 105.0f && dot == 5)
				_userInterfaceDots[dot].renderer.material.color = Color.green;
			
			// jump left
			else if(_lastSwipeDeg > 105.0f && _lastSwipeDeg <= 155.0f && dot == 2)
				_userInterfaceDots[dot].renderer.material.color = Color.green;
			
			// attack left
			else if(_lastSwipeDeg > 155.0f && _lastSwipeDeg <= 210.0f && dot == 1)
				_userInterfaceDots[dot].renderer.material.color = Color.green;
			
			// pickup
			else if(_lastSwipeDeg > 210.0f && _lastSwipeDeg <= 330.0f && (dot == 0 || dot == 3 || dot == 6) )
				_userInterfaceDots[dot].renderer.material.color = Color.green;
			
			// attack right
			else if(_lastSwipeDeg > 330.0f || _lastSwipeDeg <= 25.0f && dot == 7) 
				_userInterfaceDots[dot].renderer.material.color = Color.green;
		}
	}


    public float LastSwipeDeg 
    {
        get { return _lastSwipeDeg; }
    }
}
