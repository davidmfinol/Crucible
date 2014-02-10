using UnityEngine;
using System.Collections;

/// <summary>
/// Input debugger.
/// </summary>
[AddComponentMenu("Debug/Input Debugger")]
public class InputDebugger : MonoBehaviour
{
    public bool Hide = true;

    private TouchInput _touchInput;
    private PlayerCharacterInput _playerInput;


    void Awake()
    {
        enabled = Debug.isDebugBuild;
    }

    void Start()
    {
        _touchInput = GameManager.Hud.GetComponent<TouchInput>();
        _playerInput = GameManager.Player.GetComponent<PlayerCharacterInput>();
    }

    void OnGUI()
    {
        if(Hide)
            return;

        GUI.Box(new Rect(300, 10, 300, 20), "GUI Mode: " + _touchInput.MovementUIType);
        GUI.Box(new Rect(300, 35, 300, 20), "Last Swipe: " + _touchInput.LastSwipeDeg);
        GUI.Box(new Rect(300, 60, 300, 20), "H: " + _playerInput.Horizontal + "  V: " + _playerInput.Vertical);
        GUI.Box (new Rect (300, 85, 300, 20), "Att: " + _playerInput.Attack + "  Jump: " + _playerInput.Jump);
        GUI.Box (new Rect (300, 110, 300, 20), "Int: " + _playerInput.Interaction + "  Pickup: " + _playerInput.Pickup);
    }
}
