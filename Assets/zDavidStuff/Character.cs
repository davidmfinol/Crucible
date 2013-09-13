using UnityEngine;
using System.Collections;

/// <summary>
/// This Character class works with CharacterController and Mecanim's Animator to move and animate characters.
/// </summary>
[RequireComponent(typeof(CharacterController))]
[RequireComponent(typeof(Animator))]
[RequireComponent(typeof(CharacterSettings))]
[RequireComponent(typeof(CharacterInput))]
[AddComponentMenu("Character/Base")]
public class Character : MonoBehaviour
{
	private CharacterController _characterController;
	private Animator _animator;
	private HeartBox _heartBox;
	
	// We use these to determine movement
    private float _horizontalSpeed = 0.0f; // How fast does the character want to move on the x-axis?
    private float _verticalSpeed = 0.0f; // How fast does the character want to move on the y-axis?
    private Vector3 _direction = Vector3.right; // The current direction the character is facing in x-y.
    private CollisionFlags _collisionFlags = CollisionFlags.None; // The last collision flags returned from characterController.Move()
    private Vector3 _velocity = Vector3.zero; // The last velocity moved as a result of the characterController.Move()

    // Rate of change of vertical fall speed
    public float Gravity = 40.0f;

    // Maximum fall speed
    public float MaxFallSpeed = 20.0f;
	
    // How fast does the character rotate?
    public float RotationSmoothing = 3.0f;

    // How fast does the character move across the Z-Axis?
    public float ZLerp = 10.0f;

    // Moving platform support 
    private Transform _activePlatform;
    private Vector3 _activeLocalPlatformPoint;
    private Vector3 _activeGlobalPlatformPoint;

    // Support for hanging off of objects
	private List<HangableObject> _hangQueue = new List<HangableObject>();
    private HangableObject _previousHangTarget = null;
	
    // We need a way to move between zones
    private Zone _currentZone = null; // Zone we are currently in
    private Zone _Zlower = null; // Zone we go to if we press down
    private Zone _Zhigher = null; // Zone we go to if we press up
    private HashSet<Zone> _zones = new HashSet<Zone>(); // All the zones we could currently be in
    private bool _canTransitionZ = false; // Does our current location allow us to to move between zones?
	
	void Start()
	{
		_characterController = GetComponent<CharacterController>();
		_animator = GetComponent<Animator>();
		_heartBox = GetComponentInChildren<HeartBox>();
	}

    public virtual void OnDeath()
    {
        Destroy(gameObject);
    }
	
	void FixedUpdate()
	{
		// Check health first
        if (_heartBox != null && _heartBox.HitPoints <= 0)
        {
            OnDeath();
            return;
        }
	}

    // Used to check interactions with platforms
    public virtual void OnControllerColliderHit(ControllerColliderHit hit)
    {
        // We only check for platforms if we don't already have one
        if (ActivePlatform != null)
            return;

        // Support for moving platforms
        if (Mathf.Abs(hit.moveDirection.y) > 0.9 && Mathf.Abs(hit.normal.y) > 0.9)
            ActivePlatform = hit.collider.transform;

        // Support for catching a wall/ledge/rope/etc.
        if (Mathf.Abs(hit.moveDirection.x) > 0.9 && Mathf.Abs(hit.normal.x) > 0.9)
            ActivePlatform = hit.collider.transform;
    }
	
	public float Z
	{
		get { return CurrentZone != null ? CurrentZone.transform.position.z : transform.position.z; }
	}
	public Zone CurrentZone
	{
		get { return _currentZone; }
		set { _currentZone = value; }
	}
	public float Z_Down
	{
		get { return Zlower != null ? Zlower.transform.position.z : transform.position.z; }
	}
	public Zone Zlower
	{
		get { return _Zlower; }
		set { _Zlower = value; }
	}
	public float Z_Up
	{
		get { return Zhigher != null ? Zhigher.transform.position.z : transform.position.z; }
	}
	public Zone Zhigher
	{
		get { return _Zhigher; }
		set { _Zhigher = value; }
	}
    public HashSet<Zone> Zones
    {
        get { return _zones; }
    }
    public bool CanTransitionZ
    {
        get { return _canTransitionZ; }
        set { _canTransitionZ = value; }
    }
}
