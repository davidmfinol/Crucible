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
	
	// graphical prefabs and radius of items to sit in them.
	public GameObject WeaponWheelPrefab;
	public GameObject ItemWheelPrefab;
	public GameObject CraftingBackdropPrefab;
	public GameObject ItemQuadPrefab;
	public float ItemWheelRadius;

	// how long for GUI to fade
	public float FadeTime;

	// where are the droppable crafting points
	public Rect ItemDescriptionBounds;

	// normalized coordinates for crafting points.
	public Vector3[] CraftingPoints;

	public float CraftingDropDistance;

	//--------------------------------

	// camera used to position wheels appropriately
	private Camera _uiCamera;
	// keep track of player inventory for displaying craftable items
	private InventoryManager _inventory;

	private int _currentItem;

	// instances of graphical prefabs that are shown/hidden
	private GameObject _weaponWheel;
	private GameObject _itemWheel;
	private GameObject _craftingBackdrop;

	// state of opening, opened, closing
	private CraftingMenuState _state;
	private float _timeInState;

	// five quads for the inventory items (0 to 4 counter-clockwise)
	private GameObject[] _itemQuads;

	// last clicked item
	private InventoryItem _lastClickedItem;

	// crafting slots
	private GameObject[] _craftingSlots;
	
	// on mousedown an item quad, we clone into a dragging quad
	private GameObject _draggingQuad;

	// TODO: make into whatever prefab or inventory item, etc.
	private string _resultingItem;


	// --------------------------------
	void Start() {
		_uiCamera = transform.root.GetComponentInChildren<Camera>();
		_inventory = GameManager.Player.GetComponent<InventoryManager>();

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
	
		_lastClickedItem = null;
		_draggingQuad = null;

		// *** translate GUI positionings into screen coords ***
		ItemDescriptionBounds = new Rect (ItemDescriptionBounds.x * Screen.width, 
		                                  ItemDescriptionBounds.y * Screen.height, 
		                                  ItemDescriptionBounds.width * Screen.width, 
		                                  ItemDescriptionBounds.height * Screen.height);

		// crafting points get translated into screen res coords for checking distance from mouse pointer
		for (int i=0; i <= CraftingPoints.Length - 1; i++)
			CraftingPoints [i] = new Vector3 (CraftingPoints [i].x * Screen.width, 
			                                  CraftingPoints [i].y * Screen.height, 
			                                  7.0f);

		_craftingSlots = new GameObject[CraftingPoints.Length];
		for (int i=0; i <= _craftingSlots.Length - 1; i++)
			_craftingSlots [i] = null;

		CraftingDropDistance *= Screen.width;

	}


	// Update is called once per frame
	void Update () {
		if (Input.GetButtonDown ("CraftingMenu")) {
			if(_state == CraftingMenuState.CraftingMenu_Closed) {
				TryOpen();

			}  else if(_state == CraftingMenuState.CraftingMenu_Open) {
				TryClose();

			}

		}

		// render proper state
		AnimateCraftingMenu ();
		RefreshItemWheel();

		ProcessMouse ();

	}

	public void TryOpen() {
		if (GameManager.Player.CurrentState.IsName("Base Layer.Idle") ||
		    GameManager.Player.CurrentState.IsName("Ground.Running") ||
		    GameManager.Player.CurrentState.IsName("Ground.Standing Up") ) {
			GameManager.UI.DisableInput();
			GameManager.Player.StepDown();
			Open ();

		}

	}

	public void TryClose() {
		if (GameManager.Player.CurrentState.IsName("Ground.Stepping Down")) {
			GameManager.UI.EnableInput();
			GameManager.Player.StandUp();
			Close ();

		}
	}

	public void Open() {
		_state = CraftingMenuState.CraftingMenu_Opening;
		_timeInState = 0.0f;

	}

	public void Close() {
		_state = CraftingMenuState.CraftingMenu_Closing;
		_timeInState = 0.0f;
		
		// destroy all cloned item quads placed into crafting slots
		_lastClickedItem = null;
		
		for(int i=0; i <= _craftingSlots.Length - 1; i++) {
			if(_craftingSlots[i] != null) {
				Destroy (_craftingSlots[i]);
				_craftingSlots[i] = null;
				
			}
			
		}
	
	}

	void OnGUI() {
		if (_lastClickedItem != null) {
			GUI.skin.textArea.normal.background = null;
			GUI.skin.textArea.active.background = null;
			
			GUI.Label ( ItemDescriptionBounds, _lastClickedItem.Name + "\n\n" + _lastClickedItem.Caption );
			GUI.Label ( new Rect(400, 200, 100, 100), _resultingItem );

		}

	}

	void ProcessMouse() {
		if (_state != CraftingMenuState.CraftingMenu_Open)
			return;


		// catch mouse down/up to begin/end dragging
		if (Input.GetMouseButtonDown (0)) {
			Ray rayToGUI = _uiCamera.ScreenPointToRay(Input.mousePosition);

			RaycastHit hit;
			if (Physics.Raycast (rayToGUI, out hit)) {
				ItemQuad itemQuad = hit.collider.GetComponent<ItemQuad>();

				if(itemQuad != null) {
					_lastClickedItem = itemQuad.invItem;

					// an item from the wheel
					if(!itemQuad.IsDraggedCopy) {
						_draggingQuad = itemQuad.CreateDraggableCopy();

					// an item already in a crafting slot, just moving it.
					} else { 
						_draggingQuad = itemQuad.gameObject;

						// take it out of whichever slot it was in.
						for(int i=0; i <= _craftingSlots.Length - 1; i++)
							if(_craftingSlots[i] == _draggingQuad)
								_craftingSlots[i] = null;

					}
				}
				
			}

			UpdateCraftResult();
			
		} else if(Input.GetMouseButtonUp(0)) {
			if(_draggingQuad != null) {
				Vector2 mousePoint2D = new Vector2(Input.mousePosition.x, Input.mousePosition.y);

				for(int i=0; i <= CraftingPoints.Length - 1; i++) {
					if( Vector2.Distance(mousePoint2D, CraftingPoints[i]) <= CraftingDropDistance) {
						// remove any existing item in the slot
						if(_craftingSlots[i] != null) {
							Destroy (_craftingSlots[i]);
							_craftingSlots[i] = null;
							
						}

						// put new item in the slot
						_craftingSlots[i] = _draggingQuad;
						_draggingQuad.transform.position = _uiCamera.ScreenToWorldPoint( CraftingPoints[i] );
						// stop dragging
						_draggingQuad = null;

					}

				}

				// got here, no crafting point for it, so destroy it
				Destroy (_draggingQuad);
				_draggingQuad = null;

			}

			UpdateCraftResult();

		}


		// if dragging something, put it under mouse
		if(_draggingQuad != null) {
			_draggingQuad.transform.position = _uiCamera.ScreenToWorldPoint( new Vector3(Input.mousePosition.x - 15.0f, Input.mousePosition.y + 15.0f, 2.0f ) );

		}

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
			if( i <= GameManager.Inventory.Items.Count - 1) {
				_itemQuads[i].renderer.enabled = true;
				_itemQuads[i].renderer.material.mainTexture = GameManager.Inventory.Items[i].GetTexture();
				_itemQuads[i].GetComponent<ItemQuad>().invItem = GameManager.Inventory.Items[i];

			} else {
				_itemQuads[i].renderer.enabled = false;

			}
	
		}

	}

	public void UpdateCraftResult() {
		InventoryItemFactory.ResetIngredients ();

		for(int i=0; i <= _craftingSlots.Length - 1; i++) {
			if(_craftingSlots[i] != null) {
				InventoryItemFactory.AddIngredient(_craftingSlots[i].GetComponent <ItemQuad>().invItem.Type);

			}

		}

		_resultingItem = InventoryItemFactory.GetCraftResult ();
		Debug.Log ("Resulting item is " + _resultingItem);

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