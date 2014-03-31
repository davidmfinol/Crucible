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
	public Transform SearchVignette;
	public Transform HurtVignette;
	public Transform LensFlareFlash;
	public GameObject WeaponQuadPrefab;
	public float WeaponRadius;
	public GameObject WeaponCountQuadPrefab;
	public float WeaponCountRadius;
	public float MinSwipeDistance;
	
	// quad containing objective arrow texture.
	public GameObject ObjectiveQuadPrefab;
	public Vector3 ObjectiveQuadPos;
	// how delayed are our objective removal updates
	public float ObjectiveReachedInterval;

	// how long can you go between mousedown then mouseup and have it still change weapons?
	public const float WeaponClickPeriod = 1.0f;

	public Material AlarmMaterial;

    private Camera _uiCamera;
    private TouchInput _touchInput;
    private NontouchInput _nontouchInput;
	private CraftingMenu _craftingMenu;

	// track player's HP to do hurt vignette.
	private PlayerHeartBox _playerHeartBox;
	private Transform _hurtVignetteInstance;
	private float _hurtVignetteAlpha;
	private int _hurtVignetteAlphaDir;
	
	private Transform _chaseVignetteInstance;
	private float _chaseVignetteAlpha;
	private int _chaseVignetteAlphaDir;

	private Transform _searchVignetteInstance;
	private float _searchVignetteAlpha;
	private int _searchVignetteAlphaDir;

	private Transform _flashInstance;
	private float _flashAlpha;
	private int _flashAlphaDir;
	private bool _hasFlashed;
	
	private Vector3 _weaponWheelPos;
	private int _currentWeapon;

	// weapon quads (0 to 2 counter-clockwise)
	// also weapon counts, if limited ammo
	private GameObject[] _weaponQuads;
	private GameObject[] _weaponCountQuads;

	// the objective quad, will need to constantly rotate towards the player's next objective
	private ObjectiveTracker _playerObjectives;
	private GameObject _objectiveQuad;
	private float _objectiveReachedTime;

	// tracking a gui swipe from where, with finger ID if on mobile.
	private bool _isTrackingSwipe;
	private int _swipeID;
	private Vector3 _swipeStartPos;
	private float _swipeTime;
	
	private bool _ready;
	
	void Start()
    {
        _uiCamera = GetComponentInChildren<Camera>();
        _touchInput = GetComponent<TouchInput>();
        _nontouchInput = GetComponent<NontouchInput>();
        _craftingMenu = GetComponent<CraftingMenu> ();

#if UNITY_EDITOR || UNITY_STANDALONE || UNITY_WEB 
        _touchInput.enabled = false;
#elif (UNITY_ANDROID  || UNITY_IOS) && !UNITY_EDITOR
        _nontouchInput.enabled = false;
#endif

		_playerHeartBox = GameManager.Player.gameObject.GetComponentInChildren<PlayerHeartBox> ();
		_hurtVignetteInstance = (Transform)Instantiate (HurtVignette, HurtVignette.position, HurtVignette.rotation);
		_hurtVignetteInstance.parent = transform;
		_hurtVignetteAlpha = 0.0f;

		_chaseVignetteInstance = (Transform)Instantiate (ChaseVignette, ChaseVignette.position, ChaseVignette.rotation);
		_chaseVignetteInstance.parent = transform;
		_chaseVignetteAlpha = 0.0f;

		_searchVignetteInstance = (Transform)Instantiate (SearchVignette, SearchVignette.position, SearchVignette.rotation);
		_searchVignetteInstance.parent = transform;
		_searchVignetteAlpha = 0.0f;

		_flashInstance = (Transform)Instantiate (LensFlareFlash, LensFlareFlash.position, LensFlareFlash.rotation);
		_flashInstance.parent = transform;
		_flashAlpha = 0.0f;
		_hasFlashed = false;

		_weaponWheelPos = new Vector3 (1, 1, 8);
		_weaponWheelPos = _uiCamera.ViewportToWorldPoint (_weaponWheelPos);
        _currentWeapon = 0;

		// weapon quads at proper positions
		_weaponQuads = new GameObject[3];
		_weaponCountQuads = new GameObject[3];

		Vector3 quadPos = _weaponWheelPos + Vector3.left * WeaponRadius;
		quadPos.z = -4.0f;
		_weaponQuads[0] = (GameObject) Instantiate (WeaponQuadPrefab, quadPos, Quaternion.identity);

		quadPos = _weaponWheelPos + Vector3.RotateTowards(Vector3.left, Vector3.down, Mathf.PI / 4.0f, 0.0f) * WeaponRadius;
		quadPos.z = -4.0f;
		_weaponQuads[1] = (GameObject) Instantiate (WeaponQuadPrefab, quadPos, Quaternion.identity);

		quadPos = _weaponWheelPos + Vector3.down * WeaponRadius;
		quadPos.z = -4.0f;
		_weaponQuads[2] = (GameObject) Instantiate (WeaponQuadPrefab, quadPos, Quaternion.identity);

		quadPos = _weaponWheelPos + Vector3.left * WeaponCountRadius;
		quadPos.z = -4.0f;
		_weaponCountQuads[0] = (GameObject) Instantiate (WeaponCountQuadPrefab, quadPos, Quaternion.identity);

		quadPos = _weaponWheelPos + Vector3.RotateTowards(Vector3.left, Vector3.down, Mathf.PI / 4.0f, 0.0f) * WeaponCountRadius;
		quadPos.z = -4.0f;
		_weaponCountQuads[1] = (GameObject) Instantiate (WeaponCountQuadPrefab, quadPos, Quaternion.identity);

		quadPos = _weaponWheelPos + Vector3.down * WeaponCountRadius;
		quadPos.z = -4.0f;
		_weaponCountQuads[2] = (GameObject) Instantiate (WeaponCountQuadPrefab, quadPos, Quaternion.identity);


		// *** track player objectives ***
		_playerObjectives = GameManager.Player.gameObject.GetComponent<ObjectiveTracker> ();

		ObjectiveQuadPos = _uiCamera.ViewportToWorldPoint (ObjectiveQuadPos);
		ObjectiveQuadPos.z = 8.0f;
		_objectiveQuad = (GameObject) Instantiate (ObjectiveQuadPrefab, ObjectiveQuadPos, Quaternion.identity);

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

		ProcessSwipes();

		_objectiveReachedTime += Time.deltaTime;
		if(_objectiveReachedTime >= ObjectiveReachedInterval) {
			_objectiveReachedTime = 0.0f;

			// see if player is on an objective and remove it, so not every frame.
			TryReachObjectives();

		}

		UpdateObjectiveArrow();

	}

	private void TryBeginSwipe() 
	{
		// **** began swipe with mouse? ****
		Vector3 mouseWorldPos = _uiCamera.ScreenToWorldPoint (Input.mousePosition);
		mouseWorldPos.z = _weaponWheelPos.z;

		// *** began swipe with mouse in the weapon wheel? ***
		if (Input.GetMouseButtonDown (0) && Vector3.Distance (_weaponWheelPos, mouseWorldPos) <= (WeaponRadius * 2.0f)) {
			_isTrackingSwipe = true;
			_swipeStartPos = mouseWorldPos;
			_swipeTime = 0.0f;

		// *** or began swipe with finger? ***
		} else {
			foreach (Touch touch in Input.touches) 
			{
				Vector2 touchPos = touch.position;
				Vector3 touchWorldPos = _uiCamera.ScreenToWorldPoint( new Vector3(touchPos.x, touchPos.y, 0.0f) );
				touchWorldPos.z = _weaponWheelPos.z;
				
				if(touch.phase == TouchPhase.Began && Vector3.Distance (_weaponWheelPos, touchWorldPos) <= (WeaponRadius * 2.0f)) {
					_isTrackingSwipe = true;
					_swipeID = touch.fingerId;
					_swipeStartPos = touchWorldPos;
					_swipeTime = 0.0f;

				}
				
			}

		}

	}

	private bool TryCompleteSwipe(out float degRet) {
		degRet = 0.0f;

		if (!_isTrackingSwipe)
			return false;

		// **** completed via mouse? ****
		Vector3 mouseWorldPos = _uiCamera.ScreenToWorldPoint (Input.mousePosition);
		mouseWorldPos.z = _weaponWheelPos.z;

		if (Vector3.Distance(_swipeStartPos, mouseWorldPos) >= MinSwipeDistance) {
			_isTrackingSwipe = false;
	
			float deltaY = mouseWorldPos.y - _swipeStartPos.y;
			float deltaX = mouseWorldPos.x - _swipeStartPos.x;
			
			// deltaY is inverted due to world coords vs screen coords.
			float rad = Mathf.Atan2(deltaY, deltaX);
			degRet = rad * 180.0f / Mathf.PI;
			return true;

		
		// **** completed via touch? ****
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
		if(!_isTrackingSwipe)
			return;

		// *** cancel via mouse ***
		if (Input.GetMouseButtonUp (0)) {
			Vector3 mouseWorldPos = _uiCamera.ScreenToWorldPoint (Input.mousePosition);
			mouseWorldPos.z = _weaponWheelPos.z;

			// *** just a "click" within interval? ***
			if(_swipeTime < WeaponClickPeriod && Vector3.Distance (mouseWorldPos, _swipeStartPos) < MinSwipeDistance) {
				// but ignore these clicks if the crafting wheel is open, since the player may be looking at weapon info.
				if(! GameManager.UI.CraftingMenu.IsOpen() ) {
					CycleToPreviousWeapon();
					
				}

			}

			_isTrackingSwipe = false;

		// *** cancel via finger ***
		} else {
			foreach (Touch touch in Input.touches) 
			{
				// cancelling our orignal
				if(touch.fingerId == _swipeID && touch.phase == TouchPhase.Canceled || touch.phase == TouchPhase.Ended) {
					Vector2 touchPos = touch.position;
					Vector3 touchWorldPos = _uiCamera.ScreenToWorldPoint( new Vector3(touchPos.x, touchPos.y, 0.0f) );
					touchWorldPos.z = _weaponWheelPos.z;

					// *** just a "click" within interval? ***
					if(_swipeTime < WeaponClickPeriod && Vector3.Distance (touchWorldPos, _swipeStartPos) < MinSwipeDistance) {
						// but ignore these clicks if the crafting wheel is open, since the player may be looking at weapon info.
						if(! GameManager.UI.CraftingMenu.IsOpen() ) {
							CycleToPreviousWeapon();

						}
						
					}
					
					_isTrackingSwipe = false;

				}

			}

		}

	}

	private void ProcessSwipes() {
		float deg;

		// began a swipe?
		if (!_isTrackingSwipe) {
			TryBeginSwipe();

		// swiping, so see if ending or completed
		} else {
			_swipeTime += Time.deltaTime;

			if(TryCompleteSwipe(out deg)) {
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

			} else {
				TryCancelSwipe();

			}

		}

	}

	private void TryReachObjectives() {
		_playerObjectives.RemoveCloseTo (GameManager.Player.transform.position);
	
	}

	private void UpdateObjectiveArrow() {
		// find nearest objective from player
		Vector3 pNearest;

		bool bFound = _playerObjectives.GetNearest (out pNearest);

		if (bFound) {
			_objectiveQuad.renderer.enabled = true;

			// get direction and distance to objective
			Vector3 vDir = pNearest - GameManager.Player.transform.position;		
			float fDist = vDir.magnitude;
			vDir.Normalize();

			// alpha is zero after some cutoff distance.
			float alpha = Mathf.Max(0.3f, (120.0f - fDist) / 120.0f);
			alpha = Mathf.Min(1.0f, alpha);

			float deg = Vector3.Angle(Vector3.right, vDir);

			// rotate the quad by the degrees.
			_objectiveQuad.transform.rotation = Quaternion.Euler (0.0f, 0.0f, deg);
			_objectiveQuad.renderer.material.color = new Color(_objectiveQuad.renderer.material.color.r, 
			                                                   _objectiveQuad.renderer.material.color.g, 
			                                                   _objectiveQuad.renderer.material.color.b, 
			                                                   alpha);


			// make it bright & bigger the closer you get.
			float fScale = alpha * 3.0f + 0.01f;

			Vector3 vScale = new Vector3(fScale, fScale, fScale);

			_objectiveQuad.transform.localScale = vScale;

		} else {
			_objectiveQuad.renderer.enabled = false;

		}

	}

    // TODO: DELETE THIS
    private void UpdateVignette()
    {
		// player hurt or chased? pulse vignettes.
		if (_playerHeartBox.HitPoints != _playerHeartBox.MaxHitPoints)
		{
			if(_hurtVignetteAlpha >= 0.9f)
				_hurtVignetteAlphaDir = -1;
			else if(_hurtVignetteAlpha <= 0.3) 
				_hurtVignetteAlphaDir = 1;
			
			if(_hurtVignetteAlphaDir == 1)
				_hurtVignetteAlpha = Mathf.Lerp (_hurtVignetteAlpha, 1.0f, Time.deltaTime * 2.0f);
			else if(_hurtVignetteAlphaDir == -1)
				_hurtVignetteAlpha = Mathf.Lerp (_hurtVignetteAlpha, 0.2f, Time.deltaTime * 2.0f);
		
		} 
		else if (GameManager.AI.EnemiesSearching > 0 && GameManager.AI.EnemiesChasing == 0)
		{
			if(_searchVignetteAlpha >= 0.9f)
				_searchVignetteAlphaDir = -1;
			else if(_searchVignetteAlpha <= 0.3) 
				_searchVignetteAlphaDir = 1;
			
			if(_searchVignetteAlphaDir == 1)
				_searchVignetteAlpha = Mathf.Lerp (_searchVignetteAlpha, 1.0f, Time.deltaTime * 2.0f);
			else if(_searchVignetteAlphaDir == -1)
				_searchVignetteAlpha = Mathf.Lerp (_searchVignetteAlpha, 0.2f, Time.deltaTime * 2.0f);
		}
		else if (GameManager.AI.EnemiesChasing > 0)
        {
            if(_chaseVignetteAlpha >= 0.9f)
				_chaseVignetteAlphaDir = -1;
			else if(_chaseVignetteAlpha <= 0.3) 
				_chaseVignetteAlphaDir = 1;
            
			if(_chaseVignetteAlphaDir == 1)
				_chaseVignetteAlpha = Mathf.Lerp (_chaseVignetteAlpha, 1.0f, Time.deltaTime * 2.0f);
			else if(_chaseVignetteAlphaDir == -1)
				_chaseVignetteAlpha = Mathf.Lerp (_chaseVignetteAlpha, 0.2f, Time.deltaTime * 2.0f);

        } 

		// try to flash if needed
		if( (GameManager.AI.EnemiesChasing > 0 || GameManager.AI.EnemiesSearching > 0))
		{
			if(_flashAlpha >= 0.95f)
				_flashAlphaDir = -1;
			else if(_flashAlpha <= 0.2) 
				_flashAlphaDir = 1;
			
			if(_flashAlphaDir == 1 && !_hasFlashed)
				_flashAlpha = Mathf.Lerp (_flashAlpha, 1.0f, Time.deltaTime * 6.0f);
			else if(_flashAlphaDir == -1)
			{
				_flashAlpha = Mathf.Lerp (_flashAlpha, 0.0f, Time.deltaTime * 1.0f);
				_hasFlashed = true;
			}
		}

		if (_playerHeartBox.HitPoints == _playerHeartBox.MaxHitPoints) {
			_hurtVignetteAlpha = Mathf.Lerp (_hurtVignetteAlpha, 0, Time.deltaTime * 2.0f);

		}

        if (GameManager.AI.EnemiesChasing == 0 && GameManager.AI.EnemiesSearching == 0)
        {
			_chaseVignetteAlpha = Mathf.Lerp (_chaseVignetteAlpha, 0, Time.deltaTime * 2.0f);
			_searchVignetteAlpha = Mathf.Lerp (_searchVignetteAlpha, 0, Time.deltaTime * 2.0f);
			_flashAlpha = Mathf.Lerp (_flashAlpha, 0, Time.deltaTime * 1.0f);
			if(_flashAlpha < 0.1f)
				_hasFlashed = false;
        }
		else if( _hasFlashed)
		{
			_flashAlpha = Mathf.Lerp (_flashAlpha, 0, Time.deltaTime * 4.0f);
		}

		_hurtVignetteInstance.renderer.material.color = new Vector4 (_hurtVignetteInstance.renderer.material.color.r, 
		                                                             _hurtVignetteInstance.renderer.material.color.g, 
		                                                             _hurtVignetteInstance.renderer.material.color.b,
		                                                             _hurtVignetteAlpha);

		_chaseVignetteInstance.renderer.material.color = new Vector4 (_chaseVignetteInstance.renderer.material.color.r, 
		                                                              _chaseVignetteInstance.renderer.material.color.g, 
		                                                              _chaseVignetteInstance.renderer.material.color.b,
		                                                              _chaseVignetteAlpha);

		_searchVignetteInstance.renderer.material.color = new Vector4 (_searchVignetteInstance.renderer.material.color.r, 
		                                                              _searchVignetteInstance.renderer.material.color.g, 
		                                                              _searchVignetteInstance.renderer.material.color.b,
		                                                              _searchVignetteAlpha);

		_flashInstance.renderer.material.color = new Vector4 (_flashInstance.renderer.material.color.r,
		                                                      _flashInstance.renderer.material.color.g,
		                                                      _flashInstance.renderer.material.color.b,
		                                                      _flashAlpha);
	}

	public void CycleToNextWeapon()
	{
		_currentWeapon++;
		if(_currentWeapon >= GameManager.Inventory.Weapons.Count)
			_currentWeapon = 0;

		RefreshWeaponWheel ();

		// select the weapon
		if(GameManager.Inventory.Weapons.Count > 0)
			GameManager.Inventory.CurrentWeapon = GameManager.Inventory.Weapons [_currentWeapon];

	}
	public void CycleToPreviousWeapon()
	{
		_currentWeapon--;
		if(_currentWeapon < 0)
			_currentWeapon = GameManager.Inventory.Weapons.Count - 1;

		RefreshWeaponWheel();

		// select the weapon
		if(GameManager.Inventory.Weapons.Count > 0)
			GameManager.Inventory.CurrentWeapon = GameManager.Inventory.Weapons [_currentWeapon];

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

			WeaponQuad wq = _weaponQuads[weaponPos].gameObject.GetComponent<WeaponQuad>();
			wq.Title = GameManager.Inventory.Weapons[weaponToShow].Title;
			wq.Description = GameManager.Inventory.Weapons[weaponToShow].Description;

			_weaponCountQuads[weaponPos].gameObject.renderer.enabled = true;
			_weaponCountQuads[weaponPos].gameObject.renderer.material.mainTexture = CountQuadFactory.GetTextureForCount(GameManager.Inventory.Weapons[weaponToShow].Quantity);

			weaponToShow = (weaponToShow + 1) % GameManager.Inventory.Weapons.Count;
			weaponPos = (weaponPos + 1) % 3;
			weaponsShown++;


			// placed 3 or all of our stuff, stop trying
			bPlacedAll = (weaponsShown == 3 || weaponsShown == GameManager.Inventory.Weapons.Count);

		}

		// *** hide the slots that didn't get filled *** 
		while(weaponsShown < 3) {
			_weaponQuads[weaponPos].gameObject.renderer.enabled = false;
			_weaponCountQuads[weaponPos].gameObject.renderer.enabled = false;


			weaponPos = (weaponPos + 1) % 3;
			weaponsShown++;

		}

		// select the weapon
		if(GameManager.Inventory.Weapons.Count > 0 &&
		   (GameManager.Inventory.CurrentWeapon != GameManager.Inventory.Weapons [_currentWeapon])) {
			GameManager.Inventory.CurrentWeapon = GameManager.Inventory.Weapons [_currentWeapon];
			
		}


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
