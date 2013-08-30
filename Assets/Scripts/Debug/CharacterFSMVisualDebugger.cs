using UnityEngine;
using System.Collections;

[RequireComponent(typeof(CharacterFiniteStateMachineBase))]
public class CharacterFSMVisualDebugger : MonoBehaviour
{
    public bool Hide = true;
    public bool ShowCharacterState = true;
    public bool ShowZLevels = true;
	
    void OnGUI()
    {
        if (!Hide)
        {
            if (ShowCharacterState)
            {
                GUI.Box(new Rect(10, 10, 300, 20), GetComponent<CharacterFiniteStateMachineBase>().CurrentState.ToString());
                GUI.Box(new Rect(10, 35, 300, 20), ((CharacterFiniteStateMachineState)GetComponent<CharacterFiniteStateMachineBase>().GetState()).Duration.ToString());
            }
            if (ShowZLevels)
            {
                GUI.Box(new Rect(10, 60, 300, 20), "Current Z: " + GetComponent<CharacterFiniteStateMachineBase>().ZLevel.ToString());
                GUI.Box(new Rect(10, 85, 300, 20), "Z_Down: " + GetComponent<CharacterFiniteStateMachineBase>().Z_Down.ToString());
                GUI.Box(new Rect(10, 110, 300, 20), "Z_Up: " + GetComponent<CharacterFiniteStateMachineBase>().Z_Up.ToString());
                string zones = "";
                foreach (Zone z in GetComponent<CharacterFiniteStateMachineBase>().Zones)
                    zones += z.transform.position.z.ToString() + " ";
                GUI.Box(new Rect(10, 135, 300, 20), "Zones: " + zones);
                GUI.Box(new Rect(10, 160, 300, 20), "Can Transition Z: " + GetComponent<CharacterFiniteStateMachineBase>().CanTransitionZ.ToString());
            }
        }
    }
}