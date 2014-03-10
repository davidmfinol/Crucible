using UnityEngine;
using UnityEditor;
using System.Collections.Generic;


/// <summary>
/// Mesh to game objects menu finds all meshes in the scenes and produces the corresponding necessary game objects/components.
/// This is heavily based off the script found here: http://wiki.unity3d.com/index.php?title=Mesh2Collider
/// </summary>
public class MeshToGameObjectsMenu
{
	static List<string> objectNames = new List<string>(new string[]{"ledge", "box", "ground", "mesh", "wall", "ladder"});
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
			&& objectNames.Exists(objectName => transform.name.ToLower().Contains(objectName))
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
		Undo.RegisterSceneUndo("Create Game Objects from Meshes");	
		
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
				CreateLedge(transform);
//			if (name.Contains("ground"))
//				SetupObject(transform);
			if (name.Contains("wall"))
				CreateWall(transform); 
			if (name.Contains("ladder"))
				CreateLadder(transform); 
			//if (name.Contains("pipe"))
			//	CreatePipe(transform); 
		});
	}

	static void SetupObject(Transform transform)
	{
		// Get rid of any collider it may already have
		Collider collider = transform.GetComponent<Collider>();
		if (collider) Object.DestroyImmediate(collider);
		
		// We use box colliders unless told to use mesh collider
        if(transform.name.ToLower().Contains("mesh"))
            collider = transform.gameObject.AddComponent<MeshCollider>();
        else
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
		// First determine what we need to do
		Bounds ledgeBounds = ledge.collider.bounds;
		bool ignoreLocationName = !ledge.name.ToLower ().Contains ("left") && !ledge.name.ToLower ().Contains ("right");
		bool createLeftLedge = ignoreLocationName || ledge.name.ToLower ().Contains ("left");
		bool createRightLedge = ignoreLocationName || ledge.name.ToLower ().Contains ("right");
		
		// Set up the left ledge
		if(createLeftLedge)
		{
			// Find out where to put it
			Vector3 leftOffset = new Vector3 (-ledgeBounds.extents.x, 0, 0) + new Vector3 (0, ledgeBounds.extents.y, 0);
			Vector3 topLeft = ledgeBounds.center + leftOffset;
			Vector3 leftLedgeLocation = topLeft;

			// Actually put it there and set it up
			GameObject leftLedge = GameObject.Instantiate(ledgePrefab, leftLedgeLocation, ledgePrefab.transform.rotation) as GameObject;
            leftLedge.name = "Left Ledge";
			leftLedge.GetComponent<Ledge> ().Left = true;
			leftLedge.GetComponent<Ledge> ().Obstacle = (ledge.name.ToLower().Contains ("obstacle"));
			BoxCollider col = leftLedge.GetComponent<BoxCollider> ();
			col.size = new Vector3 (col.size.x, col.size.y, col.size.z * 100);
			leftLedge.transform.parent = ledge.transform;
		}

		// Set up the right ledge
		if(createRightLedge)
		{
			// Find out where to put it
			Vector3 rightOffset = new Vector3(ledgeBounds.extents.x, 0, 0) + new Vector3(0, ledgeBounds.extents.y, 0);
			Vector3 topRight = ledgeBounds.center + rightOffset;
			Vector3 rightLedgeLocation = topRight;
			
			// Actually put it there and set it up
			GameObject rightLedge = GameObject.Instantiate(ledgePrefab, rightLedgeLocation, ledgePrefab.transform.rotation) as GameObject;
            rightLedge.name = "Right Ledge";
            rightLedge.GetComponent<Ledge> ().Left = false;
			rightLedge.GetComponent<Ledge> ().Obstacle = (ledge.name.ToLower().Contains ("obstacle"));
			BoxCollider col = rightLedge.GetComponent<BoxCollider> ();
			col.size = new Vector3 (col.size.x, col.size.y, col.size.z * 100);
			rightLedge.transform.parent = ledge.transform;
		}
	}
	static void CreateWall(Transform wall)
	{
		// Create the wall at the correct position
		GameObject createdWall = GameObject.Instantiate(wallPrefab, wall.position, Quaternion.identity) as GameObject;
		BoxCollider createdWallCollider = createdWall.GetComponent<BoxCollider> ();
		createdWall.transform.parent = wall.transform;
		createdWall.transform.localPosition = Vector3.zero;
		createdWallCollider.center = wall.collider.bounds.center - wall.transform.position;
		
		// Scale the wall so that it encompasses the physical wall and the player
		createdWallCollider.size = wall.collider.bounds.size;
		Vector3 size = createdWallCollider.size;
		CharacterController charController = playerPrefab.GetComponent<CharacterController> ();
		size.x += charController.radius * playerPrefab.transform.localScale.z;
		createdWallCollider.size = size;
	}
	static void CreateLadder(Transform ladder)
	{
		// Create the ladder at the correct position
		GameObject prefab = ladder.name.Contains ("X") ? ladderXPrefab : ladderZPrefab;
        GameObject createdLadder = GameObject.Instantiate(prefab, ladder.position, prefab.transform.rotation) as GameObject;
        BoxCollider createdLadderCollider = createdLadder.GetComponent<BoxCollider> ();
		createdLadder.transform.parent = ladder.transform;
		createdLadder.transform.localPosition = Vector3.zero;
		createdLadderCollider.center = ladder.collider.bounds.center - ladder.transform.position;

		// Scale the ladder so that it encompasses the physical ladder and the player
		createdLadderCollider.size = ladder.collider.bounds.size;
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
		// Create the Pipe at the correct position
        GameObject createdPipe = GameObject.Instantiate(pipePrefab, pipe.position, pipePrefab.transform.rotation) as GameObject;
		BoxCollider createdPipeCollider = createdPipe.GetComponent<BoxCollider> ();
		createdPipe.transform.parent = pipe.transform;
		createdPipe.transform.localPosition = Vector3.zero;
		createdPipeCollider.center = pipe.collider.bounds.center - pipe.transform.position;
		
		// Scale the pipe so that it encompasses the physical pipe and the player
		createdPipeCollider.size = pipe.collider.bounds.size;
        Vector3 size = createdPipeCollider.size;
        CharacterController charController = playerPrefab.GetComponent<CharacterController> ();
        size.z += charController.radius * playerPrefab.transform.localScale.z;
        createdPipeCollider.size = size;
	}
}