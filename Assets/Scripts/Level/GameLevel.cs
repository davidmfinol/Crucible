using UnityEngine;
using System.Collections;

/// <summary>
/// Game level is a global class used to keep track of the attributes of the level in the scene.
/// Main things: Player, render settings, and boundaries of scene.
/// </summary>
public class GameLevel : MonoBehaviour
{
    // Keep track of the player, his camera, and where he starts in the level
    public Transform PlayerPrefab;
	public Camera CameraPrefab;
    public Transform StartPoint;
	
	// Render settings to be set when this scene loads
	public bool fog;
	public Color fogColor;
	public float fogDensity;
	public Color ambientLight;
	public float haloStrength;
	public float flareStrength;
	public Material skybox;

    // The boundaries of the level
    public Rect Boundaries;
    public float FallOutBuffer = 5.0f;
    public float ColliderThickness = 10.0f;
	public float ZLength = 100.0f;
    private Color _sceneViewDisplayColor = new Color(.20f, 0.74f, 0.27f, 0.50f); // Sea-green color border for the boundaries
	private GameObject createdBoundaries;
	private GameObject leftBoundary;
	private GameObject rightBoundary;
	private GameObject topBoundary;
	private GameObject bottomBoundary;
			

    // Each scene should correspond to a level, and each level should have exactly one GameLevel
    private static GameLevel _instance = null;
	private static Transform _player = null;

    // Set up the scene/level before anything else
	// This includes replacing any previous GameLevel, creating the player, pointing the camera at him, setting the correct render settings, and creating the boundaries
    void Awake()
    {
		// We need to keep only one GameLevel instance
		if(GameLevel._instance != null)
			DestroyPreviousGameLevel();
        
		SetupPlayer();
		
		SetupCamera();
		
		SetupRenderSettings();
		
		CreateBoundaries();

		GameLevel._instance = this;
    }
	
	private void DestroyPreviousGameLevel()
	{
		Destroy(GameLevel._instance.leftBoundary);
		Destroy(GameLevel._instance.rightBoundary);
		Destroy(GameLevel._instance.topBoundary);
		Destroy(GameLevel._instance.bottomBoundary);
		Destroy(GameLevel._instance.createdBoundaries);
		Destroy(GameLevel._instance.gameObject);
	}
	
	private void SetupPlayer()
	{
		if(_player == null)
        	_player = (Transform)Instantiate(PlayerPrefab, StartPoint.position, Quaternion.identity);
        PlayerCharacterFSM playerController = _player.GetComponent<PlayerCharacterFSM>();
		//TODO: MOVE THIS INITIALIZATION ELSEWHERE
        Transform bone = CharacterFiniteStateMachineBase.SearchHierarchyForBone(_player, "hand_R");
        Transform whip = (Transform)Instantiate(playerController.Whip, bone.position, Quaternion.identity);
		Transform mine = (Transform)Instantiate(playerController.Mine, bone.position, Quaternion.identity);
        whip.parent = bone;
        whip.Rotate(new Vector3(90, 0, 90));
        whip.Translate(new Vector3(0.2f, 0.1f, 0.1f));
        playerController.Weapon = whip;
        playerController.SpawnPoint = StartPoint;
        playerController.Spawn();
	}
	
	private void SetupCamera()
	{
		if(Camera.main == null)
        	Instantiate(CameraPrefab, CameraPrefab.transform.position, CameraPrefab.transform.rotation);
        CameraScrolling cameraScript = Camera.main.GetComponent<CameraScrolling>();
        if (cameraScript != null && Player != null)
            cameraScript.Target = Player.transform;
        else
            Debug.LogError("Camera not pointed at Player");
	}
	
	private void SetupRenderSettings()
	{
	    RenderSettings.fog = fog;
	    RenderSettings.fogColor = fogColor;
	    RenderSettings.fogDensity = fogDensity;
	    RenderSettings.ambientLight = ambientLight;
	    RenderSettings.haloStrength = haloStrength;
	    RenderSettings.flareStrength = flareStrength;
	    RenderSettings.skybox = skybox;
	}
	
	private void CreateBoundaries()
	{
	    createdBoundaries = new GameObject("Created Boundaries");
	    createdBoundaries.transform.parent = transform;
	
	    leftBoundary = new GameObject("Left Boundary");
	    leftBoundary.transform.parent = createdBoundaries.transform;
	    BoxCollider boxCollider = leftBoundary.AddComponent(typeof(BoxCollider)) as BoxCollider;
	    boxCollider.size = new Vector3(ColliderThickness, Boundaries.height + ColliderThickness * 2.0f + FallOutBuffer, ZLength);
	    boxCollider.center = new Vector3(Boundaries.xMin - ColliderThickness * 0.5f, Boundaries.y + Boundaries.height * 0.5f - FallOutBuffer * 0.5f, 0.0f);
	
	    rightBoundary = new GameObject("Right Boundary");
	    rightBoundary.transform.parent = createdBoundaries.transform;
	    boxCollider = rightBoundary.AddComponent(typeof(BoxCollider)) as BoxCollider;
	    boxCollider.size = new Vector3(ColliderThickness, Boundaries.height + ColliderThickness * 2.0f + FallOutBuffer, ZLength);
	    boxCollider.center = new Vector3(Boundaries.xMax + ColliderThickness * 0.5f, Boundaries.y + Boundaries.height * 0.5f - FallOutBuffer * 0.5f, 0.0f);
	
	    topBoundary = new GameObject("Top Boundary");
	    topBoundary.transform.parent = createdBoundaries.transform;
	    boxCollider = topBoundary.AddComponent(typeof(BoxCollider)) as BoxCollider;
	    boxCollider.size = new Vector3(Boundaries.width + ColliderThickness * 2.0f, ColliderThickness, ZLength);
	    boxCollider.center = new Vector3(Boundaries.x + Boundaries.width * 0.5f, Boundaries.yMax + ColliderThickness * 0.5f, 0.0f);
	
	    bottomBoundary = new GameObject("Bottom Boundary (Including Fallout Buffer)");
	    bottomBoundary.transform.parent = createdBoundaries.transform;
	    boxCollider = bottomBoundary.AddComponent(typeof(BoxCollider)) as BoxCollider;
	    boxCollider.size = new Vector3(Boundaries.width + ColliderThickness * 2.0f, ColliderThickness, ZLength);
	    boxCollider.center = new Vector3(Boundaries.x + Boundaries.width * 0.5f, Boundaries.yMin - ColliderThickness * 0.5f - FallOutBuffer, 0.0f);
	}

    // Knowing where the boundaries to the level are is important, so we'll draw them
    void OnDrawGizmos()
    {
        Gizmos.color = _sceneViewDisplayColor;
        Vector3 lowerLeft = new Vector3(Boundaries.xMin, Boundaries.yMax, 0);
        Vector3 upperLeft = new Vector3(Boundaries.xMin, Boundaries.yMin, 0);
        Vector3 lowerRight = new Vector3(Boundaries.xMax, Boundaries.yMax, 0);
        Vector3 upperRight = new Vector3(Boundaries.xMax, Boundaries.yMin, 0);

        Gizmos.DrawLine(lowerLeft, upperLeft);
        Gizmos.DrawLine(upperLeft, upperRight);
        Gizmos.DrawLine(upperRight, lowerRight);
        Gizmos.DrawLine(lowerRight, lowerLeft);
    }

    // Keep track of the instance of the level
    public static GameLevel Instance
    {
        get
        {
            if (!_instance)
            {
                _instance = FindObjectOfType(typeof(GameLevel)) as GameLevel;
                if (!_instance)
                    Debug.LogError("There needs to be one GameLevel on a GameObject in your scene");
            }
            return _instance;
        }
    }
	
	// It's also useful to keep track of the player here
	public static Transform Player
	{
		get { return _player; }
		set { _player = value; }
	}
}
