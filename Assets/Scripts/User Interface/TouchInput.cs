using UnityEngine;
using System.Collections.Generic;

/// <summary>
/// Touch Input is responsible for accepting the player's input on a mobile device and passing it to the playercharacterinput.
/// </summary>
[AddComponentMenu("User Interface/Touch Input")]
public class TouchInput : MonoBehaviour
{
	// Setup for the UI elements that appear on the screen
	public Transform HorizontalSliderPrefab;
	public Transform VerticalSliderPrefab;
	public Transform MoveButtonPrefab;
	public Transform DotPrefab;

	// Keep track of the objects we're using to display the UI
	private Transform _horizontalSlider;
	private Transform _verticalSlider;
	private Transform _moveButton;
	private List<Transform> _userInterfaceDots;

    // Swipe information related to movement
	private int _moveID;
	private Vector2 _moveStartPos;
	private float _moveMin;
	private Vector2 _lastMovePos;
	private float _distanceForMaxSpeed;
    
    // Swipe information related to actions
	private int _actionID;
	private Vector2 _actionStartPos;
	private float _actionMin;
	private Vector2 _lastActionPos;
    
    // Swipe information related to weapon selection
	/* TODO: WEAPON SELECTION
	private int _guiID;
	private Vector2 _guiStartPos;
	private float _guiMin;
	*/
	
    // Where we store the input
	private CharacterInput _input;


	void Start ()
	{
		_moveID = -1;
		_moveStartPos = Vector2.zero;
		_moveMin = Screen.width / 32.0f;
		_lastMovePos = Vector2.zero;
		_distanceForMaxSpeed = Screen.width / 8.0f;

		_actionID = -1;
		_actionStartPos = Vector2.zero;
		_actionMin = Screen.width / 32.0f;
		_lastActionPos = Vector2.zero;

		/*TODO
		_guiID = -1;
		_guiStartPos = Vector2.zero;
		_guiMin = Screen.width / 16.0f;
		*/

		_input = GameManager.Player.GetComponent<CharacterInput>();

		_horizontalSlider = (Transform)Instantiate (HorizontalSliderPrefab, HorizontalSliderPrefab.position, HorizontalSliderPrefab.rotation);
		_verticalSlider = (Transform)Instantiate (VerticalSliderPrefab, VerticalSliderPrefab.position, VerticalSliderPrefab.rotation);
		_moveButton = (Transform)Instantiate (MoveButtonPrefab, MoveButtonPrefab.position, MoveButtonPrefab.rotation);

		_horizontalSlider.renderer.enabled = false;
		_verticalSlider.renderer.enabled = false;
		_moveButton.renderer.enabled = false;

		_horizontalSlider.parent = transform;
		_verticalSlider.parent = transform;
		_moveButton.parent = transform;

		_userInterfaceDots = new List<Transform>();
		for(int i = 0; i < 9; i++)
		{
			Transform dot = (Transform)Instantiate(DotPrefab, DotPrefab.position, DotPrefab.rotation);
			dot.renderer.enabled = false;
			dot.parent = transform;
			_userInterfaceDots.Add(dot);
		}

#if (UNITY_ANDROID  || UNITY_IOS) && !UNITY_EDITOR
		_input.UpdateInputMethod = UpdateInput;
#endif
	}
    
	public void UpdateInput ()
	{	
		// Reset inputs
		_input.Horizontal = 0;
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
			if (touchPos.x < Screen.width / 2 )
			{
				InterpretMovementSwipe(touch);
				moveTouched = true;
			}
			else
			{
				InterpretInteractSwipe(touch);
				// TODO: 
				/*if (touchPos.x > 2 * Screen.width / 3 && touchPos.y > 3 * Screen.height / 4)
				InterpretWeaponsGuiSwipe(touch);
				*/
				actTouched = true;
			}
		}

        // Interpret whether or not the left-hand side was touched at all
		DisplayMovementSlider (moveTouched);
		
		// Interpret whether or not the right-hand side was touched at all
		DisplayActionDots(actTouched);
    }

	private void InterpretMovementSwipe(Touch touch)
	{
		if (touch.phase == TouchPhase.Began && _moveID == -1)
		{
			_moveID = touch.fingerId;
			_moveStartPos = touch.position;
			_lastMovePos = touch.position;
		} 
		else if (touch.fingerId == _moveID)
		{
			Vector2 delta = touch.position - _moveStartPos;
			if (touch.phase == TouchPhase.Canceled || touch.phase == TouchPhase.Ended)
				_moveID = -1;
			else if (delta.magnitude > _moveMin)
			{
				// TODO: MAKE THIS EXPONENTIAL INSTEAD OF LINEAR TO ENCOURAGE SNEAKING
				_lastMovePos = touch.position;
				if (Mathf.Abs (delta.x) > Mathf.Abs (delta.y)) 
					_input.Horizontal = delta.x/_distanceForMaxSpeed;
				else
					_input.Vertical = delta.y/_distanceForMaxSpeed;
			}
		}
	}
	private void DisplayMovementSlider(bool moveTouched)
	{
		_horizontalSlider.renderer.enabled = moveTouched;
		_verticalSlider.renderer.enabled = moveTouched;
		_moveButton.renderer.enabled = moveTouched;

		Vector3 pos = ConvertScreenPosToWorld (_moveStartPos);
		_horizontalSlider.transform.position = pos;
		_verticalSlider.transform.position = pos;
		_moveButton.transform.position = ConvertScreenPosToWorld (_lastMovePos); // TODO: MOVE THE BUTTON RELATIVE TO MOVEMENT
	}
	
	private void InterpretInteractSwipe(Touch touch)
	{
		if (touch.phase == TouchPhase.Began && _actionID == -1)
		{
			_actionID = touch.fingerId;
			_actionStartPos = touch.position;
			_lastActionPos = Vector2.zero;
		} 
		else if (touch.fingerId == _actionID)
		{
			// Update action on move
			if(touch.phase == TouchPhase.Moved)
			{
				_lastActionPos = touch.position;
			}
			// Interpret action on release
			else if (touch.phase == TouchPhase.Canceled || touch.phase == TouchPhase.Ended)
			{
				_actionID = -1;

				Vector2 delta = _lastActionPos - _actionStartPos;
				float deg = -1;
				if (delta.magnitude > _actionMin) 
				{
					float rad = Mathf.Atan2(delta.y, delta.x);
					deg = rad * 180.0f / Mathf.PI;
				} 

				// TODO: BETTER MAPPING
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

				// TODO: make this context-sensitive for ladders & climbing
				else if(deg == -1)
					_input.Interaction = true;
			}
		}
	}
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
		
		float[] DotPositions = {0.0f,0.0f,0.0f,0.0f,0.0f,0.0f,0.0f,0.0f,0.0f,0.0f,0.0f,0.0f,0.0f,0.0f,0.0f,0.0f,0.0f,0.0f};
		//	{-3.0f,-3.0f,0.0f,-3.0f,3.0f,-3.0f,-3.0f,0.0f,0.0f,0.0f,3.0f,0.0f,-3.0f,3.0f,0.0f,3.0f,3.0f,3.0f};
		Vector2 pos = ConvertScreenPosToWorld (_actionStartPos);
		for(int dot=0; dot<_userInterfaceDots.Count; dot++)
		{
			_userInterfaceDots[dot].transform.position = new Vector3(pos.x + DotPositions[dot*2], pos.y + DotPositions[dot*2+1], 0);
			_userInterfaceDots[dot].renderer.enabled = true;
			_userInterfaceDots[dot].renderer.material.color = Color.white;
			
			Vector2 delta = _lastActionPos - _actionStartPos;
			float deg = -1;
			if (delta.magnitude > _actionMin) 
			{
				float rad = Mathf.Atan2(delta.y, delta.x);
				deg = rad * 180.0f / Mathf.PI;
			} 
			
			// TODO: BETTER MAPPING
			int action = -1;
			action = (deg > 25.0f && deg <= 75.0f) ? 8 : action;
			action = (deg > 75.0f && deg <= 105.0f) ? 7 : action;
			action = (deg > 105.0f && deg <= 155.0f) ? 6 : action;
			action = (deg > 155.0f && deg <= 210.0f) ? 3 : action;
			action = (deg > 210.0f && deg <= 330.0f) ? 2 : action;
			action = (deg > 330.0f || deg <= 25.0f) ? 5 : action;
			action = (deg == -1) ? 4 : action;
			if(action == dot)
				_userInterfaceDots[dot].renderer.material.color = Color.green;
		}
        // TODO: DRAW LINE OF CURRENT SWIPE
	}
	
	public Vector2 ConvertScreenPosToWorld(Vector2 touchPos)
	{
		Vector2 pos = new Vector2 ();
		pos.x = touchPos.x - Screen.width / 2.0f;
		pos.y = touchPos.y - Screen.height / 2.0f;
		pos /= 32.0f;
		return pos;
	}


	public float DistanceForMaxSpeed
	{
		get { return _distanceForMaxSpeed; }
	}
	public Vector2 LastMovePos
	{
		get { return _lastMovePos; }
	}
	public Vector2 LastActionPos
	{
		get { return _lastActionPos; }
	}
}
