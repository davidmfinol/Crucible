using UnityEngine;
using System.Collections;

[AddComponentMenu("User Interface/Crafting Menu")]
public class CraftingMenu : MonoBehaviour {
	public enum CraftingMenuState {
		CraftingMenu_Opening,
		CraftingMenu_Open,
		CraftingMenu_Closing,
		CraftingMenu_Closed
		
	}

	// set in editor
	public GameObject WeaponWheelPrefab;
	public GameObject ItemWheelPrefab;
	public GameObject CraftingBackdropPrefab;
	public float FadeTime;

	// camera used to position wheels appropriately
	private Camera _uiCamera;
	// keep track of player inventory for displaying craftable items
	private PlayerCharacterInventory _inventory;

	private int _currentItem;

	private GameObject _weaponWheel;
	private GameObject _itemWheel;
	private GameObject _craftingBackdrop;

	private CraftingMenuState _state;
	private float _timeInState;
	
	private Transform[] _itemImage;   // 0 to 4 counter-clockwise.
	
	void Start() {
		_uiCamera = transform.root.GetComponentInChildren<Camera>();
		_inventory = GameManager.Player.GetComponent<PlayerCharacterInventory>();
	

		// wheelcenter
		Vector3 wheelCenter = _uiCamera.ViewportToWorldPoint ( new Vector3 (1.0f, 1.0f, 7.0f) );
		_weaponWheel = (GameObject) Instantiate (WeaponWheelPrefab, wheelCenter, Quaternion.identity);
		_weaponWheel.renderer.enabled = true;

		_itemWheel = (GameObject) Instantiate (ItemWheelPrefab, wheelCenter, Quaternion.identity);
		_itemWheel.renderer.enabled = false;

		_craftingBackdrop = (GameObject) Instantiate (CraftingBackdropPrefab, Vector3.zero, Quaternion.identity);
		_craftingBackdrop.renderer.enabled = false;

		_currentItem = 0;

		_state = CraftingMenuState.CraftingMenu_Closed;
		_timeInState = 0.0f;

		_itemImage = new Transform[5];
		               
	}


	// Update is called once per frame
	void Update () {
		if (Input.GetButtonDown ("CraftingMenu")) {
			if(_state == CraftingMenuState.CraftingMenu_Closed) {
				_state = CraftingMenuState.CraftingMenu_Opening;
				_timeInState = 0.0f;

			} else if(_state == CraftingMenuState.CraftingMenu_Open) {
				_state = CraftingMenuState.CraftingMenu_Closing;
				_timeInState = 0.0f;

			}

		}

		// render proper state
		AnimateCraftingMenu ();

	}


	// animation of crafting menu
	void AnimateCraftingMenu() {
		_timeInState += Time.deltaTime;

		if (_state == CraftingMenuState.CraftingMenu_Opening)
		{
			float alpha = Mathf.Min (_timeInState / FadeTime, 1.0f);

			_itemWheel.renderer.enabled = true;
			_itemWheel.renderer.material.color = new Color(_itemWheel.renderer.material.color.r, 
			                                               _itemWheel.renderer.material.color.g, 
			                                               _itemWheel.renderer.material.color.b, 
			                                               alpha );

			_craftingBackdrop.renderer.enabled = true;
			_craftingBackdrop.renderer.material.color = new Color(_craftingBackdrop.renderer.material.color.r, 
			                                                      _craftingBackdrop.renderer.material.color.g, 
			                                                      _craftingBackdrop.renderer.material.color.b, 
			                                               		  alpha );

			if(alpha == 1.0f)
				_state = CraftingMenuState.CraftingMenu_Open;
		
		} else if(_state == CraftingMenuState.CraftingMenu_Open) 
		{
			_itemWheel.renderer.enabled = true;
		
		} else if (_state == CraftingMenuState.CraftingMenu_Closing)
		{
			float alpha = Mathf.Max ( 1.0f - (float)(_timeInState / FadeTime), 0.0f);

			_itemWheel.renderer.enabled = true;

			_itemWheel.renderer.enabled = true;
			_itemWheel.renderer.material.color = new Color(_itemWheel.renderer.material.color.r, 
			                                               _itemWheel.renderer.material.color.g, 
			                                               _itemWheel.renderer.material.color.b, 
			                                               alpha );
			
			_craftingBackdrop.renderer.enabled = true;
			_craftingBackdrop.renderer.material.color = new Color(_craftingBackdrop.renderer.material.color.r, 
			                                                      _craftingBackdrop.renderer.material.color.g, 
			                                                      _craftingBackdrop.renderer.material.color.b, 
			                                                      alpha );
			
			if(alpha == 0.0f)
				_state = CraftingMenuState.CraftingMenu_Closed;

		} else if (_state == CraftingMenuState.CraftingMenu_Closed)
		{
			_itemWheel.renderer.enabled = false;	
				
		} 

	}

	public void RefreshItemWheel() {
		if(_inventory.Weapons.Count <= 0)
			return;

//
//
//		// First, find the images that we want to show
//		Transform prevWeaponImage;
//		if(_currentWeapon == 0)
//			prevWeaponImage =_inventory.Weapons [_inventory.Weapons.Count - 1].GUIImage;
//		else
//			prevWeaponImage =_inventory.Weapons [_currentWeapon - 1].GUIImage;
//		Transform currentWeaponImage = _inventory.Weapons[_currentWeapon].GUIImage;
//		Transform nextWeaponImage = _inventory.Weapons [(_currentWeapon + 1) % _inventory.Weapons.Count].GUIImage;
//		
//		// Next, show the middle image
//		if(_currentWeaponsImage != null)
//			Destroy (_currentWeaponsImage.gameObject);
//		Vector3 imageLocation = _weaponsGuiPos;
//		Vector3 directional = (new Vector3 (-1, -1, 0)).normalized;
//		imageLocation += directional * GUIWheelRadius;
//		_currentWeaponsImage = (Transform) Instantiate(currentWeaponImage, imageLocation, Quaternion.identity);
//		if(_inventory.Weapons.Count == 1)
//			return;
//		
//		// Then show the image to the left
//		if(_previousWeaponsImage != null)
//			Destroy(_previousWeaponsImage.gameObject);
//		imageLocation = _weaponsGuiPos + Vector3.left * GUIWheelRadius;
//		_previousWeaponsImage = (Transform) Instantiate (prevWeaponImage, imageLocation, Quaternion.identity);
//		
//		// Then show the right image
//		if (_nextWeaponsImage != null)
//			Destroy (_nextWeaponsImage.gameObject);
//		imageLocation = _weaponsGuiPos + Vector3.down * GUIWheelRadius;
//		_nextWeaponsImage = (Transform) Instantiate (nextWeaponImage, imageLocation, Quaternion.identity);
//
	}

	public void CycleToNextItem()
	{
		_currentItem++;
		if(_currentItem >= _inventory.Weapons.Count)
			_currentItem = 0;
		
		RefreshItemWheel();
	}

	public void CycleToPreviousItem()
	{
		_currentItem--;
		if(_currentItem < 0)
			_currentItem = _inventory.Weapons.Count - 1;
		
		RefreshItemWheel();
	}

}