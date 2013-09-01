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
	public bool HighlightCurrentNode = false;
	
	public Transform HighlightNode;
	private GameObject _node;
	private ZombieFSM _fsm;
	private ZombieBrain _brain;
	
	public void Awake()
	{
		_fsm = GetComponent<ZombieFSM>();
		_brain = _fsm.Brain;
		_node = ((Transform) Instantiate(HighlightNode, Vector3.zero, Quaternion.identity)).gameObject;
		_node.renderer.enabled = false;
	}
	
	public void Update()
	{
		if(HighlightCurrentNode && _brain.Path != null && _brain.CurrentPathWaypoint < _brain.Path.vectorPath.Count)
		{
			_node.renderer.enabled = false;
			_node.transform.position = _brain.Path.vectorPath[_brain.CurrentPathWaypoint];
		}
		else
		{
			_node.renderer.enabled = false;
		}
	}
	
    public void OnGUI()
    {
        if (!ShowAI)
			return;
		
		if(_brain == null)
		{
			_fsm = GetComponent<ZombieFSM>();
			_brain = _fsm.Brain;
		}
		
        GUI.Box(new Rect(10, 135, 300, 20), "Vertical: " + _brain.Vertical + ", Horizontal: " + _brain.Horizontal + ", Jump: " + _brain.Jump + ", Attack:" + _brain.Attack);
        GUI.Box(new Rect(10, 160, 300, 20), "Transition Recent: " + _brain.HasTransitionRecent + ", Repathed: " + _brain.TimeSinceRepath);
    	GUI.Box(new Rect(10, 185, 300, 20), "Target: " + _brain.Target + ", Searching: " + _brain.SearchingForPath);
		if(_brain.Path != null)
        	GUI.Box(new Rect(10, 210, 300, 20), "At node " + (_brain.CurrentPathWaypoint + 1) + " of path length " + _brain.Path.vectorPath.Count);
    }
}
