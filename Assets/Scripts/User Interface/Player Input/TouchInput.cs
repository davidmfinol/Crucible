using UnityEngine;
using System.Collections;
using System.Collections.Generic;

/// <summary>
/// Touch Input is responsible for accepting the player's input on a mobile device and passing it to the playercharacter's input.
/// </summary>
[AddComponentMenu("User Interface/Player Input/Touch Input")]
public class TouchInput : MonoBehaviour
{
    // Prefabs for the left-hand side of the touch input
    public Transform SliderPrefab;
    public Transform MoveButtonPrefab;
    public Transform RadioPrefab;

    // Prefabs for the right-hand side of the touch input
    public Transform BlueCirclePrefab;
    public Transform SelectionsPrefab;
    public Transform GlowOffPrefab;
    public Transform ParticlePrefab;
    public Transform JumpSignPrefab;
    public Transform AttackSignPrefab;
    public Transform ItemPickupSignPrefab;
    public Transform DotPrefab;

    // How many inches the player swipes to reach maximum running speed
    public float InchesForMaxSpeed;

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
    private Transform _glowOff;
    private ParticleSystem _particles;
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
    private float _speedForInstantAction;
    
    // Where we store the input
    private CharacterInput _input;

    void Start ()
    {
        // Set up motion variables
        _moveID = -1;
        _moveStartPos = Vector2.zero;
        _moveMin = Screen.width / 32.0f; // TODO: MAKE SURE THIS VALUE NEVER BECOMES TOO LARGE
        _lastMovePos = Vector2.zero;
        float dpi = Screen.dpi;
        if(dpi <= 0) {
            Debug.LogWarning("Failed to find Screen DPI!");
            dpi = 160; // Default value for Android mdpi devices
        }
        _distanceForMaxSpeed = InchesForMaxSpeed * dpi;

        // Set up action variables
        _actionID = -1;
        _actionStartPos = Vector2.zero;
        _actionMin = Screen.width / 32.0f; // TODO: MAKE SURE THIS VALUE NEVER BECOMES TOO LARGE
        _lastActionPos = Vector2.zero;
        _speedForInstantAction = _distanceForMaxSpeed * 100.0f; // TODO: DETERMINE A GOOD VALUE FOR THIS

        // Gonna store the input here
        _input = GameManager.Player.GetComponent<CharacterInput> ();

        // Left-hand side GUI
        _horizontalSlider = (Transform)Instantiate (SliderPrefab, SliderPrefab.position, Quaternion.identity);
        _verticalSlider = (Transform)Instantiate (SliderPrefab, SliderPrefab.position, Quaternion.Euler (Vector3.forward * 90));
        _moveButton = (Transform)Instantiate (MoveButtonPrefab, MoveButtonPrefab.position, MoveButtonPrefab.rotation);
        _radioWaves = (Transform)Instantiate (RadioPrefab, RadioPrefab.position, RadioPrefab.rotation);

        // Organize it away
        _horizontalSlider.parent = transform;
        _verticalSlider.parent = transform;
        _moveButton.parent = transform;
        _radioWaves.parent = transform;

        // And hide them
        _horizontalSlider.GetComponent<Renderer>().enabled = false;
        _verticalSlider.GetComponent<Renderer>().enabled = false;
        _moveButton.GetComponent<Renderer>().enabled = false;
        _radioWaves.GetComponent<Renderer>().enabled = false;

        // Right-hand side GUI
        _blueCircle = (Transform)Instantiate (BlueCirclePrefab, BlueCirclePrefab.position, BlueCirclePrefab.rotation);
        Color blueAlpha = _blueCircle.GetComponent<Renderer>().material.color;
        blueAlpha.a = blueAlpha.a * 0.5f;
        _blueCircle.GetComponent<Renderer>().material.color = blueAlpha;
        _selections = (Transform)Instantiate (SelectionsPrefab, SelectionsPrefab.position, SelectionsPrefab.rotation);
        _jumpSign = (Transform)Instantiate (JumpSignPrefab, JumpSignPrefab.position, JumpSignPrefab.rotation);
        _attack1Sign = (Transform)Instantiate (AttackSignPrefab, AttackSignPrefab.position, AttackSignPrefab.rotation);
        _attack2Sign = (Transform)Instantiate (AttackSignPrefab, -AttackSignPrefab.position, AttackSignPrefab.rotation);
        _pickupSign = (Transform)Instantiate (ItemPickupSignPrefab, ItemPickupSignPrefab.position, ItemPickupSignPrefab.rotation);
        _glowOff = (Transform)Instantiate (GlowOffPrefab, GlowOffPrefab.position, GlowOffPrefab.rotation);
        Transform particles = (Transform)Instantiate (ParticlePrefab, ParticlePrefab.position, ParticlePrefab.rotation);
        _particles = particles.GetComponent<ParticleSystem> ();

        // Organize them away
        _blueCircle.parent = transform;
        _selections.parent = transform;
        _jumpSign.parent = transform;
        _attack1Sign.parent = transform;
        _attack2Sign.parent = transform;
        _pickupSign.parent = transform;
        _glowOff.parent = transform;

        // And hide them
        _blueCircle.GetComponent<Renderer>().enabled = false;
        _selections.GetComponent<Renderer>().enabled = false;
        _jumpSign.GetComponent<Renderer>().enabled = false;
        _attack1Sign.GetComponent<Renderer>().enabled = false;
        _attack2Sign.GetComponent<Renderer>().enabled = false;
        _pickupSign.GetComponent<Renderer>().enabled = false;
        _glowOff.GetComponent<Renderer>().enabled = false;

        // The dots indicating the action to the player
        _uiDots = new List<Transform> (9);
        for (int i = 0; i < 9; i++) {
            Transform dot = (Transform)Instantiate (DotPrefab, DotPrefab.position, DotPrefab.rotation);
            dot.GetComponent<Renderer>().enabled = false;
            dot.parent = transform;
            _uiDots.Add (dot);
        }

        // The relative positions at which those dots are located
        _dotPositions = new List<Vector3> (9);
        Vector3 originPoint = new Vector3 (0f, 0f, -0.3f);
        Vector3 zeroRotation = originPoint + Vector3.right * 9.7f;
        _dotPositions.Add (originPoint);
        _dotPositions.Add (zeroRotation);
        _dotPositions.Add (ZoneGraph.RotatePointAroundPivot (zeroRotation, originPoint, Vector3.forward * 15.0f));
        _dotPositions.Add (ZoneGraph.RotatePointAroundPivot (zeroRotation, originPoint, Vector3.forward * 90.0f));
        _dotPositions.Add (ZoneGraph.RotatePointAroundPivot (zeroRotation, originPoint, Vector3.forward * 165.0f));
        _dotPositions.Add (ZoneGraph.RotatePointAroundPivot (zeroRotation, originPoint, Vector3.forward * 180.0f));
        _dotPositions.Add (ZoneGraph.RotatePointAroundPivot (zeroRotation, originPoint, Vector3.forward * 235.0f));
        _dotPositions.Add (ZoneGraph.RotatePointAroundPivot (zeroRotation, originPoint, Vector3.forward * 270.0f));
        _dotPositions.Add (ZoneGraph.RotatePointAroundPivot (zeroRotation, originPoint, Vector3.forward * 305.0f));

        // Set up new update methods to show the GUI elements
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
        _actionID = -1;
        _moveID = -1;

    }

    // The input class will call this method while touch input is enabled
    public void UpdateInput (float elapsedTime)
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
            _input.Any = true;
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

            // Handle horizontal input
            // TODO: float prevHorizontal = _input.Horizontal;
            if (GameManager.Player.CanInputHorizontal && (!GameManager.Player.CanInputVertical || Mathf.Abs (delta.x) > Mathf.Abs (delta.y)) ) { 
                _input.Horizontal = delta.x / _distanceForMaxSpeed;
                if (_input.Horizontal > 0.66f)
                    _input.Horizontal += (_input.Horizontal - 0.66f) * 2.0f;
                else if (_input.Horizontal < -0.66f)
                    _input.Horizontal += (_input.Horizontal + 0.66f) * 2.0f;

                // Let the player know when running by having the phone vibrate
                // TODO: if( prevHorizontal < 0.66 && _input.Horizontal >= 0.66f)
                //    Handheld.Vibrate();

            // Handle vertical input
            } else if (GameManager.Player.CanInputVertical)
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
            float touchSpeed = touch.deltaPosition.magnitude / touch.deltaTime;
            if (touch.phase == TouchPhase.Canceled || touch.phase == TouchPhase.Ended || touchSpeed > _speedForInstantAction)
                InterpretInteraction ();// Interpret action on release
        }

    }

    // A helper for choosing an action from the right-hand side of the screen
    private void InterpretInteraction ()
    {
        _actionID = -1;

        float deg = CalculateActionDegree ();

        if (GameManager.Player.CanInputJump && IsJumpRight (deg))
            _input.Jump = new Vector2 (1, 1);
        else if (GameManager.Player.CanInputJump && IsJumpUp (deg))
            _input.Jump = new Vector2 (0, 1);
        else if (GameManager.Player.CanInputJump && IsJumpLeft (deg))
            _input.Jump = new Vector2 (-1, 1);
        else if (GameManager.Player.CanInputAttack && IsAttackLeft (deg))
            _input.Attack = -1;
        else if (GameManager.Player.CanInputPickup && IsPickup (deg))
            _input.Pickup = true;
        else if (GameManager.Player.CanInputAttack && IsAttackRight (deg)) 
            _input.Attack = 1;
        else if (GameManager.Player.CanInputInteraction && IsInteraction (deg))
            _input.Interaction = true;

        DisplayParticles (deg);

    }

    // Helper method to put the GUI images in the correct location
    public Vector3 ConvertTouchPosToWorldPoint (Vector2 touchPos)
    {
        Vector3 cameraPos = touchPos;
        cameraPos.x /= Screen.width;
        cameraPos.y /= Screen.height;
        cameraPos.z = -GameManager.UI.UICamera.transform.position.z;
        return GameManager.UI.UICamera.ViewportToWorldPoint (cameraPos);
        
    }

    public void DisplayParticles (float degrees)
    {
        _particles.transform.position = ConvertTouchPosToWorldPoint (_actionStartPos);
        Quaternion rot = Quaternion.Euler(Vector3.forward * degrees) * ParticlePrefab.rotation;
        _particles.transform.rotation = rot;

        _particles.startColor = Color.white;
        if (GameManager.Player.CanInputJump && (IsJumpLeft (degrees) || IsJumpUp (degrees) || IsJumpRight (degrees)))
            _particles.startColor = Color.blue;
        else if (GameManager.Player.CanInputAttack && (IsAttackLeft (degrees) || IsAttackRight (degrees)))
            _particles.startColor = Color.red;
        else if (GameManager.Player.CanInputPickup && IsPickup (degrees))
            _particles.startColor = Color.green;

        if(_particles.startColor != Color.white)
            _particles.Play ();

    }

    // Draw code
    IEnumerator DisplayLeftHandSide ()
    {
        // We're essentially replicating another update loop for rendering the left hand side
        while (true) {
            yield return null;
            
            // Make the left-hand side appear only when touching the screen
            bool moveTouched = _moveID != -1 && _input.UpdateInputMethod != null;
            bool shouldShowHorizontal = moveTouched && GameManager.Player.CanInputHorizontal;
            if (!_horizontalSlider.GetComponent<Renderer>().enabled && shouldShowHorizontal)
                _horizontalSlider.GetComponent<Renderer>().enabled = true;
            else if (_horizontalSlider.GetComponent<Renderer>().enabled && !shouldShowHorizontal)
                _horizontalSlider.GetComponent<Renderer>().enabled = false;
            bool shouldShowVertical = moveTouched && GameManager.Player.CanInputVertical;
            if (!_verticalSlider.GetComponent<Renderer>().enabled && shouldShowVertical)
                _verticalSlider.GetComponent<Renderer>().enabled = true;
            else if (_verticalSlider.GetComponent<Renderer>().enabled && !shouldShowVertical)
                _verticalSlider.GetComponent<Renderer>().enabled = false;
            _moveButton.GetComponent<Renderer>().enabled = moveTouched;
            _radioWaves.GetComponent<Renderer>().enabled = false;
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
            
            // Move the button to the correct spot
            _moveButton.position = currentPos;
            Vector2 delta = _lastMovePos - _moveStartPos;
            if (delta.magnitude > _moveMin) {
                if (GameManager.Player.CanInputVertical && Mathf.Abs (delta.x) < Mathf.Abs (delta.y))
                    _moveButton.position = new Vector3 (startPos.x, currentPos.y, currentPos.z);
                else if (GameManager.Player.CanInputHorizontal) 
                    _moveButton.position = new Vector3 (currentPos.x, startPos.y, currentPos.z);
            }

            // Have certain effects to show the player's noise status
            if (GameManager.Player.IsSneaking) {
                _horizontalSlider.GetComponent<Renderer>().material.color = Color.white;
                _verticalSlider.GetComponent<Renderer>().material.color = Color.white;

                // Yellow indicates we're getting close to making noise
                if(Mathf.Abs(GameManager.Player.HorizontalSpeed) > GameManager.Player.Settings.MaxHorizontalSpeed * 0.5f) {
                    _horizontalSlider.GetComponent<Renderer>().material.color = Color.yellow;
                    _verticalSlider.GetComponent<Renderer>().material.color = Color.yellow;
                }

            // Red with radio waves indicates making noise
            } else {
                _horizontalSlider.GetComponent<Renderer>().material.color = Color.red;
                _verticalSlider.GetComponent<Renderer>().material.color = Color.red;
                _radioWaves.GetComponent<Renderer>().enabled = true;
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

            // Make the images visible as appropriate
            bool actTouched = _actionID != -1;
            _blueCircle.GetComponent<Renderer>().enabled = actTouched;
            _selections.GetComponent<Renderer>().enabled = actTouched;
            _jumpSign.GetComponent<Renderer>().enabled = actTouched && GameManager.Player.CanInputJump;
            _attack1Sign.GetComponent<Renderer>().enabled = actTouched && GameManager.Player.CanInputAttack;
            _attack2Sign.GetComponent<Renderer>().enabled = actTouched && GameManager.Player.CanInputAttack;
            _pickupSign.GetComponent<Renderer>().enabled = actTouched && GameManager.Player.CanInputPickup;
            _glowOff.GetComponent<Renderer>().enabled = actTouched;

            // Make the dots visible as appropriate
            _uiDots [0].GetComponent<Renderer>().enabled = actTouched;
            _uiDots [1].GetComponent<Renderer>().enabled = actTouched && GameManager.Player.CanInputAttack;
            _uiDots [2].GetComponent<Renderer>().enabled = actTouched && (GameManager.Player.CanInputAttack || GameManager.Player.CanInputJump);
            _uiDots [3].GetComponent<Renderer>().enabled = actTouched && GameManager.Player.CanInputJump;
            _uiDots [4].GetComponent<Renderer>().enabled = actTouched && (GameManager.Player.CanInputJump || GameManager.Player.CanInputAttack);
            _uiDots [5].GetComponent<Renderer>().enabled = actTouched && GameManager.Player.CanInputAttack;
            _uiDots [6].GetComponent<Renderer>().enabled = actTouched && (GameManager.Player.CanInputAttack || GameManager.Player.CanInputPickup);
            _uiDots [7].GetComponent<Renderer>().enabled = actTouched && GameManager.Player.CanInputPickup;
            _uiDots [8].GetComponent<Renderer>().enabled = actTouched && (GameManager.Player.CanInputPickup || GameManager.Player.CanInputAttack);

            // We don't need to move + color things if they're not visible
            if (!actTouched)
                continue;

            // Put the images at the correct spot
            Vector3 pos = ConvertTouchPosToWorldPoint (_actionStartPos);
            _blueCircle.position = pos;
            _selections.position = pos + SelectionsPrefab.position;
            _selections.GetComponent<Renderer>().material.color = Color.white;
            _jumpSign.position = pos + JumpSignPrefab.position;
            _jumpSign.GetComponent<Renderer>().material.color = Color.white;
            _attack1Sign.position = pos + AttackSignPrefab.position;
            _attack1Sign.GetComponent<Renderer>().material.color = Color.white;
            _attack2Sign.position = pos + AttackSignPrefab.position + Vector3.left * 2 * AttackSignPrefab.position.x;
            _attack2Sign.GetComponent<Renderer>().material.color = Color.white;
            _pickupSign.position = pos + ItemPickupSignPrefab.position;
            _pickupSign.GetComponent<Renderer>().material.color = Color.white;

            // Put the dots at the correct position
            for (int dot = 0; dot < _uiDots.Count; dot++) {
                _uiDots [dot].transform.position = pos + _dotPositions [dot];
                _uiDots [dot].GetComponent<Renderer>().material.color = Color.white;
            }
            
            // Put the glow-off at the correct location
            float deg = CalculateActionDegree ();
            Vector3 originPoint = pos + GlowOffPrefab.position;
            Vector3 zeroRotation = originPoint + Vector3.right * 9.0f;
            _glowOff.position = ZoneGraph.RotatePointAroundPivot (zeroRotation, originPoint, Vector3.forward * deg);
            _glowOff.rotation = Quaternion.Euler (Vector3.forward * deg);
            _glowOff.GetComponent<Renderer>().material.color = Color.white;

            // Color as appropriate
            if (IsInteraction (deg)) {
                _selections.GetComponent<Renderer>().material.color = Color.black;
                _glowOff.GetComponent<Renderer>().enabled = false;
                _uiDots [0].GetComponent<Renderer>().material.color = Color.black;

            } else if (GameManager.Player.CanInputJump && (IsJumpLeft (deg) || IsJumpUp (deg) || IsJumpRight (deg))) {
                _selections.GetComponent<Renderer>().material.color = Color.blue;
                _jumpSign.GetComponent<Renderer>().material.color = Color.blue;
                _glowOff.GetComponent<Renderer>().material.color = Color.blue;
                if (IsJumpRight (deg))
                    _uiDots [2].GetComponent<Renderer>().material.color = Color.blue;
                else if (IsJumpUp (deg))
                    _uiDots [3].GetComponent<Renderer>().material.color = Color.blue;
                if (IsJumpLeft (deg))
                    _uiDots [4].GetComponent<Renderer>().material.color = Color.blue;

            } else if (GameManager.Player.CanInputAttack && (IsAttackLeft (deg) || IsAttackRight (deg))) {
                _selections.GetComponent<Renderer>().material.color = Color.red;
                _glowOff.GetComponent<Renderer>().material.color = Color.red;
                if (IsAttackRight (deg)) {
                    _attack1Sign.GetComponent<Renderer>().material.color = Color.red; 
                    _uiDots [1].GetComponent<Renderer>().material.color = Color.red; 
                    _uiDots [2].GetComponent<Renderer>().material.color = Color.red; 
                    _uiDots [7].GetComponent<Renderer>().material.color = Color.red; 
                } else if (IsAttackLeft (deg)) {
                    _attack2Sign.GetComponent<Renderer>().material.color = Color.red;
                    _uiDots [4].GetComponent<Renderer>().material.color = Color.red; 
                    _uiDots [5].GetComponent<Renderer>().material.color = Color.red; 
                    _uiDots [6].GetComponent<Renderer>().material.color = Color.red; 
                }

            } else if (GameManager.Player.CanInputPickup && IsPickup (deg)) {
                _selections.GetComponent<Renderer>().material.color = Color.green;
                _pickupSign.GetComponent<Renderer>().material.color = Color.green;
                _glowOff.GetComponent<Renderer>().material.color = Color.green;
                _uiDots [6].GetComponent<Renderer>().material.color = Color.green;
                _uiDots [7].GetComponent<Renderer>().material.color = Color.green;
                _uiDots [8].GetComponent<Renderer>().material.color = Color.green;

            }

        }

    }

    public float CalculateActionDegree ()
    {
        Vector2 delta = _lastActionPos - _actionStartPos;
        float deg = -1000;
        if (delta.magnitude > _actionMin) {
            float rad = Mathf.Atan2 (delta.y, delta.x);
            deg = rad * Mathf.Rad2Deg;
        }
        return deg;

    }

    public bool IsJumpRight (float deg)
    {
        return deg > 15.0f && deg <= 75.0f;
    }

    public bool IsJumpUp (float deg)
    {
        return deg > 75.0f && deg <= 105.0f;
    }

    public bool IsJumpLeft (float deg)
    {
        return deg > 105.0f && deg <= 165.0f;
    }

    public bool IsAttackLeft (float deg)
    {
        return (deg > 165.0f && deg <= 235.0f) || (deg > -195.0f && deg <= -125.0f);
    }

    public bool IsPickup (float deg)
    {
        return (deg > 235.0f && deg <= 305.0f) || (deg > -125.0f && deg <= -55.0f);
    }

    public bool IsAttackRight (float deg)
    {
        return (deg > 305.0f && deg <= 375.0f) || (deg > -55.0f && deg <= 15.0f);
    }

    public bool IsInteraction (float deg)
    {
        return deg == -1000;
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

    public float SpeedForInstantAction {
        get { return _speedForInstantAction; } 
    }
}
