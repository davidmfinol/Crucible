using UnityEngine;
using System.Collections;

/// <summary>
/// User interface manager manages all the UI components.
/// </summary>
[RequireComponent(typeof(TouchInput))]
[RequireComponent(typeof(NontouchInput))]
[AddComponentMenu("User Interface/UIManager")]
public class UIManager : MonoBehaviour
{
	public Transform ChaseVignette;
	public GameObject WeaponQuadPrefab;
	public float WeaponWheelRadius;
	public float MinSwipeDistance;

    private Camera _uiCamera;
    private TouchInput _touchInput;
    private NontouchInput _nontouchInput;
	private CraftingMenu _craftingMenu;

	private Transform _vignetteInstance;
	private float _vignetteAlpha;
	private int _vignetteAlphaDir;
	
	private Vector3 _weaponWheelPos;
	private int _currentWeapon;

	// weapon quads (0 to 2 counter-clockwise)
	private GameObject[] _weaponQuads;

	// tracking a gui swipe from where, with finger ID if on mobile.
	private bool _isTrackingSwipe;
	private int _swipeID;
	private Vector3 _swipeStartPos;
	
	private bool _ready;
	
	void Start()
    {
        _uiCamera = GetComponentInChildren<Camera>();
        _touchInput = GetComponent<TouchInput>();
        _nontouchInput = GetComponent<NontouchInput>();
		_craftingMenu = GetComponent<CraftingMenu> ();

		_vignetteInstance = (Transform)Instantiate (ChaseVignette, ChaseVignette.position, ChaseVignette.rotation);
		_vignetteInstance.parent = transform;
		_vignetteAlpha = 0.0f;

		_weaponWheelPos = new Vector3 (1, 1, 8);
		_weaponWheelPos = _uiCamera.ViewportToWorldPoint (_weaponWheelPos);
        _currentWeapon = 0;

		// weapon quads at proper positions
		_weaponQuads = new GameObject[3];
		
		Vector3 quadPos = _weaponWheelPos + Vector3.left * WeaponWheelRadius;
		_weaponQuads[0] = (GameObject) Instantiate (WeaponQuadPrefab, quadPos, Quaternion.identity);

		quadPos = _weaponWheelPos + Vector3.RotateTowards(Vector3.left, Vector3.down, Mathf.PI / 4.0f, 0.0f) * WeaponWheelRadius;
		_weaponQuads[1] = (GameObject) Instantiate (WeaponQuadPrefab, quadPos, Quaternion.identity);

		quadPos = _weaponWheelPos + Vector3.down * WeaponWheelRadius;
		_weaponQuads[2] = (GameObject) Instantiate (WeaponQuadPrefab, quadPos, Quaternion.identity);

		_isTrackingSwipe = false;
		_swipeID = -1;
		_swipeStartPos = Vector3.zero;

		_ready = true;

    }
    
    public void EnableInput()
    {
#if UNITY_EDITOR || UNITY_STANDALONE || UNITY_WEB 
        if(_nontouchInput == null)
            _nontouchInput = GetComponent<NontouchInput>();
        _nontouchInput.Enable();
#elif (UNITY_ANDROID  || UNITY_IOS) && !UNITY_EDITOR
        if(_touchInput == null)
            _touchInput = GetComponent<TouchInput>();
        _touchInput.Enable();
#endif
    }

    public void DisableInput()
    {
#if UNITY_EDITOR || UNITY_STANDALONE || UNITY_WEB 
        if(_nontouchInput == null)
            _nontouchInput = GetComponent<NontouchInput>();
        _nontouchInput.Disable();
#elif (UNITY_ANDROID  || UNITY_IOS) && !UNITY_EDITOR
        if(_touchInput == null)
            _touchInput = GetComponent<TouchInput>();
        _touchInput.Disable();
#endif
    }

	void Update()
	{
        UpdateVignette();

		ProcessMouse ();

	}

	private void TryBeginSwipe() 
	{
		// **** began swipe with mouse? ****
		Vector3 mouseWorldPos = _uiCamera.ScreenToWorldPoint (Input.mousePosition);
		mouseWorldPos.z = _weaponWheelPos.z;

		// *** began swipe with mouse? ***
		if (Input.GetMouseButtonDown (0) && Vector3.Distance (_weaponWheelPos, mouseWorldPos) <= (WeaponWheelRadius * 2.0f)) {
			_isTrackingSwipe = true;
			_swipeStartPos = mouseWorldPos;

		// *** or began swipe with finger? ***
		} else {
			foreach (Touch touch in Input.touches) 
			{
				Vector2 touchPos = touch.position;
				Vector3 touchWorldPos = _uiCamera.ScreenToWorldPoint( new Vector3(touchPos.x, touchPos.y, 0.0f) );
				touchWorldPos.z = _weaponWheelPos.z;
				
				if(touch.phase == TouchPhase.Began && Vector3.Distance (_weaponWheelPos, touchWorldPos) <= (WeaponWheelRadius * 2.0f)) {
					_isTrackingSwipe = true;
					_swipeID = touch.fingerId;
					_swipeStartPos = touchWorldPos;

				}
				
			}

		}

	}

	private bool TryEndSwipe(out float degRet) {
		degRet = 0.0f;

		if (!_isTrackingSwipe)
			return false;

		// **** ended with mouse? ****
		Vector3 mouseWorldPos = _uiCamera.ScreenToWorldPoint (Input.mousePosition);
		mouseWorldPos.z = _weaponWheelPos.z;

		// *** cancel via mouse ***
		if (Vector3.Distance(_swipeStartPos, mouseWorldPos) >= MinSwipeDistance) {
			_isTrackingSwipe = false;
	
			float deltaY = mouseWorldPos.y - _swipeStartPos.y;
			float deltaX = mouseWorldPos.x - _swipeStartPos.x;
			
			// deltaY is inverted due to world coords vs screen coords.
			float rad = Mathf.Atan2(deltaY, deltaX);
			degRet = rad * 180.0f / Mathf.PI;
			return true;

		
		} else {
			foreach (Touch touch in Input.touches) 
			{
				Vector2 touchPos = touch.position;
				Vector3 touchWorldPos = _uiCamera.ScreenToWorldPoint( new Vector3(touchPos.x, touchPos.y, 0.0f) );
				touchWorldPos.z = _weaponWheelPos.z;
				
				if(touch.fingerId == _swipeID && Vector3.Distance (_weaponWheelPos, touchWorldPos) >= MinSwipeDistance) {
					_isTrackingSwipe = false;

					float deltaY = touchWorldPos.y - _swipeStartPos.y;
					float deltaX = touchWorldPos.x - _swipeStartPos.x;
					
					// deltaY is inverted due to world coords vs screen coords.
					float rad = Mathf.Atan2(deltaY, deltaX);
					degRet = rad * 180.0f / Mathf.PI;
					return true;

				}
				
			}

		}

		return false;
	
	}

	private void TryCancelSwipe() {
		// *** cancel via mouse ***
		if (Input.GetMouseButtonUp (0)) {
			_isTrackingSwipe = false;

		// *** cancel via finger ***
		} else {
			foreach (Touch touch in Input.touches) 
			{
				// cancelling our orignal
				if(touch.fingerId == _swipeID && touch.phase == TouchPhase.Canceled || touch.phase == TouchPhase.Ended) {
					_isTrackingSwipe = false;

				}

			}

		}

	}

	private void ProcessMouse() {
		float deg;

		// began a swipe?
		if (!_isTrackingSwipe) {
			TryBeginSwipe();

		// ending a swipe?
		} else if(_isTrackingSwipe && TryEndSwipe(out deg)) {
			// swipe - take proper action based on angle.
			if(deg >= 0.0f && deg <= 90.0f) {
				_craftingMenu.TryClose ();
				
			} else if(deg >= 90.0f && deg <= 180.0f) {
				CycleToNextWeapon();
				
			} else if(deg <= 0.0f && deg >= -90.0f) {
				CycleToPreviousWeapon();
				
			} else if(deg >= -180.0f && deg <= -90.0f) {
				_craftingMenu.TryOpen();
				
			}

		// swipe cancelled.
		} else {
			TryCancelSwipe();

		}

	}

    private void UpdateVignette()
    {
        if ( (GameManager.AI.EnemiesChasing > 0) )
        {
            if(_vignetteAlpha >= 0.9f)
                _vignetteAlphaDir = -1;
            else if(_vignetteAlpha <= 0.3) 
                _vignetteAlphaDir = 1;
            
            if(_vignetteAlphaDir == 1)
                _vignetteAlpha = Mathf.Lerp (_vignetteAlpha, 1.0f, Time.deltaTime * 2.0f);
            else if(_vignetteAlphaDir == -1)
                _vignetteAlpha = Mathf.Lerp (_vignetteAlpha, 0.2f, Time.deltaTime * 2.0f);
        } 
        else
        {
            _vignetteAlpha = Mathf.Lerp (_vignetteAlpha, 0, Time.deltaTime * 4.0f);
            
        }
        
        _vignetteInstance.renderer.material.color = new Vector4 (_vignetteInstance.renderer.material.color.r, 
                                                                 _vignetteInstance.renderer.material.color.g, 
                                                                 _vignetteInstance.renderer.material.color.b,
                                                                 _vignetteAlpha);
	}

	public void CycleToNextWeapon()
	{
		_currentWeapon++;
		if(_currentWeapon >= GameManager.Inventory.Weapons.Count)
			_currentWeapon = 0;

		RefreshWeaponWheel ();
	}
	public void CycleToPreviousWeapon()
	{
		_currentWeapon--;
		if(_currentWeapon < 0)
			_currentWeapon = GameManager.Inventory.Weapons.Count - 1;

		RefreshWeaponWheel();
	}
	
	public void RefreshWeaponWheel()
	{
		int weaponToShow = _currentWeapon;
		int weaponPos = 1;
		int weaponsShown = 0;

		// no items means skip to the section where we hide the quads.
		bool bPlacedAll = (GameManager.Inventory.Weapons.Count == 0);

		while (!bPlacedAll) {
			// show proper texture
			_weaponQuads[weaponPos].gameObject.renderer.enabled = true;
			_weaponQuads[weaponPos].gameObject.renderer.material.mainTexture = GameManager.Inventory.Weapons[weaponToShow].GetTexture();

			weaponToShow = (weaponToShow + 1) % GameManager.Inventory.Weapons.Count;
			weaponPos = (weaponPos + 1) % 3;
			weaponsShown++;


			// placed 3 or all of our stuff, stop trying
			bPlacedAll = (weaponsShown == 3 || weaponsShown == GameManager.Inventory.Weapons.Count);

		}

		// *** hide the slots that didn't get filled *** 
		while(weaponsShown < 3) {
			_weaponQuads[weaponPos].gameObject.renderer.enabled = false;

			weaponPos = (weaponPos + 1) % 3;
			weaponsShown++;

		}

		// select the weapon
		if(GameManager.Inventory.Weapons.Count > 0)
			GameManager.Inventory.CurrentWeapon = GameManager.Inventory.Weapons [_currentWeapon];

	}


    public Camera UICamera
    {
        get { return _uiCamera; }
        set { _uiCamera = value; }
    }

	public CraftingMenu CraftingMenu
	{
		get { return _craftingMenu; }

	}

	public int CurrentWeapon
	{
		get { return _currentWeapon; }
	}

	public bool Ready
	{
		get { return _ready; }
	}
}
