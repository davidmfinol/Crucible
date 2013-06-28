using UnityEngine;
using System.Collections;

public class LevelAttributes : MonoBehaviour
{
    // Keep track of the player and where he starts in the level
    public Transform Player = null;
    public Transform StartPoint = null;

    // Size of the level
    public Rect Bounds;
    public float FallOutBuffer = 5.0f;
    public float ColliderThickness = 10.0f;

    // Sea-green color border
    private Color _sceneViewDisplayColor = new Color(.20f, 0.74f, 0.27f, 0.50f);

    // Each scence should correspond to a level, and each level should have exactly one LevelAttributes
    private static LevelAttributes _instance;

    // Create the player when the level starts
    void Awake()
    {
        if (Player != null)
        {
            Player = (Transform)Instantiate(Player, StartPoint.position, Quaternion.identity);
            PlayerCharacterFSM playerController = Player.GetComponent<PlayerCharacterFSM>();
            Transform bone = CharacterFiniteStateMachineBase.SearchHierarchyForBone(Player, "hand_R");
            Transform whip = (Transform)Instantiate(playerController.Whip, bone.position, Quaternion.identity);
			Transform mine = (Transform)Instantiate(playerController.Mine, bone.position, Quaternion.identity);
            mine.parent = bone;
            mine.Rotate(new Vector3(90, 0, 90));
            mine.Translate(new Vector3(0.2f, 0.1f, 0.1f));
            playerController.Weapon = mine;
            playerController.SpawnPoint = StartPoint;
            playerController.Spawn();
        }
        else
            Debug.Log("Load Level without player");
        CameraScrolling cameraScript = Camera.main.GetComponent<CameraScrolling>();
        if (cameraScript != null && Player != null)
            cameraScript.Target = Player.transform;
        else
            Debug.Log("Camera not pointed at level load");
    }

    // Create the boundaries
    void Start()
    {
        GameObject createdBoundaries = new GameObject("Created Boundaries");
        createdBoundaries.transform.parent = transform;

        GameObject leftBoundary = new GameObject("Left Boundary");
        leftBoundary.transform.parent = createdBoundaries.transform;
        BoxCollider boxCollider = leftBoundary.AddComponent(typeof(BoxCollider)) as BoxCollider;
        boxCollider.size = new Vector3(ColliderThickness, Bounds.height + ColliderThickness * 2.0f + FallOutBuffer, 1000);
        boxCollider.center = new Vector3(Bounds.xMin - ColliderThickness * 0.5f, Bounds.y + Bounds.height * 0.5f - FallOutBuffer * 0.5f, 0.0f);

        GameObject rightBoundary = new GameObject("Right Boundary");
        rightBoundary.transform.parent = createdBoundaries.transform;
        boxCollider = rightBoundary.AddComponent(typeof(BoxCollider)) as BoxCollider;
        boxCollider.size = new Vector3(ColliderThickness, Bounds.height + ColliderThickness * 2.0f + FallOutBuffer, 1000);
        boxCollider.center = new Vector3(Bounds.xMax + ColliderThickness * 0.5f, Bounds.y + Bounds.height * 0.5f - FallOutBuffer * 0.5f, 0.0f);

        GameObject topBoundary = new GameObject("Top Boundary");
        topBoundary.transform.parent = createdBoundaries.transform;
        boxCollider = topBoundary.AddComponent(typeof(BoxCollider)) as BoxCollider;
        boxCollider.size = new Vector3(Bounds.width + ColliderThickness * 2.0f, ColliderThickness, ColliderThickness);
        boxCollider.center = new Vector3(Bounds.x + Bounds.width * 0.5f, Bounds.yMax + ColliderThickness * 0.5f, 0.0f);

        GameObject bottomBoundary = new GameObject("Bottom Boundary (Including Fallout Buffer)");
        bottomBoundary.transform.parent = createdBoundaries.transform;
        boxCollider = bottomBoundary.AddComponent(typeof(BoxCollider)) as BoxCollider;
        boxCollider.size = new Vector3(Bounds.width + ColliderThickness * 2.0f, ColliderThickness, 1000);
        boxCollider.center = new Vector3(Bounds.x + Bounds.width * 0.5f, Bounds.yMin - ColliderThickness * 0.5f - FallOutBuffer, 0.0f);

        Instance = this;
    }

    // Knowing where the bounds to the level are is important, so we'll draw them
    void OnDrawGizmos()
    {
        Gizmos.color = _sceneViewDisplayColor;
        Vector3 lowerLeft = new Vector3(Bounds.xMin, Bounds.yMax, 0);
        Vector3 upperLeft = new Vector3(Bounds.xMin, Bounds.yMin, 0);
        Vector3 lowerRight = new Vector3(Bounds.xMax, Bounds.yMax, 0);
        Vector3 upperRight = new Vector3(Bounds.xMax, Bounds.yMin, 0);

        Gizmos.DrawLine(lowerLeft, upperLeft);
        Gizmos.DrawLine(upperLeft, upperRight);
        Gizmos.DrawLine(upperRight, lowerRight);
        Gizmos.DrawLine(lowerRight, lowerLeft);
    }

    // Keep track of the instance of the level
    public static LevelAttributes Instance
    {
        get
        {
            if (!_instance)
            {
                _instance = FindObjectOfType(typeof(LevelAttributes)) as LevelAttributes;
                if (!_instance)
                {
                    Debug.LogError("There needs to be one LevelAttributes on a GameObject in your scene");
                }
            }
            return _instance;
        }
        set { LevelAttributes._instance = value; }
    }
}
