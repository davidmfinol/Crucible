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
		Undo.RegisterSceneUndo("Create Game Objects from Meshes");	
		
		playerPrefab = (GameObject) Resources.Load("PlayerCharacter");
		ledgePrefab = (GameObject) Resources.Load("Ledge");
		ladderXPrefab = (GameObject) Resources.Load("LadderX");
		ladderZPrefab = (GameObject) Resources.Load("LadderZWithoutTop");
		pipePrefab = (GameObject) Resources.Load("Pipe");
		wallPrefab = (GameObject) Resources.Load("Grabbable Object");
		
		selected.ForEach(transform => {
			MeshFilter meshFilter = transform.GetComponent<MeshFilter>();
            if (!meshFilter) return;

            // Create the object
			string name = meshFilter.name.ToLower();
			if (name.Contains("ledge"))
			{
				SetupObject(transform);
				CreateLedge(transform);
			}
			else if (name.Contains("ground"))
			{
				SetupObject(transform);
			}
			else if (name.Contains("wall"))
			{
				SetupObject(transform);
				CreateWall(transform); 
			}
			/*
			else if (name.Contains("ladder"))
				CreateLadder(transform); 
			else if (name.Contains("pipe"))
				CreatePipe(transform); 
				*/
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
	}

    static void CreateLedge (Transform ledge)
	{
		// We need to find where we're going to put the ledges we grab onto
		Bounds ledgeBounds = ledge.collider.bounds;
		Vector3 topLeft = ledgeBounds.center - new Vector3(ledgeBounds.extents.x, 0, 0) + new Vector3(0, ledgeBounds.extents.y, 0);
		Vector3 topRight = ledgeBounds.center + new Vector3(ledgeBounds.extents.x, 0, 0) + new Vector3(0, ledgeBounds.extents.y, 0);
		Vector3 leftLedgeLocation = topLeft - new Vector3(0, 0.5f, 0);
		Vector3 rightLedgeLocation = topRight - new Vector3(0, 0.5f, 0);
		
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
		size.x += charController.radius * playerPrefab.transform.localScale.x;
		createdWallCollider.size = size;
	}
	static void CreateLadder(Transform ladder)
	{
		// Create the ladder
		GameObject prefab = ladder.name.Contains ("X") ? ladderXPrefab : ladderZPrefab;
		GameObject createdLadder = GameObject.Instantiate(prefab, ladder.position, prefab.transform.rotation) as GameObject;
		createdLadder.transform.parent = ladder.transform;

		// Scale the ladder so that it encompasses the physical ladder and the player
		BoxCollider prefabCollider = createdLadder.GetComponent<BoxCollider> ();
		BoxCollider ladderCollider = (BoxCollider) ladder.collider;
		prefabCollider.center = ladderCollider.center;
		Vector3 size = ladderCollider.size;
		if(ladder.name.Contains("X"))
			size.x += playerPrefab.collider.bounds.extents.z;
		else
			size.z += playerPrefab.collider.bounds.extents.z;
		prefabCollider.size = size;
	}
	static void CreatePipe(Transform pipe)
	{
		// Create the Pipe
		GameObject prefab = pipePrefab;
		GameObject createdPipe = GameObject.Instantiate(prefab, pipe.position, prefab.transform.rotation) as GameObject;
		createdPipe.transform.parent = pipe.transform;
		
		// Scale the pipe so that it encompasses the physical pipe and the player
		BoxCollider prefabCollider = createdPipe.GetComponent<BoxCollider> ();
		BoxCollider ladderCollider = (BoxCollider)  pipe.collider;
		prefabCollider.center = ladderCollider.center;
		Vector3 size = ladderCollider.size;
		size.z += playerPrefab.collider.bounds.extents.z;
		prefabCollider.size = size;
	}
}