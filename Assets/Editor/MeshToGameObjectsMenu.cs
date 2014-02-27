using UnityEngine;
using UnityEditor;
using System.Collections.Generic;


/// <summary>
/// Mesh to game objects menu finds all meshes in the scenes and produces the corresponding necessary game objects/components.
/// This is heavily based off the script found here: http://wiki.unity3d.com/index.php?title=Mesh2Collider
/// </summary>
public class MeshToGameObjectsMenu
{
	static List<string> objectNames = new List<string>(new string[]{"Ledge", "Ground", "Wall", "Ladder", "Pipe"});
	static GameObject playerPrefab;
	static GameObject ledgePrefab;
	static GameObject ladderXPrefab;
	static GameObject ladderZPrefab;
	static GameObject pipePrefab;
	static GameObject wallPrefab;

	static List<Transform> selected;
	
	// Grey out the menu item if there are no non-skinned meshes in the selection,
	// or if no mesh names contain the name of any game object type with which we are familiar.
	[MenuItem("GameObject/Create Game Objects from Meshes", true)]
	static bool ValidateMeshToGameObjects ()
	{
		List<Transform> selection = new List<Transform>(Selection.GetTransforms(SelectionMode.Unfiltered | SelectionMode.ExcludePrefab));
		selected = new List<Transform>();
		for(int i = 0; i < selection.Count ; i++)
			AddChildren (selected, selection[i]);
		return selected.Exists(transform => transform.GetComponent<MeshFilter>() 
			&& objectNames.Exists(objectName => transform.name.Contains(objectName))
		);
	}
	// Helper Method to add all the children to a selection
	public static void AddChildren(List<Transform> selected, Transform current)
	{
		// activate the ragdoll for all child bones
		for (int i = 0; i < current.childCount; ++i)
			AddChildren(selected, current.GetChild(i));
		
		// add the child to the selection
		if(!selected.Contains(current))
			selected.Add (current);
	}
	
	[MenuItem("GameObject/Create Game Objects from Meshes")]
	static void MeshToGameObjects ()
	{
		// TODO: UPDATE THIS UNDO TO NONDEPRECATED VERSION
		// Undo.RegisterSceneUndo("Create Game Objects from Meshes");	
		
		playerPrefab = (GameObject) Resources.Load("PlayerCharacter");
		ledgePrefab = (GameObject) Resources.Load("Ledge");
		ladderXPrefab = (GameObject) Resources.Load("LadderX");
		ladderZPrefab = (GameObject) Resources.Load("LadderZWithoutTop");
		pipePrefab = (GameObject) Resources.Load("Pipe");
		wallPrefab = (GameObject) Resources.Load("Grabbable Object");
		
		selected.ForEach(transform => {
			MeshFilter meshFilter = transform.GetComponent<MeshFilter>();
            if (!meshFilter)
				return;
			
			string name = meshFilter.name.ToLower();
			bool containsName = false;
			foreach (string objName in objectNames)
			{
				if(name.Contains(objName.ToLower()))
				   containsName = true;
			}

			if(!containsName)
				return;

			// Set up the object
			SetupObject(transform);

            // Create the object
			if (name.Contains("ledge"))
			{
				CreateLedge(transform);
			}
//			else if (name.Contains("ground"))
//			{
//				SetupObject(transform);
//			}
			else if (name.Contains("wall"))
			{
				CreateWall(transform); 
			}
			else if (name.Contains("ladder"))
				CreateLadder(transform); 
			//else if (name.Contains("pipe"))
			//	CreatePipe(transform); 
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
		Vector3 leftLedgeLocation = topLeft;
		Vector3 rightLedgeLocation = topRight;
		
		// Set up the left ledge
		GameObject leftLedge = GameObject.Instantiate(ledgePrefab, leftLedgeLocation, ledgePrefab.transform.rotation) as GameObject;
		leftLedge.transform.parent = ledge.transform;
		leftLedge.GetComponent<Ledge> ().Left = true;
		leftLedge.GetComponent<Ledge> ().Obstacle = (ledge.name.Contains ("Obstacle"));
		BoxCollider col = leftLedge.GetComponent<BoxCollider> ();
		col.size = new Vector3 (col.size.x, col.size.y, col.size.z * 10);

		// Set up the right ledge
		GameObject rightLedge = GameObject.Instantiate(ledgePrefab, rightLedgeLocation, ledgePrefab.transform.rotation) as GameObject;
		rightLedge.transform.parent = ledge.transform;
		rightLedge.GetComponent<Ledge> ().Left = false;
		rightLedge.GetComponent<Ledge> ().Obstacle = (ledge.name.Contains ("Obstacle"));
		col = rightLedge.GetComponent<BoxCollider> ();
		col.size = new Vector3 (col.size.x, col.size.y, col.size.z * 10);
	}
	static void CreateWall(Transform wall)
	{
		// Create the wall
		GameObject createdWall = GameObject.Instantiate(wallPrefab, wall.position, Quaternion.identity) as GameObject;
		BoxCollider createdWallCollider = createdWall.GetComponent<BoxCollider> ();
		createdWall.transform.parent = wall.transform;
		createdWallCollider.size = wall.renderer.bounds.size;
		createdWallCollider.center = wall.renderer.bounds.center;
		
		// Scale the wall so that it encompasses the physical wall and the player
		Vector3 size = createdWallCollider.size;
		CharacterController charController = playerPrefab.GetComponent<CharacterController> ();
		size.x += charController.radius * playerPrefab.transform.localScale.z;
		createdWallCollider.size = size;
	}
	static void CreateLadder(Transform ladder)
	{
		// Create the ladder
		GameObject prefab = ladder.name.Contains ("X") ? ladderXPrefab : ladderZPrefab;
        GameObject createdLadder = GameObject.Instantiate(prefab, ladder.position, prefab.transform.rotation) as GameObject;
        BoxCollider createdLadderCollider = createdLadder.GetComponent<BoxCollider> ();
        createdLadder.transform.parent = ladder.transform;
        createdLadderCollider.size = ladder.renderer.bounds.size;
        createdLadderCollider.center = ladder.renderer.bounds.center;

		// Scale the ladder so that it encompasses the physical ladder and the player
        Vector3 size = createdLadderCollider.size;
        CharacterController charController = playerPrefab.GetComponent<CharacterController> ();
		if(ladder.name.Contains("X"))
            size.x += charController.radius * playerPrefab.transform.localScale.z;
		else
            size.z += charController.radius * playerPrefab.transform.localScale.z;
        createdLadderCollider.size = size;
	}
	static void CreatePipe(Transform pipe)
	{
		// Create the Pipe
        GameObject createdPipe = GameObject.Instantiate(pipePrefab, pipe.position, pipePrefab.transform.rotation) as GameObject;
        BoxCollider createdPipeCollider = createdPipe.GetComponent<BoxCollider> ();
        createdPipe.transform.parent = pipe.transform;
        createdPipeCollider.size = pipe.renderer.bounds.size;
        createdPipeCollider.center = pipe.renderer.bounds.center;
		
		// Scale the pipe so that it encompasses the physical pipe and the player
        Vector3 size = createdPipeCollider.size;
        CharacterController charController = playerPrefab.GetComponent<CharacterController> ();
        size.z += charController.radius * playerPrefab.transform.localScale.z;
        createdPipeCollider.size = size;
	}
}