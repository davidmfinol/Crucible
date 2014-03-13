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
    }

    public void Enable()
    {
        this.enabled = true;
        _input.UpdateInputMethod = this.UpdateInput;
    }
    
    public void Disable()
    {
        _input.UpdateInputMethod = null;
        this.enabled = false;
    }

    void Update()
    {
        foreach (Touch touch in Input.touches) 
        {
            if (touch.fingerId == _moveID && (touch.phase == TouchPhase.Canceled || touch.phase == TouchPhase.Ended))
                _moveID = -1;
            else if(touch.fingerId == _actionID && (touch.phase == TouchPhase.Canceled || touch.phase == TouchPhase.Ended))
                InterpretInteraction();
        }
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
		foreach (Touch touch in Input.touches) 
		{
            Vector2 touchPos = touch.position;
			if (touchPos.x < Screen.width / 2 )
				InterpretMovementSwipe(touch);
			else
			{
				// TODO: make this clearer
                if( !(touchPos.x > 2 * Screen.width / 3 && touchPos.y > 3 * Screen.height / 4))
                    InterpretInteractSwipe(touch);
			}
		}

        // Interpret whether or not the left-hand side was touched at all
		DisplayMovementSlider(_moveID != -1);
		
		// Interpret whether or not the right-hand side was touched at all
		DisplayActionDots(_actionID != -1);
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
            _lastMovePos = touch.position;
            Vector2 delta = _lastMovePos - _moveStartPos;
			if (touch.phase == TouchPhase.Canceled || touch.phase == TouchPhase.Ended)
				_moveID = -1;
			else if (delta.magnitude > _moveMin)
			{
				// TODO: MAKE THIS EXPONENTIAL INSTEAD OF LINEAR TO ENCOURAGE SNEAKING
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

        Vector3 pos = ConvertTouchPosToWorldPoint (_moveStartPos);
		_horizontalSlider.transform.position = pos;
		_verticalSlider.transform.position = pos;
		_moveButton.transform.position = ConvertTouchPosToWorldPoint (_lastMovePos); // TODO: MAKE THE BUTTON BE FIXED TO EITHER THE HORIZONTAL OR VERTICAL AXIS?
	}
	
	private void InterpretInteractSwipe(Touch touch)
	{
		if (touch.phase == TouchPhase.Began && _actionID == -1)
		{
			_actionID = touch.fingerId;
			_actionStartPos = touch.position;
			_lastActionPos = touch.position;
		} 
		else if (touch.fingerId == _actionID)
		{
            _lastActionPos = touch.position;
            if (touch.phase == TouchPhase.Canceled || touch.phase == TouchPhase.Ended)
                InterpretInteraction();// Interpret action on release
		}
	}
    private void InterpretInteraction()
    {
        _actionID = -1;

        float deg = CalculateActionDegree();

        if(IsJumpRight(deg))
            _input.Jump = new Vector2( 1,1);

        else if(IsJumpUp(deg))
            _input.Jump = new Vector2( 0, 1);

        else if(IsJumpLeft(deg))
            _input.Jump = new Vector2( -1 ,1);

        else if(IsAttackLeft(deg))
            _input.Attack = -1;

        else if(IsPickup(deg))
            _input.Pickup = true;

        else if(IsAttackRight(deg)) 
            _input.Attack = 1;

        else if(IsInteraction(deg))
            _input.Interaction = true;
    }
	private void DisplayActionDots(bool actTouched)
	{
		if(!actTouched)
		{
			for(int dot=0; dot<_userInterfaceDots.Count; dot++)
				_userInterfaceDots[dot].renderer.enabled = false;
			return;
		}
		
		float[] dotPositions = {-7.0f,-7.0f,0.0f,-7.0f,7.0f,-7.0f,
			-7.0f,0.0f,0.0f,0.0f,7.0f,0.0f,
			-7.0f,7.0f,0.0f,7.0f,7.0f,7.0f};
		Vector3 pos = ConvertTouchPosToWorldPoint (_actionStartPos);
		for(int dot=0; dot<_userInterfaceDots.Count; dot++)
		{
			_userInterfaceDots[dot].transform.position = new Vector3(pos.x + dotPositions[dot*2], pos.y + dotPositions[dot*2+1], 0);
			_userInterfaceDots[dot].renderer.enabled = true;
            _userInterfaceDots[dot].renderer.material.color = Color.white;
            
            float deg = CalculateActionDegree();

            if( IsJumpRight(deg) && dot == 8)
                _userInterfaceDots[dot].renderer.material.color = Color.blue;

            else if( IsJumpUp(deg) && dot == 7)
                _userInterfaceDots[dot].renderer.material.color = Color.blue;

            else if( IsJumpLeft(deg) && dot == 6)
                _userInterfaceDots[dot].renderer.material.color = Color.blue;

            else if( IsAttackLeft(deg) && dot == 3 )
                _userInterfaceDots[dot].renderer.material.color = Color.red;

            else if( IsPickup(deg) && (dot == 0 || dot == 1 || dot == 2))
                _userInterfaceDots[dot].renderer.material.color = Color.green;

            else if( IsAttackRight(deg) && dot == 5) 
                _userInterfaceDots[dot].renderer.material.color = Color.red;

            else if( IsInteraction(deg) && dot == 4)
                _userInterfaceDots[dot].renderer.material.color = Color.black;
		}
        // TODO: LINE FROM START TO END/ PARTICLE EFFECT SURROUNDING FINGER
    }

    public float CalculateActionDegree()
    {
        Vector2 delta = _lastActionPos - _actionStartPos;
        float deg = -1000;
        if (delta.magnitude > _actionMin) 
        {
            float rad = Mathf.Atan2(delta.y, delta.x);
            deg = rad * 180.0f / Mathf.PI;
        } 
        return deg;
    }
    public bool IsJumpRight(float deg)
    {
        return deg > 25.0f && deg <= 80.0f;
    }
    public bool IsJumpUp(float deg)
    {
        return deg > 80.0f && deg <= 100.0f;
    }
    public bool IsJumpLeft(float deg)
    {
        return deg > 100.0f && deg <= 155.0f;
    }
    public bool IsAttackLeft(float deg)
    {
        return ((deg > 155.0f && deg <= 210.0f) || (deg > -205.0f && deg <= -150.0f) || (deg > 515.0f && deg <= 570.0f));
    }
    public bool IsPickup(float deg)
    {
        return ((deg > 210.0f && deg <= 330.0f) || (deg > -150.0f && deg <= -30.0f) || (deg > 570.0f && deg <= 690.0f));
    }
    public bool IsAttackRight(float deg)
    {
        return (((deg > 330.0f && deg <= 360.0f) || (deg >= 0.0f && deg < 25.0f)) || ((deg > -30.0f && deg <= 0.0f) || (deg >= -360.0f && deg < -335.0f)) || ((deg > 690.0f && deg <= 720.0f) || (deg >= 360.0f && deg < 385.0f)));
    }
    public bool IsInteraction(float deg)
    {
        return deg == -1000;
    }
    
    public Vector3 ConvertTouchPosToWorldPoint(Vector2 touchPos)
    {
        Vector3 cameraPos = touchPos;
        cameraPos.x /= Screen.width;
        cameraPos.y /= Screen.height;
        cameraPos.z = -GameManager.UI.UICamera.transform.position.z;
        return GameManager.UI.UICamera.ViewportToWorldPoint(cameraPos);
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
