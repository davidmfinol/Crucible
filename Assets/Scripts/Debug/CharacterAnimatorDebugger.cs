using UnityEngine;
using System.Collections;

/// <summary>
/// CharacterAnimatorDebugger debugs the CharacterAnimator.
/// In particular, it displays the current movement information and Z Zones of the Animator on-screen during runtime.
/// </summary>
[RequireComponent(typeof(CharacterAnimator))]
[AddComponentMenu("Debug/CharacterAnimatorDebugger")]
public class CharacterAnimatorDebugger : MonoBehaviour
{
    public bool Hide = true;
    public bool ShowCharacterMotion = true;
    public bool ShowZLevels = true;
	
	private CharacterAnimator _character;
	
	void Awake()
	{
		enabled = Debug.isDebugBuild;
		_character = GetComponent<CharacterAnimator>();
	}
	
    void OnGUI()
    {
        if (Hide)
			return;
		
        if (ShowCharacterMotion)
        {
            GUI.Box(new Rect(10, 10, 300, 20), "Direction: " + _character.Direction.ToString());
            GUI.Box(new Rect(10, 35, 300, 20), "Horizontal: " + _character.HorizontalSpeed + ", Vertical: " + _character.VerticalSpeed);
            GUI.Box(new Rect(10, 60, 300, 20), "Hang: " + _character.CanHangOffObject + ", Grab Pipe: " + _character.CanClimbPipe + ", Grab Ladder: " + _character.CanClimbLadder);
			GUI.Box(new Rect(10, 85, 300, 20), "Current State: " + _character.StateMachine[_character.CurrentState.nameHash].Method.Name.ToString());
		}
        if (ShowZLevels)
        {
            //GUI.Box(new Rect(10, 85, 300, 20), "Current Zone: " + _character.CurrentZone);
            string zones = "";
            foreach (Zone z in _character.Zones)
                zones += z.transform.position.z.ToString() + " ";
            GUI.Box(new Rect(10, 110, 300, 20), "Zones: " + zones);
            GUI.Box(new Rect(10, 135, 300, 20), "Z_Down: " + _character.Z_Down + ", Z_Up: " + _character.Z_Up + ", TransitionZ: " + _character.CanTransitionZ);
        }
	}
}