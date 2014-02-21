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
    private CharacterInput _playerInput;


    void Awake()
    {
        enabled = Debug.isDebugBuild;
    }

    void Start()
    {
        _touchInput = GameManager.UI.GetComponent<TouchInput>();
        _playerInput = GameManager.Player.GetComponent<CharacterInput>();
    }

    void OnGUI()
    {
        if(Hide)
            return;

        GUI.Box(new Rect(300, 10, 300, 20), "Last Movement: " + _touchInput.LastMovePos);
        GUI.Box(new Rect(300, 35, 300, 20), "Last Action: " + _touchInput.LastActionPos);
        GUI.Box(new Rect(300, 60, 300, 20), "H: " + _playerInput.Horizontal + "  V: " + _playerInput.Vertical);
        GUI.Box (new Rect (300, 85, 300, 20), "Att: " + _playerInput.Attack + "  Jump: " + _playerInput.Jump);
        GUI.Box (new Rect (300, 110, 300, 20), "Int: " + _playerInput.Interaction + "  Pickup: " + _playerInput.Pickup);
    }
}
