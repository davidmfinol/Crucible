using UnityEngine;
using System.Collections;
using System.Collections.Generic;

/// <summary>
/// Enemy AI debugger displays AI information for the Enemy.
/// In particular, it displays the AI Output and A* Path, with option of rendering path nodes on-screen at runtime.
/// It also works with the CharacterAnimator Debugger by showing the information right below that debugger's location.
/// </summary>
[RequireComponent(typeof(EnemyAI))]
[AddComponentMenu("Debug/Enemy AI Debugger")]
public class EnemyAIDebugger : MonoBehaviour
{
	public bool Hide = true;
	public bool ShowAI = true;
	public bool HighlightCurrentNode = true;
	
	public Transform HighlightNode;
	private GameObject _node;
    private EnemyAI _brain;
    private CharacterInput _input;


    void Awake()
    {
        enabled = Debug.isDebugBuild;
    }
	
	void Start()
	{
		_brain = GetComponent<EnemyAI>();
        _input = GetComponent<CharacterInput> ();
		_node = ((Transform) Instantiate(HighlightNode, Vector3.zero, Quaternion.identity)).gameObject;
		_node.renderer.enabled = false;
	}
	
	void Update()
	{
		if(!Hide && HighlightCurrentNode && _brain!= null && _brain.Path != null && !_brain.Path.error && _brain.CurrentPathWaypoint < _brain.Path.vectorPath.Count)
		{
			_node.renderer.enabled = true;
			_node.transform.position = _brain.Path.vectorPath[_brain.CurrentPathWaypoint];
		}
		else
			_node.renderer.enabled = false;
	}
	
    void OnGUI()
    {
        if (Hide || !ShowAI)
			return;
		
		if(_brain == null)
			_brain = GetComponent<EnemyAI>();

		GUI.Box(new Rect(10, 160, 300, 20), "V: " + _input.Vertical + ", H: " + _input.Horizontal + ", J: " + _input.Jump + ", A:" + (Mathf.Abs(_input.Attack) >= 0.1) );
        GUI.Box(new Rect(10, 185, 300, 20), "Repathed: " + _brain.TimeSinceRepath);
		GUI.Box(new Rect(10, 210, 300, 20), "Target: " + _brain.Target + ", Searching: " + _brain.IsSearchingForPath);
		GUI.Box(new Rect(10, 235, 300, 20), "AI Mode: " + _brain.Awareness);
		if(_brain.Path != null)
        	GUI.Box(new Rect(10, 260, 300, 20), "At node " + (_brain.CurrentPathWaypoint) + " of vectorPath length " + _brain.Path.vectorPath.Count + "& path length " + _brain.Path.path.Count);
    }
}