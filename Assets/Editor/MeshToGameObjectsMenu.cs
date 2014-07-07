using UnityEngine;
using UnityEditor;
using System.Collections.Generic;

/// <summary>
/// Mesh to game objects menu finds all meshes in a selection and produces the corresponding necessary game objects/components.
/// This is heavily based off the script found here: http://wiki.unity3d.com/index.php?title=Mesh2Collider
/// </summary>
public class MeshToGameObjectsMenu
{
    // List of mesh names that we accept as something that needs to be set up as a gameobject
    static List<string> objectNames = new List<string> (new string[] {
        "ledge",
        "box",
        "ground",
        "mesh",
        "wall",
        "ladder",
        "rope",
    });

    // Prefabs we load to set up the gameobjects
    static GameObject playerPrefab;
    static GameObject ledgePrefab;
    static GameObject wallPrefab;
    static GameObject ropePrefab;
    static GameObject ladderXPrefab;
    static GameObject ladderZPrefab;

    // We will store some gameobjects in a new gameobject
    static GameObject wallContainer;

    // All the transforms that the user has selected to be transformed
    static List<Transform> selected;


    // Grey out the menu item if there are no non-skinned meshes in the selection,
    // or if no mesh names contain the name of any game object type with which we are familiar.
    [MenuItem("GameObject/Create Game Objects from Meshes", true)]
    static bool ValidateMeshToGameObjects ()
    {
        List<Transform> selection = new List<Transform> (Selection.GetTransforms (SelectionMode.Unfiltered | SelectionMode.ExcludePrefab));
        selected = new List<Transform> ();
        for (int i = 0; i < selection.Count; i++)
            AddChildren (selected, selection [i]);
        return selected.Exists (transform => transform.GetComponent<MeshFilter> () 
            && objectNames.Exists (objectName => transform.name.ToLower ().Contains (objectName))
        );

    }

    // Helper Method to add all the children to a selection
    private static void AddChildren (List<Transform> selected, Transform current)
    {
        // activate the ragdoll for all child bones
        for (int i = 0; i < current.childCount; ++i)
            AddChildren (selected, current.GetChild (i));
        
        // add the child to the selection
        if (!selected.Contains (current))
            selected.Add (current);

    }
    
    [MenuItem("GameObject/Create Game Objects from Meshes")]
    static void MeshToGameObjects ()
    {
        // Load up the assets we need
        playerPrefab = (GameObject)Resources.Load ("Prefabs/Characters/PlayerCharacter");
        ledgePrefab = (GameObject)Resources.Load ("Prefabs/Platforming/Ledge");
        wallPrefab = (GameObject)Resources.Load ("Prefabs/Platforming/Wall");
        ladderXPrefab = (GameObject)Resources.Load ("Prefabs/Platforming/LadderX");
        ladderZPrefab = (GameObject)Resources.Load ("Prefabs/Platforming/LadderZWithoutTop");
        ropePrefab = (GameObject)Resources.Load ("Prefabs/Platforming/Rope");

        // We're primarily focused on the root gameobject, and we know that it comes after all its children
        Transform root = selected [selected.Count - 1];

        // Store all the walls, ropes, and ladders in one location
        GameObject prevWalls = GameObject.Find (root.name + " - Walls, Ropes, and Ladders");
        if (prevWalls != null)
            GameObject.DestroyImmediate (prevWalls);
        wallContainer = new GameObject (root.name + " - Walls, Ropes, and Ladders");

        // Go through each transform and set up the gameobjects
        selected.ForEach (transform => {

            // We only do something if we have meshes
            MeshFilter meshFilter = transform.GetComponent<MeshFilter> ();
            if (!meshFilter) {
                OutlineInteractive outliner = transform.GetComponent<OutlineInteractive>();
                if(outliner)
                    GameObject.DestroyImmediate(outliner);
                return;
            }

            // And if that mesh is named something we recognize
            string name = meshFilter.name.ToLower ();
            bool containsName = false;
            foreach (string objName in objectNames)
                if (name.Contains (objName.ToLower ()))
                    containsName = true;
            if (!containsName) {
                transform.gameObject.isStatic = true;
                return;
            }

            // Set up the object
            SetupObject (transform);

            // Create the object
            if (name.Contains ("ledge"))
                CreateLedge (transform);
            if (name.Contains ("wall"))
                CreateWall (transform);
            if (name.Contains ("rope"))
                CreateRope (transform);
            if (name.Contains ("ladder"))
				CreateLadder (transform);
			
			// Make the gameobject static for optimization
			transform.gameObject.isStatic = true;
        });

        // Mark objects as static for optimization
        root.gameObject.isStatic = true;
        wallContainer.isStatic = true;

        // Combine the object into 1 mesh for optimization (not needed because of static batching?)
        // CombineChildren.Combine(root.gameObject, root.name + " Combined Mesh");

    }

    static void SetupObject (Transform transform)
    {
        // Get rid of any collider it may already have
        Collider collider = transform.GetComponent<Collider> ();
        if (collider)
            Object.DestroyImmediate (collider);

        // We use box colliders unless told to use mesh collider
        if (transform.name.ToLower ().Contains ("mesh"))
            transform.gameObject.AddComponent<MeshCollider> ();
        else
            transform.gameObject.AddComponent<BoxCollider> ();

        // Put it on the ground layer
        transform.gameObject.layer = LayerMask.NameToLayer ("Ground");

        // Mark it as waypoint for the AI system, unless told not to
        if (!transform.name.ToLower ().Contains ("waypointless"))
            transform.tag = "Waypoint";
        
        // Get rid of any child objects that we may have created in previous runs of this script
		DestroyChildren (transform);

		// Change the shader so that it will be outlined as appropriate
		if ( !transform.renderer.sharedMaterial.shader.name.Contains("Interactive") ) {
			transform.renderer.sharedMaterial.shader = Shader.Find ("Outlined/Interactive");
			transform.renderer.sharedMaterial.SetFloat ("_FadeDis", 15);
		}
		OutlineInteractive outlineFader = transform.GetComponent<OutlineInteractive> ();
		if(outlineFader == null)
			outlineFader = transform.gameObject.AddComponent<OutlineInteractive> ();
		outlineFader.enabled = true;

    }
    
    static void DestroyChildren (Transform transform)
    {
        List<Transform> children = new List<Transform> ();
        for (int i = 0; i < transform.childCount; ++i)
            children.Add (transform.GetChild (i));
        foreach (Transform child in children)
            GameObject.DestroyImmediate (child.gameObject);
        
    }

    static void CreateLedge (Transform ledge)
    {
        // First determine what we need to do
        bool ignoreLocationName = !ledge.name.ToLower ().Contains ("left") && !ledge.name.ToLower ().Contains ("right");
        bool createLeftLedge = ignoreLocationName || ledge.name.ToLower ().Contains ("left");
        bool createRightLedge = ignoreLocationName || ledge.name.ToLower ().Contains ("right");

        // Deal with rotation
        Quaternion storedRotation = ledge.localRotation;
        ledge.localRotation = Quaternion.identity;
        Bounds ledgeBounds = ledge.collider.bounds;

        // Set up the left ledge
        if (createLeftLedge) {
            // Create the ledge
            GameObject leftLedge = GameObject.Instantiate (ledgePrefab, ledgePrefab.transform.position, ledgePrefab.transform.rotation) as GameObject;
            leftLedge.name = "Left Ledge";
            leftLedge.GetComponent<Ledge> ().Left = true;
            leftLedge.GetComponent<Ledge> ().Obstacle = (ledge.name.ToLower ().Contains ("obstacle"));
            BoxCollider col = leftLedge.GetComponent<BoxCollider> ();
            col.size = new Vector3 (col.size.x, col.size.y, col.size.z * 100);

            // And put it at the right spot
            Vector3 leftOffset = new Vector3 (-ledgeBounds.extents.x, ledgeBounds.extents.y, 0);
            Vector3 topLeft = ledgeBounds.center + leftOffset;
            leftLedge.transform.position = topLeft;
            leftLedge.isStatic = true;
            leftLedge.transform.parent = ledge.transform;
        }
        // Set up the right ledge
        if (createRightLedge) {
            // Create the ledge
            GameObject rightLedge = GameObject.Instantiate (ledgePrefab, ledgePrefab.transform.position, ledgePrefab.transform.rotation) as GameObject;
            rightLedge.name = "Right Ledge";
            rightLedge.GetComponent<Ledge> ().Left = false;
            rightLedge.GetComponent<Ledge> ().Obstacle = (ledge.name.ToLower ().Contains ("obstacle"));
            BoxCollider col = rightLedge.GetComponent<BoxCollider> ();
            col.size = new Vector3 (col.size.x, col.size.y, col.size.z * 100);
            
            // And put it at the right spot
            Vector3 rightOffset = new Vector3 (ledgeBounds.extents.x, ledgeBounds.extents.y, 0);
            Vector3 topRight = ledgeBounds.center + rightOffset;
            rightLedge.transform.position = topRight;
            rightLedge.isStatic = true;
            rightLedge.transform.parent = ledge.transform;
        }

        // Restore the rotation
        ledge.localRotation = storedRotation;

    }

    static void CreateWall (Transform wall)
    {
        // Create the wall at the correct position
        GameObject createdWall = GameObject.Instantiate (wallPrefab, wall.position, Quaternion.identity) as GameObject;
        BoxCollider createdWallCollider = createdWall.GetComponent<BoxCollider> ();
        createdWall.isStatic = true;
        createdWall.transform.parent = wallContainer.transform;
        createdWallCollider.center = wall.collider.bounds.center - wall.transform.position;
        
        // Scale the wall so that it encompasses the physical wall and the player
        createdWallCollider.size = wall.collider.bounds.size;
        Vector3 size = createdWallCollider.size;
        CharacterController charController = playerPrefab.GetComponent<CharacterController> ();
        size.x += charController.radius * playerPrefab.transform.localScale.z;
        createdWallCollider.size = size;

    }
    
    static void CreateRope (Transform rope)
    {
        // Create the rope at the correct position
        GameObject createdRope = GameObject.Instantiate (ropePrefab, rope.position, ropePrefab.transform.rotation) as GameObject;
        BoxCollider createdRopeCollider = createdRope.GetComponent<BoxCollider> ();
        createdRope.isStatic = true;
        createdRope.transform.parent = wallContainer.transform;
        createdRopeCollider.center = rope.collider.bounds.center - rope.transform.position;
        
        // Scale the rope so that it encompasses the physical pipe and the player
        createdRopeCollider.size = rope.collider.bounds.size;
        Vector3 size = createdRopeCollider.size;
        CharacterController charController = playerPrefab.GetComponent<CharacterController> ();
        size.z += charController.radius * playerPrefab.transform.localScale.z;
        createdRopeCollider.size = size;
        
    }

    static void CreateLadder (Transform ladder)
    {
        // Create the ladder at the correct position
        GameObject prefab = ladder.name.Contains ("X") ? ladderXPrefab : ladderZPrefab;
        GameObject createdLadder = GameObject.Instantiate (prefab, ladder.position, prefab.transform.rotation) as GameObject;
        BoxCollider createdLadderCollider = createdLadder.GetComponent<BoxCollider> ();
        createdLadder.isStatic = true;
        createdLadder.transform.parent = wallContainer.transform;
        createdLadderCollider.center = ladder.collider.bounds.center - ladder.transform.position;

        // Scale the ladder so that it encompasses the physical ladder and the player
        createdLadderCollider.size = ladder.collider.bounds.size;
        Vector3 size = createdLadderCollider.size;
        CharacterController charController = playerPrefab.GetComponent<CharacterController> ();
        if (ladder.name.Contains ("X"))
            size.x += charController.radius * playerPrefab.transform.localScale.z;
        else
            size.z += charController.radius * playerPrefab.transform.localScale.z;
        createdLadderCollider.size = size;

    }

}