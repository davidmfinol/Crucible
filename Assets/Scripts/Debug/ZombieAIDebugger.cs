using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class ZombieAIDebugger : CharacterFSMVisualDebugger
{
	public Transform Node;
	public bool HighlightCurrentNode = false;
	public bool ShowNodes = false;
	//private ArrayList<GameObject> _nodes;
	
	// We could also show other variables OnGUI
	//public bool ShowTransitionRecent = true;
	//public bool ShowTimeSinceRepath = true;
	
	public void Update ()
	{
		// Check for input\
		if(Input.GetKey(KeyCode.I))
			HighlightCurrentNode = !HighlightCurrentNode;
		if(Input.GetKey(KeyCode.O))
			ShowNodes = !ShowNodes;

			
		//Update visualization
		//if(ShowPath)
			
	}
			
}
