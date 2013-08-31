using UnityEngine;
using System.Collections;
using System.Collections.Generic;

/// <summary>
/// Zombie AI debugger displays AI information for the zombie.
/// In particular, it displays the AI Output and A* Path, with option of rendering path nodes on-screen at runtime.
/// It also works with the FSM Debugger by showing the information right below the FSM Debugger's location.
/// </summary>
[RequireComponent(typeof(ZombieFSM))]
[AddComponentMenu("Debug/Zombie AI")]
public class ZombieAIDebugger : MonoBehaviour
{
	public bool ShowAI = false;
	public bool ShowNodes = false;
	public bool HighlightCurrentNode = false;
	
	public Transform Node;
	public Transform HighlightNode;
	
	public void Update()
	{
		ZombieBrain brain = GetComponent<ZombieFSM>().Brain;
		//TODO: Update visualization
		List<GameObject> nodes;
		//if(ShowNodes)
		//if(HighlightCurrentNode)
	}
	
    public void OnGUI()
    {
        if (!ShowAI)
			return;
		
		ZombieBrain brain = GetComponent<ZombieFSM>().Brain;
        GUI.Box(new Rect(10, 135, 300, 20), "Vertical: " + brain.Vertical + ", Horizontal: " + brain.Horizontal + ", Jump: " + brain.Jump + ", Attack:" + brain.Attack);
        GUI.Box(new Rect(10, 160, 300, 20), "Transition Recent: " + brain.HasTransitionRecent + ", Repathed: " + brain.TimeSinceRepath);
		if(brain.Path != null)
        	GUI.Box(new Rect(10, 185, 300, 20), "At node " + (brain.CurrentPathWaypoint + 1) + " of path length " + brain.Path.vectorPath.Count);
    }
}
