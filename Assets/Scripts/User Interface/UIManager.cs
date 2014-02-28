using UnityEngine;
using System.Collections;

/// <summary>
/// User interface manager manages all the UI components.
/// </summary>
[AddComponentMenu("User Interface/UIManager")]
public class UIManager : MonoBehaviour
{
	public Transform ChaseVignette;
	public float GUIWheelRadius;

    private Camera _uiCamera;

	private Transform _vignetteInstance;
	private float _vignetteAlpha;
	private int _vignetteAlphaDir;
	
	private Vector3 _weaponsGuiPos;
	private PlayerCharacterInventory _inventory;
	private int _currentWeapon = 0;
	
	private Transform _previousWeaponsImage;
	private Transform _currentWeaponsImage;
	private Transform _nextWeaponsImage;


	void Start()
    {
        _uiCamera = GetComponentInChildren<Camera>();

		_vignetteInstance = (Transform)Instantiate (ChaseVignette, ChaseVignette.position, ChaseVignette.rotation);
		_vignetteAlpha = 0.0f;

		_weaponsGuiPos = new Vector3 (1, 1, 8);
		_weaponsGuiPos = _uiCamera.ViewportToWorldPoint (_weaponsGuiPos);
		_inventory = GameManager.Player.GetComponent<PlayerCharacterInventory>();
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
		if(_inventory.Weapons.Count <= 0)
			return;

		_currentWeapon++;
		if(_currentWeapon >= _inventory.Weapons.Count)
			_currentWeapon = 0;
		_inventory.CurrentWeapon = _inventory.Weapons [_currentWeapon];
		UpdateWeaponImage ();
	}
	public void CycleToPreviousWeapon()
	{
		if(_inventory.Weapons.Count <= 0)
			return;

		_currentWeapon--;
		if(_currentWeapon < 0)
			_currentWeapon = _inventory.Weapons.Count - 1;
		_inventory.CurrentWeapon = _inventory.Weapons [_currentWeapon];
		UpdateWeaponImage();
	}

	private void UpdateWeaponImage()
	{
		// First, find the images that we want to show
		Transform prevWeaponImage;
		if(_currentWeapon == 0)
			prevWeaponImage =_inventory.Weapons [_inventory.Weapons.Count - 1].GUIImage;
		else
			prevWeaponImage =_inventory.Weapons [_currentWeapon - 1].GUIImage;
		Transform currentWeaponImage = _inventory.CurrentWeapon.GUIImage;
		Transform nextWeaponImage = _inventory.Weapons [(_currentWeapon + 1) % _inventory.Weapons.Count].GUIImage;

		// Next, show the middle image
		if(_currentWeaponsImage != null)
			Destroy (_currentWeaponsImage.gameObject);
		Vector3 imageLocation = _weaponsGuiPos;
		Vector3 directional = (new Vector3 (-1, -1, 0)).normalized;
		imageLocation += directional * GUIWheelRadius;
		_currentWeaponsImage = (Transform) Instantiate(currentWeaponImage, imageLocation, Quaternion.identity);
		if(_inventory.Weapons.Count == 1)
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

}
