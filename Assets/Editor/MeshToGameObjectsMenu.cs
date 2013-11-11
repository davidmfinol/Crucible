using UnityEngine;
using UnityEditor;
using System.Collections.Generic;


/// <summary>
/// Mesh to game objects menu finds all meshes in the scenes and produces the corresponding necessary game objects/components.
/// This is heavily based off the script found here: http://wiki.unity3d.com/index.php?title=Mesh2Collider
/// </summary>
public class MeshToGameObjectsMenu
{
	static GameObject ledgePrefab;
	
	static List<string> objectNames = new List<string>(new string[]{"Ledge"});
	static List<Transform> selection;
	
	// Grey out the menu item if there are no non-skinned meshes in the selection,
	// or if no mesh names contain the name of any game object type with which we are familiar.
	[MenuItem("GameObject/Create Game Objects from Meshes", true)]
	static bool ValidateMeshToGameObjects ()
	{
		selection = new List<Transform>(Selection.GetTransforms(SelectionMode.Unfiltered | SelectionMode.ExcludePrefab));	
		return selection.Exists(transform => transform.GetComponent<MeshFilter>() 
			&& objectNames.Exists(objectName => transform.name.Contains(objectName))
		);
	}
	
	[MenuItem("GameObject/Create Game Objects from Meshes")]
	static void MeshToGameObjects ()
	{
		Undo.RegisterSceneUndo("Create Game Objects from Meshes");
		
		ledgePrefab = (GameObject) Resources.Load("Ledge");
		
		selection.ForEach(transform => {
			MeshFilter meshFilter = transform.GetComponent<MeshFilter>();
			if (!meshFilter) return;
			
			string name = meshFilter.name.ToLower();
			if (name.Contains("ledge")) CreateLedge(transform); 
		});
	}
	
	static void CreateLedge (Transform ledge)
	{
		// Get rid of any collider it may already have
		Collider collider = ledge.GetComponent<Collider>();
		if (collider) Object.DestroyImmediate(collider);
		
		// Ledges have box coliders
		collider = ledge.gameObject.AddComponent<BoxCollider>();
		
		// We need to find where we're going to put the ledges we grab onto
		Bounds ledgeBounds = collider.bounds;
		Vector3 topLeft = ledgeBounds.center - new Vector3(ledgeBounds.extents.x, 0, 0) + new Vector3(0, ledgeBounds.extents.y, 0);
		Vector3 topRight = ledgeBounds.center + new Vector3(ledgeBounds.extents.x, 0, 0) + new Vector3(0, ledgeBounds.extents.y, 0);
		Vector3 leftLedgeLocation = topLeft - new Vector3(0, 0.5f, 0);
		Vector3 rightLedgeLocation = topRight - new Vector3(0, 0.5f, 0);
		
		// Set up the game object that allow us to grab on
		GameObject leftLedge = GameObject.Instantiate(ledgePrefab, leftLedgeLocation, ledgePrefab.transform.rotation) as GameObject;
		GameObject rightLedge = GameObject.Instantiate(ledgePrefab, rightLedgeLocation, ledgePrefab.transform.rotation) as GameObject;
		leftLedge.transform.parent = ledge.transform;
		rightLedge.transform.parent = ledge.transform;
	}

}