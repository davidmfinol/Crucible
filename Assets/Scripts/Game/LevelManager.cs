using UnityEngine;
using System.Collections;
using System.Collections.Generic;

/// <summary>
/// Level manager keeps track of the attributes of the current level in the scene.
/// Main things: Render settings and boundaries of scene.
/// </summary>
[AddComponentMenu("Game/Level Manager")]
public class LevelManager : MonoBehaviour
{
    // Where the player starts in the level
    public Transform StartPoint; // TODO: DELETE THIS, AND JUST BASE START POINT OFF SAVE DATA AND CHECKPOINTS IN GAMEMANAGER
    
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
    private Color _sceneViewDisplayColor = new Color (.20f, 0.74f, 0.27f, 0.50f); // Sea-green color border for the boundaries
    private GameObject _createdBoundaries;
    private GameObject _leftBoundary;
    private GameObject _rightBoundary;
    private GameObject _topBoundary;
    private GameObject _bottomBoundary;
    private bool _ready;

    void Awake ()
    {
        SetupRenderSettings ();
        
        CreateBoundaries ();

        _ready = true;

    }
    
    // Each level has it's own render settings
    public void SetupRenderSettings ()
    {
        RenderSettings.fog = fog;
        RenderSettings.fogColor = fogColor;
        RenderSettings.fogDensity = fogDensity;
        RenderSettings.ambientLight = ambientLight;
        RenderSettings.haloStrength = haloStrength;
        RenderSettings.flareStrength = flareStrength;
        RenderSettings.skybox = skybox;

    }
    
    // Each level has its own set off physical boundaries
    public void CreateBoundaries ()
    {
        _createdBoundaries = new GameObject ("Created Boundaries");
        _createdBoundaries.transform.parent = transform;
    
        _leftBoundary = new GameObject ("Left Boundary");
        _leftBoundary.transform.parent = _createdBoundaries.transform;
        BoxCollider boxCollider = _leftBoundary.AddComponent (typeof(BoxCollider)) as BoxCollider;
        boxCollider.size = new Vector3 (ColliderThickness, Boundaries.height + ColliderThickness * 2.0f + FallOutBuffer, ZLength);
        boxCollider.center = new Vector3 (Boundaries.xMin - ColliderThickness * 0.5f, Boundaries.y + Boundaries.height * 0.5f - FallOutBuffer * 0.5f, 0.0f);
    
        _rightBoundary = new GameObject ("Right Boundary");
        _rightBoundary.transform.parent = _createdBoundaries.transform;
        boxCollider = _rightBoundary.AddComponent (typeof(BoxCollider)) as BoxCollider;
        boxCollider.size = new Vector3 (ColliderThickness, Boundaries.height + ColliderThickness * 2.0f + FallOutBuffer, ZLength);
        boxCollider.center = new Vector3 (Boundaries.xMax + ColliderThickness * 0.5f, Boundaries.y + Boundaries.height * 0.5f - FallOutBuffer * 0.5f, 0.0f);
    
        _topBoundary = new GameObject ("Top Boundary");
        _topBoundary.transform.parent = _createdBoundaries.transform;
        boxCollider = _topBoundary.AddComponent (typeof(BoxCollider)) as BoxCollider;
        boxCollider.size = new Vector3 (Boundaries.width + ColliderThickness * 2.0f, ColliderThickness, ZLength);
        boxCollider.center = new Vector3 (Boundaries.x + Boundaries.width * 0.5f, Boundaries.yMax + ColliderThickness * 0.5f, 0.0f);
    
        _bottomBoundary = new GameObject ("Bottom Boundary (Including Fallout Buffer and Death Trigger)");
        _bottomBoundary.transform.parent = _createdBoundaries.transform;
        boxCollider = _bottomBoundary.AddComponent (typeof(BoxCollider)) as BoxCollider;
        boxCollider.size = new Vector3 (Boundaries.width + ColliderThickness * 2.0f, ColliderThickness, ZLength);
        boxCollider.center = new Vector3 (Boundaries.x + Boundaries.width * 0.5f, Boundaries.yMin - ColliderThickness * 0.5f - FallOutBuffer, 0.0f);
        boxCollider.isTrigger = true;
        _bottomBoundary.AddComponent (typeof(DeathTrigger));

    }

    // Knowing where the boundaries to the level are is important, so we'll draw them
    void OnDrawGizmos ()
    {
        Gizmos.color = _sceneViewDisplayColor;
        Vector3 lowerLeft = new Vector3 (Boundaries.xMin, Boundaries.yMax, 0);
        Vector3 upperLeft = new Vector3 (Boundaries.xMin, Boundaries.yMin, 0);
        Vector3 lowerRight = new Vector3 (Boundaries.xMax, Boundaries.yMax, 0);
        Vector3 upperRight = new Vector3 (Boundaries.xMax, Boundaries.yMin, 0);

        Gizmos.DrawLine (lowerLeft, upperLeft);
        Gizmos.DrawLine (upperLeft, upperRight);
        Gizmos.DrawLine (upperRight, lowerRight);
        Gizmos.DrawLine (lowerRight, lowerLeft);

    }

    public void RemoveDynamicObjects ()
    {
        GameObject[] objs = GameObject.FindGameObjectsWithTag ("Enemy");
        foreach (GameObject obj in objs)
            Destroy (obj);

        objs = GameObject.FindGameObjectsWithTag ("Pickup");
        foreach (GameObject obj in objs)
            Destroy (obj);

    }

    public Vector3 OffscreenPosition {
        get { return new Vector3 (Boundaries.xMax + 1.0f, Boundaries.yMax + 1.0f, 0.0f); }
    }
    
    public bool Ready {
        get { return _ready; }
    }
}
