using UnityEngine;
using System.Collections;
using System.Collections.Generic;

/// <summary>
/// Touch Input is responsible for accepting the player's input on a mobile device and passing it to the playercharacterinput.
/// </summary>
[AddComponentMenu("User Interface/Player Input/Touch Input")]
public class TouchInput : MonoBehaviour
{
    // Prefabs for the left-hand side of the touch input
    public Transform SliderPrefab;
    public Transform MoveButtonPrefab;
    public Transform RadioPrefab;

    // Prefabs for the right-hand side of the touch input
    public Transform SelectionsPrefab;
    public Transform GlowOffPrefab;
    public Transform BlueCirclePrefab;
    public Transform JumpSignPrefab;
    public Transform AttackSignPrefab;
    public Transform ItemPickupSignPrefab;
    public Transform DotPrefab;

    // GUI elements for the left-hand side
    private Transform _horizontalSlider;
    private Transform _verticalSlider;
    private Transform _moveButton;
    private Transform _radioWaves;

    // GUI elements for the right-hand side
    private Transform _blueCircle;
    private Transform _selections;
    private Transform _jumpSign;
    private Transform _attack1Sign;
    private Transform _attack2Sign;
    private Transform _pickupSign;
    private AlphaPulse _glowOff;
    private List<Transform> _uiDots;
    private List<Vector3> _dotPositions;

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
        _distanceForMaxSpeed = Screen.width / 3.0f;

        // Set up action variables
        _actionID = -1;
        _actionStartPos = Vector2.zero;
        _actionMin = Screen.width / 32.0f;
        _lastActionPos = Vector2.zero;

        // Gonna store the input here
        _input = GameManager.Player.GetComponent<CharacterInput> ();

        // Left-hand side GUI
        _horizontalSlider = (Transform)Instantiate (SliderPrefab, SliderPrefab.position, Quaternion.identity);
        _verticalSlider = (Transform)Instantiate (SliderPrefab, SliderPrefab.position, Quaternion.Euler (new Vector3 (0, 0, 90)));
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
        _blueCircle = (Transform)Instantiate (BlueCirclePrefab, BlueCirclePrefab.position, BlueCirclePrefab.rotation);
        _selections = (Transform)Instantiate (SelectionsPrefab, SelectionsPrefab.position, SelectionsPrefab.rotation);
        _jumpSign = (Transform)Instantiate (JumpSignPrefab, JumpSignPrefab.position, JumpSignPrefab.rotation);
        _attack1Sign = (Transform)Instantiate (AttackSignPrefab, AttackSignPrefab.position, AttackSignPrefab.rotation);
        _attack2Sign = (Transform)Instantiate (AttackSignPrefab, -AttackSignPrefab.position, AttackSignPrefab.rotation);
        _pickupSign = (Transform)Instantiate (ItemPickupSignPrefab, ItemPickupSignPrefab.position, ItemPickupSignPrefab.rotation);
        Transform glowOff = (Transform)Instantiate (GlowOffPrefab, GlowOffPrefab.position, GlowOffPrefab.rotation);
        _glowOff = glowOff.GetComponent<AlphaPulse> ();
        if (_glowOff == null)
            _glowOff = glowOff.gameObject.AddComponent<AlphaPulse> ();

        // Organize them away
        _blueCircle.parent = transform;
        _selections.parent = transform;
        _jumpSign.parent = transform;
        _attack1Sign.parent = transform;
        _attack2Sign.parent = transform;
        _pickupSign.parent = transform;
        glowOff.parent = transform;

        // And hide them
        _blueCircle.renderer.enabled = false;
        _selections.renderer.enabled = false;
        _jumpSign.renderer.enabled = false;
        _attack1Sign.renderer.enabled = false;
        _attack2Sign.renderer.enabled = false;
        _pickupSign.renderer.enabled = false;
        glowOff.renderer.enabled = false;

        // The dots indicating the action to the player
        _uiDots = new List<Transform> (9);
        for (int i = 0; i < 9; i++) {
            Transform dot = (Transform)Instantiate (DotPrefab, DotPrefab.position, DotPrefab.rotation);
            dot.renderer.enabled = false;
            dot.parent = transform;
            _uiDots.Add(dot);
        }

        // The relative positions at which those dots are located
        _dotPositions = new List<Vector3> (9);
        Vector3 originPoint = new Vector3 (0f, 0f, -0.3f);
        Vector3 zeroRotation = originPoint + Vector3.right * 9.7f;
        _dotPositions.Add(originPoint);
        _dotPositions.Add(zeroRotation);
        _dotPositions.Add(ZoneGraph.RotatePointAroundPivot(zeroRotation, originPoint, Vector3.forward * 25.0f));
        _dotPositions.Add(ZoneGraph.RotatePointAroundPivot(zeroRotation, originPoint, Vector3.forward * 90.0f));
        _dotPositions.Add(ZoneGraph.RotatePointAroundPivot(zeroRotation, originPoint, Vector3.forward * 155.0f));
        _dotPositions.Add(ZoneGraph.RotatePointAroundPivot(zeroRotation, originPoint, Vector3.forward * 180.0f));
        _dotPositions.Add(ZoneGraph.RotatePointAroundPivot(zeroRotation, originPoint, Vector3.forward * 210.0f));
        _dotPositions.Add(ZoneGraph.RotatePointAroundPivot(zeroRotation, originPoint, Vector3.forward * 270.0f));
        _dotPositions.Add(ZoneGraph.RotatePointAroundPivot(zeroRotation, originPoint, Vector3.forward * 330.0f));

        // Set up new update methods to show the GUI elements
        StartCoroutine (DisplayLeftHandSide ());
        StartCoroutine (DisplayRightHandSide ());

    }

    // Co-routines get stopped when the level is loaded, so this re-starts them as required
    void OnLevelWasLoaded()
    {
        // Make sure we're actually being used 
        if (_input.UpdateInputMethod != UpdateInput)
            return;

        // And make sure the co-routines really did stop 
        StopAllCoroutines();

        // Start the co-routines again
        StartCoroutine (DisplayLeftHandSide ());
        StartCoroutine (DisplayRightHandSide ());

    }

    public void Enable ()
    {
        _input.UpdateInputMethod = this.UpdateInput;

    }
    
    public void Disable ()
    {
        _input.UpdateInputMethod = null;

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
            InterpretMovementSwipe (touch);
            InterpretInteractSwipe (touch);
        }

    }

    private void InterpretMovementSwipe (Touch touch)
    {
        // Keep track of when we start touching the left-hand side of the screen 
        if (touch.phase == TouchPhase.Began && _moveID == -1 && touch.position.x < Screen.width / 2) {
            _moveID = touch.fingerId;
            _moveStartPos = touch.position;
            _lastMovePos = touch.position;
            return;

        }

        // We're only concerned with the touch we've already started tracking for movement
        if (touch.fingerId != _moveID)
            return;

        // Make sure we update it's location, when we have it
        _lastMovePos = touch.position;

        // Stop tracking the touch when they let go
        if (touch.phase == TouchPhase.Canceled || touch.phase == TouchPhase.Ended) {
            _moveID = -1;
            return;
        }

        // Actually update the movement input when appropriate
        Vector2 delta = _lastMovePos - _moveStartPos;
        if (delta.magnitude > _moveMin) {

            // TODO: ONLY ALLOW LEFT/RIGHT WHEN RUNNING AND ONLY ALLOW UP/DOWN WHEN CLIMBING
            // Handle horizontal input
            if (Mathf.Abs (delta.x) > Mathf.Abs (delta.y)) { 
				_input.Horizontal = delta.x / _distanceForMaxSpeed;

            // Handle vertical input
            } else 
                _input.Vertical = delta.y / _distanceForMaxSpeed;
        }

    }

    private void InterpretInteractSwipe (Touch touch)
    {
        // Keep track of when we start touching the right-hand side of the screen
        if (touch.phase == TouchPhase.Began && _actionID == -1 && touch.position.x > Screen.width / 2) {
            _actionID = touch.fingerId;
            _actionStartPos = touch.position;
            _lastActionPos = touch.position;

        // Update the touch as appropriate
        } else if (touch.fingerId == _actionID) {
            _lastActionPos = touch.position;
            if (touch.phase == TouchPhase.Canceled || touch.phase == TouchPhase.Ended)
                InterpretInteraction ();// Interpret action on release
        }

    }

    // A helper for choosing an action from the right-hand side of the screen
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
            _horizontalSlider.renderer.enabled = moveTouched;
            _verticalSlider.renderer.enabled = moveTouched;
            _moveButton.renderer.enabled = moveTouched;
            _radioWaves.renderer.enabled = false;
            if (!moveTouched)
                continue;

            // Determine information about the movement input
            Vector3 startPos = ConvertTouchPosToWorldPoint (_moveStartPos);
            Vector3 currentPos = ConvertTouchPosToWorldPoint (_lastMovePos);

            // Put the sliders at the correct spot (we offset to keep them centered)
            _horizontalSlider.transform.position = startPos + Vector3.up * 0.18f;
            _verticalSlider.transform.position = startPos + Vector3.left * 0.18f;

            // The size of the slider indicates the player speed
            Vector3 horizontalScale = _horizontalSlider.transform.localScale;
            float targetScale = 1 + 15 * _input.Horizontal;
            horizontalScale.x = targetScale;
            _horizontalSlider.transform.localScale = horizontalScale;
            _verticalSlider.transform.localScale = horizontalScale;
            
            // Move the button to the correct spot
            _moveButton.position = currentPos;
            Vector2 delta = _lastMovePos - _moveStartPos;
            if (delta.magnitude > _moveMin) {
                if (Mathf.Abs (delta.x) > Mathf.Abs (delta.y)) 
                    _moveButton.position = new Vector3 (currentPos.x, startPos.y, currentPos.z);
                else
                    _moveButton.position = new Vector3 (startPos.x, currentPos.y, currentPos.z);
            }

            // Have certain effects to really show off player sneaking
            if (GameManager.Player.IsSneaking) {
                _horizontalSlider.renderer.material.color = Color.white;
                _verticalSlider.renderer.material.color = Color.white;
            } else {
                _horizontalSlider.renderer.material.color = Color.red;
                _verticalSlider.renderer.material.color = Color.red;
                _radioWaves.renderer.enabled = true;
                _radioWaves.transform.position = startPos;
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
            _blueCircle.renderer.enabled = actTouched;
            _selections.renderer.enabled = actTouched;
            _jumpSign.renderer.enabled = actTouched;
            _attack1Sign.renderer.enabled = actTouched;
            _attack2Sign.renderer.enabled = actTouched;
            _pickupSign.renderer.enabled = actTouched;
            for (int dot=0; dot<_uiDots.Count; dot++)
                _uiDots [dot].renderer.enabled = actTouched;
            if (!actTouched)
                continue;

            // Put the images at the correct spot
            Vector3 pos = ConvertTouchPosToWorldPoint (_actionStartPos);
            _blueCircle.position = pos;
            _selections.position = pos + SelectionsPrefab.position;
            _jumpSign.position = pos + JumpSignPrefab.position;
            _attack1Sign.position = pos + AttackSignPrefab.position;
            _attack2Sign.position = pos + AttackSignPrefab.position + Vector3.left * 2 * AttackSignPrefab.position.x;
            _pickupSign.position = pos + ItemPickupSignPrefab.position;
        
            // Put the dots at the correct positions, and color/enable things as appropriate
            _selections.renderer.material.color = Color.white;
            float deg = CalculateActionDegree ();
            for (int dot=0; dot<_uiDots.Count; dot++) {
                _uiDots [dot].transform.position = pos + _dotPositions[dot];
                _uiDots [dot].renderer.enabled = true;
                _uiDots [dot].renderer.material.color = Color.white;

                if (IsInteraction (deg) && dot == 0) {
                    _selections.renderer.material.color = Color.black;
                    _uiDots [dot].renderer.material.color = Color.black;
                } else if (IsJumpRight (deg) && dot == 2) {
                    _selections.renderer.material.color = Color.blue;
                    _uiDots [dot].renderer.material.color = Color.blue;
                } else if (IsJumpUp (deg) && dot == 3) {
                    _selections.renderer.material.color = Color.blue;
                    _uiDots [dot].renderer.material.color = Color.blue;
                } else if (IsJumpLeft (deg) && dot == 4) {
                    _selections.renderer.material.color = Color.blue;
                    _uiDots [dot].renderer.material.color = Color.blue;
                } else if (IsAttackLeft (deg) && (dot == 4 || dot == 5 || dot == 6)) {
                    _selections.renderer.material.color = Color.red;
                    _uiDots [dot].renderer.material.color = Color.red;
                } else if (IsPickup (deg) && (dot == 6 || dot == 7 || dot == 8)) {
                    _selections.renderer.material.color = Color.green;
                    _uiDots [dot].renderer.material.color = Color.green;
                } else if (IsAttackRight (deg) && (dot == 8 || dot == 1 || dot == 2)) {
                    _selections.renderer.material.color = Color.red;
                    _uiDots [dot].renderer.material.color = Color.red;
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
