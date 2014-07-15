using UnityEngine;
using System.Collections;

/// <summary>
/// Nontouch input interprets player input for non-touch devices.
/// </summary>
[AddComponentMenu("User Interface/Player Input/Non-touch Input")]
public class NontouchInput : MonoBehaviour
{
    // Analog modifier for keyboard
    private bool _shift = false;
    
    // Where we store the input
    private CharacterInput _input;

    // Keep track of weapon cycling state
    private bool _cycleWeaponRight;
    private bool _cycleWeaponLeft;

    void Start ()
    {
        _input = GameManager.Player.GetComponent<CharacterInput> ();
        _cycleWeaponRight = false;
        _cycleWeaponLeft = false;

    }

    public void Enable ()
    {
        this.enabled = true;
        _input.UpdateInputMethod = this.UpdateInput;

    }

    public void Disable ()
    {
        _input.UpdateInputMethod = null;
        this.enabled = false;

    }

    public void UpdateInput ()
	{
        bool joystickCycleRight = false;
        bool joystickCycleLeft = false;
        if (Input.GetJoystickNames ().Length > 0 && Input.GetJoystickNames () [0] == "Controller (XBOX 360 For Windows)") { // FIXME: MAC??
            _input.Attack = 0;
            _input.Pickup = false;

            _input.Interaction = Input.GetKey (KeyCode.Joystick1Button0);
            _input.Vertical = Input.GetAxis ("Left Stick V");
            _input.Horizontal = Input.GetAxis ("Left Stick H");
            _input.Jump = new Vector2 (Input.GetAxis ("Right Stick H"), -Input.GetAxis ("Right Stick V"));
            if (Input.GetKey (KeyCode.Joystick1Button1))
                _input.Jump = new Vector2 (1, 1);
            else if (Input.GetKey (KeyCode.Joystick1Button2))
                _input.Jump = new Vector2 (-1, 1);
            else if (Input.GetKey (KeyCode.Joystick1Button3))
                _input.Jump = new Vector2 (0, 1);
            if (Input.GetAxis ("Triggers") > 0.5)
                _input.Attack = -1;
            else if (Input.GetAxis ("Triggers") < -0.5)
                _input.Attack = 1;

            joystickCycleLeft = Input.GetKey (KeyCode.Joystick1Button4);
            joystickCycleRight = Input.GetKey (KeyCode.Joystick1Button5);
        } else {
            _shift = Input.GetButton ("Shift");
            float horizontal = Input.GetAxis ("Horizontal");
            _input.Horizontal = _shift ? horizontal * 0.5f : horizontal;
            _input.Vertical = Input.GetAxis ("Vertical");
            _input.Interaction = Input.GetButton ("Interaction");
            _input.Jump = new Vector2 (Input.GetAxis ("JumpX"), Input.GetAxis ("JumpY"));
            _input.Attack = Input.GetAxis ("Attack");
            _input.Pickup = Input.GetButton ("Pickup") || (Input.GetAxis("Vertical") < -0.1f && GameManager.Player.IsClimbing);
            _input.Any = Input.anyKey;
        }
        
        // Cycle through weapons
        bool rightLast = _cycleWeaponRight;
        bool leftLast = _cycleWeaponLeft;
        _cycleWeaponRight = Input.GetAxis ("WeaponCycling") > 0.1f || joystickCycleRight;
        _cycleWeaponLeft = Input.GetAxis ("WeaponCycling") < -0.1f || joystickCycleLeft;
        if (!rightLast && _cycleWeaponRight)
            GameManager.UI.CycleToNextWeapon ();
        else if (!leftLast && _cycleWeaponLeft)
            GameManager.UI.CycleToPreviousWeapon ();

    }
}
