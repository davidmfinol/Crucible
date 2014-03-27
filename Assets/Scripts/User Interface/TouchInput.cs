using UnityEngine;
using System.Collections;
using System.Collections.Generic;

/// <summary>
/// Touch Input is responsible for accepting the player's input on a mobile device and passing it to the playercharacterinput.
/// </summary>
[AddComponentMenu("User Interface/Touch Input")]
public class TouchInput : MonoBehaviour
{
    // Setup for the UI elements that appear on the screen
    public Transform SliderPrefab;
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
        // Set up motion variables
        _moveID = -1;
        _moveStartPos = Vector2.zero;
        _moveMin = Screen.width / 32.0f;
        _lastMovePos = Vector2.zero;
        _distanceForMaxSpeed = Screen.width / 8.0f;

        // Set up action variables
        _actionID = -1;
        _actionStartPos = Vector2.zero;
        _actionMin = Screen.width / 32.0f;
        _lastActionPos = Vector2.zero;

        _input = GameManager.Player.GetComponent<CharacterInput> ();

        // Left-hand side GUI
        _horizontalSlider = (Transform)Instantiate (SliderPrefab, SliderPrefab.position, Quaternion.identity);
        _verticalSlider = (Transform)Instantiate (SliderPrefab, SliderPrefab.position, Quaternion.Euler(new Vector3(0, 0, 90)));
        _moveButton = (Transform)Instantiate (MoveButtonPrefab, MoveButtonPrefab.position, MoveButtonPrefab.rotation);

        // Organize it away
        _horizontalSlider.parent = transform;
        _verticalSlider.parent = transform;
        _moveButton.parent = transform;

        // Right-hand side GUI
        _userInterfaceDots = new List<Transform> ();
        for (int i = 0; i < 9; i++) {
            Transform dot = (Transform)Instantiate (DotPrefab, DotPrefab.position, DotPrefab.rotation);
            dot.renderer.enabled = false;
            dot.parent = transform;
            _userInterfaceDots.Add (dot);
        }

        // Set up new update methods to show the GUI elements
        StartCoroutine (DisplayLeftHandSide());
        StartCoroutine (DisplayRightHandSide());

    }

    public void Enable ()
    {
        _input.UpdateInputMethod = this.UpdateInput;

    }
    
    public void Disable ()
    {
        _input.UpdateInputMethod = null;

    }

    // Make sure we don't miss updates to the input
    void Update ()
    {
        foreach (Touch touch in Input.touches) {
            if (touch.fingerId == _moveID && (touch.phase == TouchPhase.Canceled || touch.phase == TouchPhase.Ended))
                _moveID = -1;
            else if (touch.fingerId == _actionID && (touch.phase == TouchPhase.Canceled || touch.phase == TouchPhase.Ended))
                InterpretInteraction ();
        }

    }
    
    public void UpdateInput ()
    {   
        // Reset inputs
        _input.Horizontal = 0;
        _input.Vertical = 0;
        _input.Interaction = false;
        _input.Jump = new Vector2 (0, 0);
        _input.Attack = 0;
        _input.Pickup = false;

        // Go through all the touches
        foreach (Touch touch in Input.touches) {
            Vector2 touchPos = touch.position;
            if (touchPos.x < Screen.width / 2)
                InterpretMovementSwipe (touch);
            else if (!(touchPos.x > 2 * Screen.width / 3 && touchPos.y > 3 * Screen.height / 4))
                InterpretInteractSwipe (touch);
        }

    }

    private void InterpretMovementSwipe (Touch touch)
    {
        // Keep track of when we start touching the screen
        if (touch.phase == TouchPhase.Began && _moveID == -1) {
            _moveID = touch.fingerId;
            _moveStartPos = touch.position;
            _lastMovePos = touch.position;

        // Update the touch as appropriate
        } else if (touch.fingerId == _moveID) {
            _lastMovePos = touch.position;

            Vector2 delta = _lastMovePos - _moveStartPos;
            if (touch.phase == TouchPhase.Canceled || touch.phase == TouchPhase.Ended)
                _moveID = -1;
            else if (delta.magnitude > _moveMin) {
                if (Mathf.Abs (delta.x) > Mathf.Abs (delta.y)) {
                    float ratio = delta.x / _distanceForMaxSpeed;
                    int sign = ratio < 0 ? -1 : 1;
                    _input.Horizontal = sign * ratio * ratio;
                } else {
                    float ratio = delta.y / _distanceForMaxSpeed;
                    int sign = ratio < 0 ? -1 : 1;
                    _input.Vertical = sign * ratio * ratio;
                }
            }
        }

    }
    
    private void InterpretInteractSwipe (Touch touch)
    {
        if (touch.phase == TouchPhase.Began && _actionID == -1) {
            _actionID = touch.fingerId;
            _actionStartPos = touch.position;
            _lastActionPos = touch.position;
        } else if (touch.fingerId == _actionID) {
            _lastActionPos = touch.position;
            if (touch.phase == TouchPhase.Canceled || touch.phase == TouchPhase.Ended)
                InterpretInteraction ();// Interpret action on release
        }

    }

    private void InterpretInteraction ()
    {
        _actionID = -1;

        float deg = CalculateActionDegree ();

        if (IsJumpRight (deg))
            _input.Jump = new Vector2 (1, 1);
        else if (IsJumpUp (deg))
            _input.Jump = new Vector2 (0, 1);
        else if (IsJumpLeft (deg))
            _input.Jump = new Vector2 (-1, 1);
        else if (IsAttackLeft (deg))
            _input.Attack = -1;
        else if (IsPickup (deg))
            _input.Pickup = true;
        else if (IsAttackRight (deg)) 
            _input.Attack = 1;
        else if (IsInteraction (deg))
            _input.Interaction = true;

    }
    
    IEnumerator DisplayLeftHandSide ()
    {
        // We're essentially replicating another update loop for rendering the left hand side
        while (true) {
            yield return null;

            // Determine information about the movement input
            bool moveTouched = _moveID != -1 && _input.UpdateInputMethod != null;
            Vector3 startPos = ConvertTouchPosToWorldPoint (_moveStartPos);
            Vector3 currentPos = ConvertTouchPosToWorldPoint (_lastMovePos);

            // Put the sliders at the correct spot
            _horizontalSlider.transform.position = startPos;
            _verticalSlider.transform.position = startPos;

            // Scale the sliders towards the size they need to be
            Vector3 horizontalScale = _horizontalSlider.transform.localScale;
            float targetScale = moveTouched ? 12 : 0; // Note that the 12 is dependent on orthographic camera size of 16 and maxmovement of 1/8
            horizontalScale.x = Mathf.Lerp(horizontalScale.x, targetScale, Time.deltaTime);
            _horizontalSlider.transform.localScale = horizontalScale;
            _verticalSlider.transform.localScale = horizontalScale;

            // Make the sliders disappear once they shrink too much
            _horizontalSlider.renderer.enabled = horizontalScale.x > 1;
            _verticalSlider.renderer.enabled = horizontalScale.x > 1;

            // Make the button appear only when touching the screen
            _moveButton.renderer.enabled = moveTouched;
        
            // Move the button to the correct spot
            _moveButton.position = currentPos;
            Vector2 delta = _lastMovePos - _moveStartPos;
            if (delta.magnitude > _moveMin) {
                if (Mathf.Abs (delta.x) > Mathf.Abs (delta.y)) 
                    _moveButton.position = new Vector3(currentPos.x, startPos.y, currentPos.z);
                else
                    _moveButton.position = new Vector3(startPos.x, currentPos.y, currentPos.z);
            }

            // Have certain effects to really show off player sneaking
            if(GameManager.Player.IsSneaking) {
                _horizontalSlider.renderer.material.color = Color.white;
                _verticalSlider.renderer.material.color = Color.white;
            } else {
                _horizontalSlider.renderer.material.color = Color.red;
                _verticalSlider.renderer.material.color = Color.red;
            }
        }

    }

    IEnumerator DisplayRightHandSide ()
    {
        // We're essentially replicating another update loop for rendering the right hand side
        while (true) {
            yield return null;

            // Make everything invisible if we're not touching the right-hand side
            bool actTouched = _actionID != -1;
            if (!actTouched) {
                for (int dot=0; dot<_userInterfaceDots.Count; dot++)
                    _userInterfaceDots [dot].renderer.enabled = false;
                continue;
            }
        
            float[] dotPositions = {-7.0f,-7.0f,0.0f,-7.0f,7.0f,-7.0f,
            -7.0f,0.0f,0.0f,0.0f,7.0f,0.0f,
            -7.0f,7.0f,0.0f,7.0f,7.0f,7.0f};
            Vector3 pos = ConvertTouchPosToWorldPoint (_actionStartPos);
            for (int dot=0; dot<_userInterfaceDots.Count; dot++) {
                _userInterfaceDots [dot].transform.position = new Vector3 (pos.x + dotPositions [dot * 2], pos.y + dotPositions [dot * 2 + 1], 0);
                _userInterfaceDots [dot].renderer.enabled = true;
                _userInterfaceDots [dot].renderer.material.color = Color.white;
            
                float deg = CalculateActionDegree ();

                if (IsJumpRight (deg) && dot == 8)
                    _userInterfaceDots [dot].renderer.material.color = Color.blue;
                else if (IsJumpUp (deg) && dot == 7)
                    _userInterfaceDots [dot].renderer.material.color = Color.blue;
                else if (IsJumpLeft (deg) && dot == 6)
                    _userInterfaceDots [dot].renderer.material.color = Color.blue;
                else if (IsAttackLeft (deg) && dot == 3)
                    _userInterfaceDots [dot].renderer.material.color = Color.red;
                else if (IsPickup (deg) && (dot == 0 || dot == 1 || dot == 2))
                    _userInterfaceDots [dot].renderer.material.color = Color.green;
                else if (IsAttackRight (deg) && dot == 5) 
                    _userInterfaceDots [dot].renderer.material.color = Color.red;
                else if (IsInteraction (deg) && dot == 4)
                    _userInterfaceDots [dot].renderer.material.color = Color.black;
            }
            // TODO: LINE FROM START TO END/ PARTICLE EFFECT SURROUNDING FINGER
        }

    }

    public float CalculateActionDegree ()
    {
        Vector2 delta = _lastActionPos - _actionStartPos;
        float deg = -1000;
        if (delta.magnitude > _actionMin) {
            float rad = Mathf.Atan2 (delta.y, delta.x);
            deg = rad * 180.0f / Mathf.PI;
        } 
        return deg;
    }

    public bool IsJumpRight (float deg)
    {
        return deg > 25.0f && deg <= 80.0f;
    }

    public bool IsJumpUp (float deg)
    {
        return deg > 80.0f && deg <= 100.0f;
    }

    public bool IsJumpLeft (float deg)
    {
        return deg > 100.0f && deg <= 155.0f;
    }

    public bool IsAttackLeft (float deg)
    {
        return ((deg > 155.0f && deg <= 210.0f) || (deg > -205.0f && deg <= -150.0f) || (deg > 515.0f && deg <= 570.0f));
    }

    public bool IsPickup (float deg)
    {
        return ((deg > 210.0f && deg <= 330.0f) || (deg > -150.0f && deg <= -30.0f) || (deg > 570.0f && deg <= 690.0f));
    }

    public bool IsAttackRight (float deg)
    {
        return (((deg > 330.0f && deg <= 360.0f) || (deg >= 0.0f && deg < 25.0f)) || ((deg > -30.0f && deg <= 0.0f) || (deg >= -360.0f && deg < -335.0f)) || ((deg > 690.0f && deg <= 720.0f) || (deg >= 360.0f && deg < 385.0f)));
    }

    public bool IsInteraction (float deg)
    {
        return deg == -1000;
    }
    
    public Vector3 ConvertTouchPosToWorldPoint (Vector2 touchPos)
    {
        Vector3 cameraPos = touchPos;
        cameraPos.x /= Screen.width;
        cameraPos.y /= Screen.height;
        cameraPos.z = -GameManager.UI.UICamera.transform.position.z;
        return GameManager.UI.UICamera.ViewportToWorldPoint (cameraPos);
    }

    public float DistanceForMaxSpeed {
        get { return _distanceForMaxSpeed; }
    }

    public Vector2 LastMovePos {
        get { return _lastMovePos; }
    }

    public float MoveID {
        get { return _moveID; }
    }

    public Vector2 LastActionPos {
        get { return _lastActionPos; }
    }

    public float ActionID {
        get { return _actionID; }
    }
}
