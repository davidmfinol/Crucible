using UnityEngine;
using System.Collections;

/*
/// <summary>
/// Character FSM visual debugger debugs CharacterFiniteStateMachineBase.
/// In particular, it displays the Current State and Z Zones of the FSM on-screen during runtime.
/// </summary>
[RequireComponent(typeof(CharacterFiniteStateMachineBase))]
[AddComponentMenu("Debug/FSM")]
public class CharacterFSMVisualDebugger : MonoBehaviour
{
    public bool Hide = true;
    public bool ShowCharacterState = true;
    public bool ShowZLevels = true;
	
	void Awake()
	{
		enabled = Debug.isDebugBuild;
	}
	
    void OnGUI()
    {
        if (Hide)
			return;
		
        if (ShowCharacterState)
        {
            GUI.Box(new Rect(10, 10, 300, 20), GetComponent<CharacterFiniteStateMachineBase>().CurrentState.ToString());
            GUI.Box(new Rect(10, 35, 300, 20), ((CharacterFiniteStateMachineState)GetComponent<CharacterFiniteStateMachineBase>().GetState()).Duration.ToString());
        }
        if (ShowZLevels)
        {
            GUI.Box(new Rect(10, 60, 300, 20), "Current Z: " + GetComponent<CharacterFiniteStateMachineBase>().ZLevel.ToString());
            string zones = "";
            foreach (Zone z in GetComponent<CharacterFiniteStateMachineBase>().Zones)
                zones += z.transform.position.z.ToString() + " ";
            GUI.Box(new Rect(10, 85, 300, 20), "Zones: " + zones);
            GUI.Box(new Rect(10, 110, 300, 20), "Z_Down: " + GetComponent<CharacterFiniteStateMachineBase>().Z_Down.ToString() + ", Z_Up: " + GetComponent<CharacterFiniteStateMachineBase>().Z_Up.ToString() + ", TransitionZ: " + GetComponent<CharacterFiniteStateMachineBase>().CanTransitionZ.ToString());
        }
    }
}
*/