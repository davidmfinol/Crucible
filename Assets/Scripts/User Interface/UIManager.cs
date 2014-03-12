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
