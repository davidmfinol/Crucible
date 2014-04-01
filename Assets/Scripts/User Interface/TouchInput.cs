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
    public Transform RadioPrefab;
    public Transform ActionDescriptionPrefab;
    public Transform FadeLeftPrefab;
    public Transform FadeTopPrefab;
    public Transform FadeRightPrefab;
    public Transform FadeBottomPrefab;
    public Transform SelectionsPrefab;
    public Transform DotPrefab;

    // For tutorial, we also add vignettes to the left and right hand sides of the screen
    public Transform LeftHandVignette;
    public Transform RightHandVignette;

    // The location of each of the dots (index = 2*x + y) for each of the dots
    public static readonly float[] DotPositions = {-4.35f,-5.6f, 0.0f,-7.2f, 4.35f,-5.6f, // Bottom row
        -7.1f,-0.2f, 0.0f,0.0f, 7.1f,-0.1f, // Middle row
        -6.2f,3.9f, 0.0f,7.4f, 6.1f,3.9f}; // Top row

    // Keep track of the objects we're using to display the UI
    private Transform _horizontalSlider;
    private Transform _verticalSlider;
    private Transform _moveButton;
    private Transform _radioWaves;
    private Transform _actionDescription;
    private Transform _fadeLeft;
    private Transform _fadeTop;
    private Transform _fadeRight;
    private Transform _fadeBottom;
    private Transform _selections;
    private List<Transform> _userInterfaceDots;
    private Transform _leftHandVignette;
    private Transform _rightHandVignette;

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

        // Gonna store the input here
        _input = GameManager.Player.GetComponent<CharacterInput> ();

        // Left-hand side GUI
        _horizontalSlider = (Transform)Instantiate (SliderPrefab, SliderPrefab.position, Quaternion.identity);
        _verticalSlider = (Transform)Instantiate (SliderPrefab, SliderPrefab.position, Quaternion.Euler(new Vector3(0, 0, 90)));
        _moveButton = (Transform)Instantiate (MoveButtonPrefab, MoveButtonPrefab.position, MoveButtonPrefab.rotation);
        _radioWaves = (Transform)Instantiate (RadioPrefab, RadioPrefab.position, RadioPrefab.rotation);

        // Organize it away
        _horizontalSlider.parent = transform;
        _verticalSlider.parent = transform;
        _moveButton.parent = transform;
        _radioWaves.parent = transform;

        // And hide them
        _horizontalSlider.renderer.enabled = false;
        _verticalSlider.renderer.enabled = false;
        _moveButton.renderer.enabled = false;
        _radioWaves.renderer.enabled = false;

        // Right-hand side GUI
        _actionDescription = (Transform)Instantiate (ActionDescriptionPrefab, Vector3.zero, Quaternion.identity);
        _fadeLeft = (Transform)Instantiate (FadeLeftPrefab, Vector3.zero, Quaternion.identity);
        _fadeTop = (Transform)Instantiate (FadeTopPrefab, Vector3.zero, Quaternion.identity);
        _fadeRight = (Transform)Instantiate (FadeRightPrefab, Vector3.zero, Quaternion.identity);
        _fadeBottom = (Transform)Instantiate (FadeBottomPrefab, Vector3.zero, Quaternion.identity);
        _selections = (Transform)Instantiate (SelectionsPrefab, Vector3.zero, Quaternion.identity);

        // Organize them away
        _actionDescription.parent = transform;
        _fadeLeft.parent = transform;
        _fadeTop.parent = transform;
        _fadeRight.parent = transform;
        _fadeBottom.parent = transform;
        _selections.parent = transform;

        // And hide them
        _actionDescription.renderer.enabled = false;
        _fadeLeft.renderer.enabled = false;
        _fadeTop.renderer.enabled = false;
        _fadeRight.renderer.enabled = false;
        _fadeBottom.renderer.enabled = false;
        _selections.renderer.enabled = false;

        // The dots
        _userInterfaceDots = new List<Transform> ();
        for (int i = 0; i < 9; i++) {
            Transform dot = (Transform)Instantiate (DotPrefab, DotPrefab.position, DotPrefab.rotation);
            dot.renderer.enabled = false;
            dot.parent = transform;
            _userInterfaceDots.Add (dot);
        }

        // The vignettes
        _leftHandVignette = (Transform)Instantiate (LeftHandVignette, LeftHandVignette.position, LeftHandVignette.rotation);
        _rightHandVignette = (Transform)Instantiate (RightHandVignette, RightHandVignette.position, RightHandVignette.rotation);
        _leftHandVignette.renderer.enabled = false;
        _rightHandVignette.renderer.enabled = false;
        _leftHandVignette.GetComponent<AlphaPulse>().On = true;
        _rightHandVignette.GetComponent<AlphaPulse>().On = true;

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

    // The input class will call this method while touch input is enabled
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

    // The left-hand side of the screen
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

    // The right-hand side of the screen
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

    // Another helper for the right-hand side
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

    // Draw code
    IEnumerator DisplayLeftHandSide ()
    {
        // We're essentially replicating another update loop for rendering the left hand side
        while (true) {
            yield return null;
            
            // Make the left-hand side appear only when touching the screen
            bool moveTouched = _moveID != -1 && _input.UpdateInputMethod != null;
            _leftHandVignette.renderer.enabled = moveTouched; // TODO: MAKE IT ONLY HAPPEN AT THE BEGINNING
            _horizontalSlider.renderer.enabled = moveTouched;
            _verticalSlider.renderer.enabled = moveTouched;
            _moveButton.renderer.enabled = moveTouched;
            if(!moveTouched)
                continue;

            // Determine information about the movement input
            Vector3 startPos = ConvertTouchPosToWorldPoint (_moveStartPos);
            Vector3 currentPos = ConvertTouchPosToWorldPoint (_lastMovePos);

            // Put the sliders at the correct spot (we offset to keep them centered)
            _horizontalSlider.transform.position = startPos + Vector3.up * 0.18f;
            _verticalSlider.transform.position = startPos + Vector3.left * 0.18f;

            // The size of the slider indicates the player speed
            Vector3 horizontalScale = _horizontalSlider.transform.localScale;
            // Note that we set a max scale of 12, dependent on orthographic camera size of 16 and maxmovement of 1/8
            float targetScale = 1 + 11 * _input.Horizontal;
            horizontalScale.x = targetScale;
            _horizontalSlider.transform.localScale = horizontalScale;
            _verticalSlider.transform.localScale = horizontalScale;
            
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
                _radioWaves.renderer.enabled = true;
                _radioWaves.transform.position = currentPos;
            } else {
                _horizontalSlider.renderer.material.color = Color.red;
                _verticalSlider.renderer.material.color = Color.red;
                _radioWaves.renderer.enabled = false;
            }
        }

    }

    // Draw code
    IEnumerator DisplayRightHandSide ()
    {
        // We're essentially replicating another update loop for rendering the right hand side
        while (true) {
            yield return null;

            // Make everything invisible if we're not touching the right-hand side
            bool actTouched = _actionID != -1;
            _rightHandVignette.renderer.enabled = actTouched; // TODO: MAKE IT ONLY HAPPEN AT THE BEGINNING
            _actionDescription.renderer.enabled = actTouched; // TODO: MAKE THIS DISAPPEAR AFTER A WHILE
            _fadeLeft.renderer.enabled = false;
            _fadeTop.renderer.enabled = false;
            _fadeRight.renderer.enabled = false;
            _fadeBottom.renderer.enabled = false;
            _selections.renderer.enabled = actTouched;
            for (int dot=0; dot<_userInterfaceDots.Count; dot++)
                _userInterfaceDots [dot].renderer.enabled = actTouched;
            if (!actTouched)
                continue;

            // Put the images at the correct spot
            Vector3 pos = ConvertTouchPosToWorldPoint (_actionStartPos);
            _actionDescription.position = pos;
            _fadeLeft.position = pos;
            _fadeTop.position = pos;
            _fadeRight.position = pos;
            _fadeBottom.position = pos;
            _selections.position = pos;
        
            // Put the dots at the correct positions , and color/enable things as appropriate
            _selections.renderer.material.color = Color.white;
            float deg = CalculateActionDegree ();
            for (int dot=0; dot<_userInterfaceDots.Count; dot++) {
                _userInterfaceDots [dot].transform.position = new Vector3 (pos.x + DotPositions [dot * 2], pos.y + DotPositions [dot * 2 + 1], 0);
                _userInterfaceDots [dot].renderer.enabled = true;
                _userInterfaceDots [dot].renderer.material.color = Color.white;

                if (IsJumpRight (deg) && dot == 8) {
                    _selections.renderer.material.color = Color.blue;
                    _fadeTop.renderer.enabled = true;
                    _userInterfaceDots [dot].renderer.material.color = Color.blue;
                }
                else if (IsJumpUp (deg) && dot == 7) {
                    _selections.renderer.material.color = Color.blue;
                    _fadeTop.renderer.enabled = true;
                    _userInterfaceDots [dot].renderer.material.color = Color.blue;
                }
                else if (IsJumpLeft (deg) && dot == 6) {
                    _selections.renderer.material.color = Color.blue;
                    _fadeTop.renderer.enabled = true;
                    _userInterfaceDots [dot].renderer.material.color = Color.blue;
                }
                else if (IsAttackLeft (deg) && (dot == 0 || dot == 3 || dot == 6)) {
                    _selections.renderer.material.color = Color.red;
                    _fadeLeft.renderer.enabled = true;
                    _userInterfaceDots [dot].renderer.material.color = Color.red;
                }
                else if (IsPickup (deg) && (dot == 0 || dot == 1 || dot == 2)) {
                    _selections.renderer.material.color = Color.green;
                    _fadeBottom.renderer.enabled = true;
                    _userInterfaceDots [dot].renderer.material.color = Color.green;
                }
                else if (IsAttackRight (deg) && (dot == 2 || dot == 5 || dot == 8)) {
                    _selections.renderer.material.color = Color.red;
                    _fadeRight.renderer.enabled = true;
                    _userInterfaceDots [dot].renderer.material.color = Color.red;
                }
                else if (IsInteraction (deg) && dot == 4) {
                    _selections.renderer.material.color = Color.black;
                    _userInterfaceDots [dot].renderer.material.color = Color.black;
                }
            }

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
