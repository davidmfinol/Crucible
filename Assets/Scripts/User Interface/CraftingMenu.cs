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
	public GameObject ItemQuadPrefab;
	public float ItemWheelRadius;

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

	// five quads for the inventory items (0 to 4 counter-clockwise)
	private GameObject[] _itemQuads;
	
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


		// *** position all item quads at proper rotations for texture replacement ***
		_itemQuads = new GameObject[5];

		Vector3 quadPos = wheelCenter + Vector3.left * ItemWheelRadius;
		_itemQuads[0] = (GameObject) Instantiate (ItemQuadPrefab, quadPos, Quaternion.identity);

		// pi/8
		quadPos = wheelCenter + Vector3.RotateTowards(Vector3.left, Vector3.down, Mathf.PI / 8.0f, 0.0f) * ItemWheelRadius;
		_itemQuads[1] = (GameObject) Instantiate (ItemQuadPrefab, quadPos, Quaternion.identity);

		// pi/4
		quadPos = wheelCenter + Vector3.RotateTowards(Vector3.left, Vector3.down, Mathf.PI / 4.0f, 0.0f ) * ItemWheelRadius;
		_itemQuads[2] = (GameObject) Instantiate (ItemQuadPrefab, quadPos, Quaternion.identity);

		// 3 pi / 8
		quadPos = wheelCenter + Vector3.RotateTowards(Vector3.left, Vector3.down, Mathf.PI * 3.0f / 8.0f, 0.0f) * ItemWheelRadius;
		_itemQuads[3] = (GameObject) Instantiate (ItemQuadPrefab, quadPos, Quaternion.identity);

		// pi / 2
		quadPos = wheelCenter + Vector3.down * ItemWheelRadius;
		_itemQuads[4] = (GameObject) Instantiate (ItemQuadPrefab, quadPos, Quaternion.identity);
	
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
		RefreshItemWheel();

	}

	void ShowWithAlpha(GameObject obj, float alpha) {
		obj.renderer.enabled = (alpha == 1.0f);
		obj.renderer.material.color = new Color(obj.renderer.material.color.r, 
		                                        obj.renderer.material.color.g, 
		                                        obj.renderer.material.color.b, 
		                                        alpha );

	}
	
	// animation of crafting menu
	void AnimateCraftingMenu() {
		_timeInState += Time.deltaTime;

		if (_state == CraftingMenuState.CraftingMenu_Opening)
		{
			float alpha = Mathf.Min (_timeInState / FadeTime, 1.0f);

			ShowWithAlpha(_itemWheel, alpha);
			ShowWithAlpha(_craftingBackdrop, alpha);

			for(int i=0;i<5;i++)
				ShowWithAlpha (_itemQuads[i], alpha);

			if(alpha == 1.0f)
				_state = CraftingMenuState.CraftingMenu_Open;
		
		} else if(_state == CraftingMenuState.CraftingMenu_Open) 
		{
			// nothing
		
		} else if (_state == CraftingMenuState.CraftingMenu_Closing)
		{
			float alpha = Mathf.Max ( 1.0f - (float)(_timeInState / FadeTime), 0.0f);

			ShowWithAlpha(_itemWheel, alpha);
			ShowWithAlpha(_craftingBackdrop, alpha);

			for(int i=0;i<5;i++)
				ShowWithAlpha (_itemQuads[i], alpha);

			if(alpha == 0.0f)
				_state = CraftingMenuState.CraftingMenu_Closed;

		} else if (_state == CraftingMenuState.CraftingMenu_Closed)
		{
			for(int i=0;i<5;i++)
				ShowWithAlpha (_itemQuads[i], 0.0f);
				
		} 

	}

	public void RefreshItemWheel() {
		for(int i=0;i < 5; i++) {
			if( i <= _inventory.Items.Count - 1) {
				_itemQuads[i].renderer.enabled = true;
				_itemQuads[i].renderer.material.mainTexture = _inventory.Items[i].GetTexture();

			} else {
				_itemQuads[i].renderer.enabled = false;

			}
	
		}

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