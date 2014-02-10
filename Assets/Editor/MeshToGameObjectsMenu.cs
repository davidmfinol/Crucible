using UnityEngine;
using UnityEditor;
using System.Collections.Generic;


/// <summary>
/// Mesh to game objects menu finds all meshes in the scenes and produces the corresponding necessary game objects/components.
/// This is heavily based off the script found here: http://wiki.unity3d.com/index.php?title=Mesh2Collider
/// </summary>
public class MeshToGameObjectsMenu
{
	static GameObject playerPrefab;

	static List<string> objectNames = new List<string>(new string[]{"Ledge", "Ladder", "Ground"});
	static GameObject ledgePrefab;
	static GameObject ladderPrefab;

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
		
		playerPrefab = (GameObject) Resources.Load("PlayerCharacter");
		ledgePrefab = (GameObject) Resources.Load("Ledge");
		ladderPrefab = (GameObject) Resources.Load("Ladder");
		
		selection.ForEach(transform => {
			MeshFilter meshFilter = transform.GetComponent<MeshFilter>();
            if (!meshFilter) return;

            // Do some general stuff to get the object ready to be created
            SetupObject(transform);

            // Create the object
			string name = meshFilter.name.ToLower();
			if (name.Contains("ledge"))
				CreateLedge(transform); 
			else if (name.Contains("ladder"))
				CreateLadder(transform); 
			else if (name.Contains("ground"))
				CreateGround(transform);
		});
	}

	static void SetupObject(Transform transform)
	{
		// Get rid of any collider it may already have
		Collider collider = transform.GetComponent<Collider>();
		if (collider) Object.DestroyImmediate(collider);
		
		// We use box colliders
		collider = transform.gameObject.AddComponent<BoxCollider>();

		// Put it on the ground layer
        transform.gameObject.layer = LayerMask.NameToLayer("Ground");

        // Mark it as waypoint for the AI system
        transform.tag = "Waypoint";
		
		// Get rid of any child objects that may exist
		DestroyChildren(transform);
	}
	
	static void DestroyChildren(Transform transform)
	{
		List<Transform> children = new List<Transform>();
		for (int i = 0; i < transform.childCount; ++i)
			children.Add(transform.GetChild(i));
		foreach(Transform child in children)
			GameObject.DestroyImmediate(child.gameObject);
	}

    static void CreateLedge (Transform ledge)
	{
		// We need to find where we're going to put the ledges we grab onto
		Bounds ledgeBounds = ledge.collider.bounds;
		Vector3 topLeft = ledgeBounds.center - new Vector3(ledgeBounds.extents.x, 0, 0) + new Vector3(0, ledgeBounds.extents.y, 0);
		Vector3 topRight = ledgeBounds.center + new Vector3(ledgeBounds.extents.x, 0, 0) + new Vector3(0, ledgeBounds.extents.y, 0);
		Vector3 leftLedgeLocation = topLeft - new Vector3(0, 0.5f, 0);
		Vector3 rightLedgeLocation = topRight - new Vector3(0, 0.5f, 0);
		
		// Set up the game object that allow us to grab on
		GameObject leftLedge = GameObject.Instantiate(ledgePrefab, leftLedgeLocation, ledgePrefab.transform.rotation) as GameObject;
		GameObject rightLedge = GameObject.Instantiate(ledgePrefab, rightLedgeLocation, ledgePrefab.transform.rotation) as GameObject;
		leftLedge.transform.parent = ledge.transform;
		leftLedge.GetComponent<Ledge> ().Left = true;
		leftLedge.GetComponent<Ledge> ().Obstacle = (ledge.name.Contains ("Obstacle"));
		rightLedge.transform.parent = ledge.transform;
		rightLedge.GetComponent<Ledge> ().Left = false;
		rightLedge.GetComponent<Ledge> ().Obstacle = (ledge.name.Contains ("Obstacle"));
	}
	static void CreateLadder(Transform ladder)
	{
		// Create the ladder
		GameObject createdLadder = GameObject.Instantiate(ladderPrefab, ladder.position, ladderPrefab.transform.rotation) as GameObject;
		createdLadder.transform.parent = ladder.transform;

		// Scale the ladder so that it encompasses the physical ladder and the size of the player
		// TODO: FINISH THIS
	}
	static void CreateGround(Transform ground)
	{
         // TODO: FIGURE OUT WHY THESE TWO LINES ARE HERE
		if(ground.renderer != null)
			ground.renderer.enabled = false;

        // TODO: SHOULD WE PUT A MESH COLLIDER? WE'VE ALREADY PUT A BOX COLLIDER; not sure what else needs to be done here?
	}
}