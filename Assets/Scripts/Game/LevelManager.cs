using UnityEngine;
using System.Collections;
using System.Collections.Generic;

/// <summary>
/// Level manager keeps track of the attributes of the current level in the scene.
/// Main things: DefaultStartPoint, Boundaries, Alarms, and Items
/// </summary>
[AddComponentMenu("Game/Level Manager")]
public class LevelManager : MonoBehaviour
{
    // Where the player starts in the level
    public Transform DefaultStartPoint;

    // The boundaries of the level
    public Rect Boundaries = new Rect(0, 0, 100, 100);
    public float FallOutBuffer = 5.0f;
    public float ColliderThickness = 10.0f;
    public float ZLength = 100.0f;
    private Color _sceneViewDisplayColor = new Color (.20f, 0.74f, 0.27f, 0.50f); // Sea-green color border for the boundaries
    private GameObject _createdBoundaries;
    private GameObject _leftBoundary;
    private GameObject _rightBoundary;
    private GameObject _topBoundary;
    private GameObject _bottomBoundary;

    // The dynamic objects in the scene
    private AlphaPulse _alarms;
    private List<Item> _items;

    // All managers need to let the GameManager know when it is ready
    private bool _ready;
    
    void Awake()
    {
        // Make sure we have the correct tag
        gameObject.tag = "Level Manager";

        // Make sure the characters have a defined space in which they can move
        CreateBoundaries ();

        // Also make sure we have a start point
        if (DefaultStartPoint == null) {
            DefaultStartPoint = new GameObject("Default Start").transform;
            DefaultStartPoint.position = new Vector3(10, 10, 0);
            DefaultStartPoint.gameObject.isStatic = true;
        }
    }

    void Start ()
    {
        // Find the alarms that will flash when the player is found
        GameObject alarms = GameObject.FindGameObjectWithTag ("Alarms");
        if (alarms != null)
            _alarms = alarms.GetComponent<AlphaPulse> ();

        // Find the items in the scene
        _items = new List<Item> ();
        foreach (GameObject itemContainer in GameObject.FindGameObjectsWithTag("Item Pickups"))
            foreach (Item item in itemContainer.GetComponentsInChildren<Item>())
                _items.Add (item);

        // Make ourselves static
        gameObject.isStatic = true;

        _ready = true;

    }
    
    // Each level has its own set of physical boundaries
    public void CreateBoundaries ()
    {
        _createdBoundaries = new GameObject ("Created Boundaries");
        _createdBoundaries.isStatic = true;
        _createdBoundaries.transform.parent = transform;
    
        _leftBoundary = new GameObject ("Left Boundary");
        BoxCollider boxCollider = _leftBoundary.AddComponent (typeof(BoxCollider)) as BoxCollider;
        boxCollider.size = new Vector3 (ColliderThickness, Boundaries.height + ColliderThickness * 2.0f + FallOutBuffer, ZLength);
        boxCollider.center = new Vector3 (Boundaries.xMin - ColliderThickness * 0.5f, Boundaries.y + Boundaries.height * 0.5f - FallOutBuffer * 0.5f, 0.0f);
        _leftBoundary.isStatic = true;
        _leftBoundary.transform.parent = _createdBoundaries.transform;
    
        _rightBoundary = new GameObject ("Right Boundary");
        boxCollider = _rightBoundary.AddComponent (typeof(BoxCollider)) as BoxCollider;
        boxCollider.size = new Vector3 (ColliderThickness, Boundaries.height + ColliderThickness * 2.0f + FallOutBuffer, ZLength);
        boxCollider.center = new Vector3 (Boundaries.xMax + ColliderThickness * 0.5f, Boundaries.y + Boundaries.height * 0.5f - FallOutBuffer * 0.5f, 0.0f);
        _rightBoundary.isStatic = true;
        _rightBoundary.transform.parent = _createdBoundaries.transform;
    
        _topBoundary = new GameObject ("Top Boundary");
        boxCollider = _topBoundary.AddComponent (typeof(BoxCollider)) as BoxCollider;
        boxCollider.size = new Vector3 (Boundaries.width + ColliderThickness * 2.0f, ColliderThickness, ZLength);
        boxCollider.center = new Vector3 (Boundaries.x + Boundaries.width * 0.5f, Boundaries.yMax + ColliderThickness * 0.5f, 0.0f);
        _topBoundary.isStatic = true;
        _topBoundary.transform.parent = _createdBoundaries.transform;
    
        _bottomBoundary = new GameObject ("Bottom Boundary (Including Fallout Buffer and Death Trigger)");
        boxCollider = _bottomBoundary.AddComponent (typeof(BoxCollider)) as BoxCollider;
        boxCollider.size = new Vector3 (Boundaries.width + ColliderThickness * 2.0f, ColliderThickness, ZLength);
        boxCollider.center = new Vector3 (Boundaries.x + Boundaries.width * 0.5f, Boundaries.yMin - ColliderThickness * 0.5f - FallOutBuffer, 0.0f);
        boxCollider.isTrigger = true;
        _bottomBoundary.AddComponent (typeof(DeathTrigger)); // We die if we fall down too much
        _bottomBoundary.isStatic = true;
        _bottomBoundary.transform.parent = _createdBoundaries.transform;

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

    public void ResetItems ()
    {
        foreach (Item item in _items)
            Destroy (item.gameObject);
        _items = new List<Item> ();

    }

    public Vector3 OffscreenPosition {
        get { return new Vector3 (Boundaries.xMax + 1.0f, Boundaries.yMax + 1.0f, 0.0f); }
    }
    
    public AlphaPulse Alarms {
        get { return _alarms; }
    }

    public List<Item> Items {
        get { return _items; }
    }
    
    public bool Ready {
        get { return _ready; }
    }
}
