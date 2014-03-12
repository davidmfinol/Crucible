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
	public float GUIWheelRadius;

    private Camera _uiCamera;
    private TouchInput _touchInput;
    private NontouchInput _nontouchInput;

	private Transform _vignetteInstance;
	private float _vignetteAlpha;
	private int _vignetteAlphaDir;
	
	private Vector3 _weaponsGuiPos;
	private int _currentWeapon;
	
	private Transform _previousWeaponsImage;
	private Transform _currentWeaponsImage;
	private Transform _nextWeaponsImage;

	private bool _ready;


	void Start()
    {
        _uiCamera = GetComponentInChildren<Camera>();
        _touchInput = GetComponent<TouchInput>();
        _nontouchInput = GetComponent<NontouchInput>();

		_vignetteInstance = (Transform)Instantiate (ChaseVignette, ChaseVignette.position, ChaseVignette.rotation);
		_vignetteInstance.parent = transform;
		_vignetteAlpha = 0.0f;

		_weaponsGuiPos = new Vector3 (1, 1, 8);
		_weaponsGuiPos = _uiCamera.ViewportToWorldPoint (_weaponsGuiPos);
        _currentWeapon = 0;

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

		UpdateWeaponImage ();
	}
	public void CycleToPreviousWeapon()
	{
		_currentWeapon--;
		if(_currentWeapon < 0)
			_currentWeapon = GameManager.Inventory.Weapons.Count - 1;

		UpdateWeaponImage();
	}

    // TODO: MAKE THIS USE A SET OF QUADS
	public void UpdateWeaponImage()
	{
		if(GameManager.Inventory.Weapons.Count <= 0)
			return;

		// Make sure the player has equipped the weapon whose image we are going to show
        GameManager.Inventory.CurrentWeapon = GameManager.Inventory.Weapons [_currentWeapon];

		// First, find the images that we want to show
		Transform prevWeaponImage;
		if(_currentWeapon == 0)
			prevWeaponImage = GameManager.Inventory.Weapons [GameManager.Inventory.Weapons.Count - 1].GUIImage;
		else
			prevWeaponImage = GameManager.Inventory.Weapons [_currentWeapon - 1].GUIImage;
		Transform currentWeaponImage = GameManager.Inventory.Weapons[_currentWeapon].GUIImage;
		Transform nextWeaponImage = GameManager.Inventory.Weapons [(_currentWeapon + 1) % GameManager.Inventory.Weapons.Count].GUIImage;

		// Next, show the middle image
		if(_currentWeaponsImage != null)
			Destroy (_currentWeaponsImage.gameObject);
		Vector3 imageLocation = _weaponsGuiPos;
		Vector3 directional = (new Vector3 (-1, -1, 0)).normalized;
		imageLocation += directional * GUIWheelRadius;
		_currentWeaponsImage = (Transform) Instantiate(currentWeaponImage, imageLocation, Quaternion.identity);
		if(GameManager.Inventory.Weapons.Count == 1)
			return;

		// Then show the image to the left
		if(_previousWeaponsImage != null)
			Destroy(_previousWeaponsImage.gameObject);
		imageLocation = _weaponsGuiPos + Vector3.left * GUIWheelRadius;
		_previousWeaponsImage = (Transform) Instantiate (prevWeaponImage, imageLocation, Quaternion.identity);

		// Then show the right image
		if (_nextWeaponsImage != null)
			Destroy (_nextWeaponsImage.gameObject);
		imageLocation = _weaponsGuiPos + Vector3.down * GUIWheelRadius;
		_nextWeaponsImage = (Transform) Instantiate (nextWeaponImage, imageLocation, Quaternion.identity);
	}


    public Camera UICamera
    {
        get { return _uiCamera; }
        set { _uiCamera = value; }
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
