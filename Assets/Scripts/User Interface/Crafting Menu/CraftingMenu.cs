using UnityEngine;
using System.Collections;

[AddComponentMenu("User Interface/Crafting Menu")]
public class CraftingMenu : MonoBehaviour
{
    public enum CraftingMenuState
    {
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
    public GameObject ItemCountQuadPrefab;
    public float ItemWheelRadius;
    public float ItemCountRadius;
    public GameObject CraftButtonPrefab;
    public Vector3 CraftButtonPos;
    public GUIStyle TextStyle;

    
    // TODO: find a better place for these
    public GameObject PipePrefab;
    public GameObject MINEPrefab;
    public GameObject GravityGunPrefab;

    // how long for GUI to fade
    public float FadeTime;

    // where are the droppable crafting points
    public Rect ItemDescriptionBounds;

    // normalized coordinates for crafting points.
    public Vector3[] CraftingPoints;
    public float CraftingDropDistance;

	//The ui sound effects, yeah!
	private UIAudioPlayer _sound;
	
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
    private GameObject _craftingButton;

    // state of opening, opened, closing
    private CraftingMenuState _state;
    private float _timeInState;

    // five quads for the inventory items (0 to 4 counter-clockwise)
    private GameObject[] _itemQuads;
    private GameObject[] _itemCountQuads;

    // last clicked item
    private GameObject _lastClickedQuad;

    // crafting slots
    private GameObject[] _craftingSlots;
    
    // on mousedown an item quad, we clone into a dragging quad
    private GameObject _draggingQuad;

    // TODO: make into whatever prefab or inventory item, etc.
    private CraftResult _craftResult;
    private GameObject _craftResultQuad;
	
    // --------------------------------
    void Start ()
    {
		_uiCamera = transform.root.GetComponentInChildren<Camera> ();
        _inventory = GameManager.Player.GetComponent<InventoryManager> ();

		// wheelcenter
		Vector3 wheelCenter = _uiCamera.ViewportToWorldPoint (new Vector3 (1.0f, 1.0f, 7.0f));
		_weaponWheel = (GameObject)Instantiate (WeaponWheelPrefab, wheelCenter, Quaternion.identity);
		_weaponWheel.transform.parent = transform;
		_weaponWheel.renderer.enabled = true;


        _itemWheel = (GameObject)Instantiate (ItemWheelPrefab, wheelCenter, Quaternion.identity);
        _itemWheel.transform.parent = transform;
        _itemWheel.renderer.enabled = false;

        _craftingBackdrop = (GameObject)Instantiate (CraftingBackdropPrefab, Vector3.zero, Quaternion.identity);
        _craftingBackdrop.transform.parent = transform;
        _craftingBackdrop.renderer.enabled = false;

        // position crafting button in screen coords.
        CraftButtonPos = _uiCamera.ViewportToWorldPoint (CraftButtonPos);
        _craftingButton = (GameObject)Instantiate (CraftButtonPrefab, CraftButtonPos, Quaternion.identity);
        _craftingButton.transform.parent = transform;
        _craftingButton.renderer.enabled = false;


        _currentItem = 0;

        _state = CraftingMenuState.CraftingMenu_Closed;
        _timeInState = 0.0f;


        // *** position all item quads and their counts at proper rotations for texture replacement ***
        _itemQuads = new GameObject[5];
        _itemCountQuads = new GameObject[5];

        Vector3 quadPos = wheelCenter + Vector3.left * ItemWheelRadius;
        _itemQuads [0] = (GameObject)Instantiate (ItemQuadPrefab, quadPos, Quaternion.identity);
        _itemQuads [0].transform.parent = _weaponWheel.transform;
        quadPos = wheelCenter + Vector3.left * ItemCountRadius;
        _itemCountQuads [0] = (GameObject)Instantiate (ItemCountQuadPrefab, quadPos, Quaternion.identity);
        _itemCountQuads [0].transform.parent = _weaponWheel.transform;

        // pi/8
        quadPos = wheelCenter + Vector3.RotateTowards (Vector3.left, Vector3.down, Mathf.PI / 8.0f, 0.0f) * ItemWheelRadius;
        _itemQuads [1] = (GameObject)Instantiate (ItemQuadPrefab, quadPos, Quaternion.identity);
		_itemQuads [1].transform.parent = _weaponWheel.transform;
        quadPos = wheelCenter + Vector3.RotateTowards (Vector3.left, Vector3.down, Mathf.PI / 8.0f, 0.0f) * ItemCountRadius;
        _itemCountQuads [1] = (GameObject)Instantiate (ItemCountQuadPrefab, quadPos, Quaternion.identity);
		_itemCountQuads [1].transform.parent = _weaponWheel.transform;

        // pi/4
        quadPos = wheelCenter + Vector3.RotateTowards (Vector3.left, Vector3.down, Mathf.PI / 4.0f, 0.0f) * ItemWheelRadius;
        _itemQuads [2] = (GameObject)Instantiate (ItemQuadPrefab, quadPos, Quaternion.identity);
		_itemQuads [2].transform.parent = _weaponWheel.transform;
        quadPos = wheelCenter + Vector3.RotateTowards (Vector3.left, Vector3.down, Mathf.PI / 4.0f, 0.0f) * ItemCountRadius;
        _itemCountQuads [2] = (GameObject)Instantiate (ItemCountQuadPrefab, quadPos, Quaternion.identity);
		_itemCountQuads [2].transform.parent = _weaponWheel.transform;

        // 3 pi / 8
        quadPos = wheelCenter + Vector3.RotateTowards (Vector3.left, Vector3.down, Mathf.PI * 3.0f / 8.0f, 0.0f) * ItemWheelRadius;
        _itemQuads [3] = (GameObject)Instantiate (ItemQuadPrefab, quadPos, Quaternion.identity);
		_itemQuads [3].transform.parent = _weaponWheel.transform;
        quadPos = wheelCenter + Vector3.RotateTowards (Vector3.left, Vector3.down, Mathf.PI * 3.0f / 8.0f, 0.0f) * ItemCountRadius;
        _itemCountQuads [3] = (GameObject)Instantiate (ItemCountQuadPrefab, quadPos, Quaternion.identity);
		_itemCountQuads [3].transform.parent = _weaponWheel.transform;


        // pi / 2
        quadPos = wheelCenter + Vector3.down * ItemWheelRadius;
        _itemQuads [4] = (GameObject)Instantiate (ItemQuadPrefab, quadPos, Quaternion.identity);
		_itemQuads [4].transform.parent = _weaponWheel.transform;
        quadPos = wheelCenter + Vector3.down * ItemCountRadius;
        _itemCountQuads [4] = (GameObject)Instantiate (ItemCountQuadPrefab, quadPos, Quaternion.identity);
		_itemCountQuads [4].transform.parent = _weaponWheel.transform;



        _lastClickedQuad = null;
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

		//instantiate sound
		_sound = gameObject.GetComponentInChildren<UIAudioPlayer> ();

    }


    // Update is called once per frame
    void Update ()
    {
        if (Input.GetButtonDown ("CraftingMenu") && !GameManager.IsPlayingCutscene) {
            if (_state == CraftingMenuState.CraftingMenu_Closed) {
                TryOpen ();

            } else if (_state == CraftingMenuState.CraftingMenu_Open) {
                TryClose ();

            }

        }

        // render proper state
        AnimateCraftingMenu ();
        RefreshItemWheel ();

        ProcessMouse ();

    }

    public void TryOpen ()
    {
        if (GameManager.Player.CurrentState.nameHash == NewmanAnimator.IdleState ||
            GameManager.Player.CurrentState.nameHash == NewmanAnimator.RunningState ||
            GameManager.Player.CurrentState.nameHash == NewmanAnimator.StandingUpState) {
            GameManager.UI.DisableInput ();
            GameManager.Player.StepDown ();
            Open ();

        }

    }

    public void TryClose ()
    {
        if (GameManager.Player.CurrentState.nameHash == NewmanAnimator.SteppingDownState) {
            GameManager.UI.EnableInput ();
            GameManager.Player.StandUp ();
            Close ();
        }
    }

    public void Open ()
    {
		GameManager.UI.ShowMap (false);
		//Play a sound effect
		_sound.Play(_sound.MenuUp,1.0f);
		
        _state = CraftingMenuState.CraftingMenu_Opening;
        _timeInState = 0.0f;

    }

    public void Close ()
    {
        if(_state == CraftingMenuState.CraftingMenu_Closed)
            return;

        _state = CraftingMenuState.CraftingMenu_Closing;
        _timeInState = 0.0f;
		//Play a sound effect
		_sound.Play(_sound.MenuDown,1.0f);
        
        // destroy all cloned item quads placed into crafting slots
        _lastClickedQuad = null;
        _craftResult = null;
        
        for (int i=0; i <= _craftingSlots.Length - 1; i++) {
            if (_craftingSlots [i] != null) {
                Destroy (_craftingSlots [i]);
                _craftingSlots [i] = null;
                
            }
            
        }
    
    }

	public void ShowWeaponWheel(bool enabled)
	{
		_weaponWheel.SetActive(enabled);

	}

    void OnGUI ()
    {
        // REFRESH LAST CLICKED ITEM
        if (_lastClickedQuad != null) {
            GUI.skin.textArea.normal.background = null;
            GUI.skin.textArea.active.background = null;

            ItemQuad iq = _lastClickedQuad.GetComponent<ItemQuad> ();
            WeaponQuad wq = _lastClickedQuad.GetComponent<WeaponQuad> ();


            if (iq != null) {
                if (iq.invItem != null) {
                    GUI.Label (ItemDescriptionBounds, iq.invItem.Name + "\n\n" + iq.invItem.Caption, TextStyle);
                
                }
            } else if (wq != null) {
                GUI.Label (ItemDescriptionBounds, wq.Title + "\n\n" + wq.Description, TextStyle);

            }
    
        }

        // REFRESH CRAFT RESULT
        if (_craftResult != null) {
            if (_craftResult.IsWeapon) 
                GUI.Label (new Rect (900, 450, 200, 200), _craftResult.WeaponName, TextStyle);
            else
                GUI.Label (new Rect (900, 450, 200, 200), _craftResult.InvItem.Name, TextStyle);
            
		}
    }

    void ProcessMouse ()
    {
        if (_state != CraftingMenuState.CraftingMenu_Open)
            return;


        // catch mouse down/up to begin/end dragging
        if (Input.GetMouseButtonDown (0)) {
            Ray rayToGUI = _uiCamera.ScreenPointToRay (Input.mousePosition);

            RaycastHit hit;
            if (Physics.Raycast (rayToGUI, out hit)) {
                // we either clicked an item quad or a weapon quad.
                // or maybe the craft button
				
				_sound.Play(_sound.SelectItem,1.0f);
                ItemQuad itemQuad = hit.collider.GetComponent<ItemQuad> ();
                WeaponQuad weapQuad = hit.collider.GetComponent<WeaponQuad> ();
                CraftButton cb = hit.collider.GetComponent<CraftButton> ();

                if (itemQuad != null) {
                    _lastClickedQuad = hit.collider.gameObject;

                    // an item from the wheel
                    if (!itemQuad.IsDraggedCopy) {
                        _draggingQuad = itemQuad.CreateDraggableCopy ();

                        // an item already in a crafting slot, just moving it.
                    } else { 
                        _draggingQuad = itemQuad.gameObject;

                        // take it out of whichever slot it was in.
                        for (int i=0; i <= _craftingSlots.Length - 1; i++)
                            if (_craftingSlots [i] == _draggingQuad)
                                _craftingSlots [i] = null;

                    }
                
                    // clicked a weapon because we want to see its info?
                } else if (weapQuad != null) {
                    Debug.Log ("Clicked a weapon quad.");
                    _lastClickedQuad = hit.collider.gameObject;

                } else if (cb != null) {
                    // we should be able to make something
                    if (_craftResult != null)
                        Craft ();

                }

            }

            UpdateCraftResult ();
            
        } else if (Input.GetMouseButtonUp (0)) {
            if (_draggingQuad != null) {
                Vector2 mousePoint2D = new Vector2 (Input.mousePosition.x, Input.mousePosition.y);

                for (int i=0; i <= CraftingPoints.Length - 1; i++) {
                    if (Vector2.Distance (mousePoint2D, CraftingPoints [i]) <= CraftingDropDistance) {
                        // remove any existing item in the slot
                        if (_craftingSlots [i] != null) {
                            Destroy (_craftingSlots [i]);
                            _craftingSlots [i] = null;
                            
                        }

                        // put new item in the slot
                        _craftingSlots [i] = _draggingQuad;
                        _draggingQuad.transform.position = _uiCamera.ScreenToWorldPoint (CraftingPoints [i]);
                        // stop dragging
                        _draggingQuad = null;
						//play sound
						_sound.Play(_sound.DropoffItem,0.5f);

                    }

                }

                // got here, no crafting point for it, so destroy it
                Destroy (_draggingQuad);
                _draggingQuad = null;
				//_sound.Play(_sound.NotACombination,1.0f);

            }

            UpdateCraftResult ();

        }


        // if dragging something, put it under mouse
        if (_draggingQuad != null) {
            _draggingQuad.transform.position = _uiCamera.ScreenToWorldPoint (new Vector3 (Input.mousePosition.x - 15.0f, Input.mousePosition.y + 15.0f, 2.0f));

        }

    }

    void Craft ()
    {
		//_sound.Play(_sound.Crafting,1.0f);
		_sound.Play(_sound.CraftingZipper,1.0f);
        if (_craftResult.IsWeapon) {
            // crafting a MINE????
            if (_craftResult.WeaponType == Weapon.WeaponType.Weapon_HandMINE) {
                Weapon w = MINEPrefab.GetComponent<Weapon> ();
                
                // try add to an existing weapon
                if (! GameManager.Inventory.TryAddAmmo (w, 2)) {
                    // Create a new weapon from the item and destroy the item
                    GameObject instantiatedWeapon = (GameObject)Instantiate (MINEPrefab);
                    Weapon newWeapon = instantiatedWeapon.GetComponent<Weapon> ();
                    newWeapon.Quantity = 2;
                    GameManager.Inventory.Weapons.Add (newWeapon);
                    instantiatedWeapon.transform.position = GameManager.Level.OffscreenPosition;
                    
                }

                ConsumeItemsInSlots ();
                RefreshItemWheel ();
                GameManager.UI.RefreshWeaponWheel ();

            } else if (_craftResult.WeaponType == Weapon.WeaponType.Weapon_GravityGun) {
                Weapon w = GravityGunPrefab.GetComponent<Weapon> ();
                
                // try add to an existing weapon
                if (! GameManager.Inventory.TryAddAmmo (w, 2)) {
                    // Create a new weapon from the item and destroy the item
                    GameObject instantiatedWeapon = (GameObject)Instantiate (GravityGunPrefab);
                    Weapon newWeapon = instantiatedWeapon.GetComponent<Weapon> ();
                    newWeapon.Quantity = 5;
                    GameManager.Inventory.Weapons.Add (newWeapon);
                    instantiatedWeapon.transform.position = GameManager.Level.OffscreenPosition;
                    
                }
                
                ConsumeItemsInSlots ();
                RefreshItemWheel ();
                GameManager.UI.RefreshWeaponWheel ();

            }

        }

    }

    void ConsumeItemsInSlots ()
    {
        // for each slot,
        for (int i=0; i<4; i++) {
            if (_craftingSlots [i] != null) {
                // get inventory item its for
                ItemQuad iq = _craftingSlots [i].GetComponent<ItemQuad> ();

                // remove quantity of 1 for item.
                GameManager.Inventory.TryRemoveItemQty (iq.invItem.Type, 1);
                Destroy (iq.gameObject);
                _craftingSlots [i] = null;

            }
        
        }

        _lastClickedQuad = null;

    }

    void ShowWithAlpha (GameObject obj, float alpha)
    {
        obj.renderer.enabled = (alpha == 1.0f);
        obj.renderer.material.color = new Color (obj.renderer.material.color.r, 
                                                obj.renderer.material.color.g, 
                                                obj.renderer.material.color.b, 
                                                alpha);

    }
    
    // animation of crafting menu
    void AnimateCraftingMenu ()
    {
        _timeInState += Time.deltaTime;

        if (_state == CraftingMenuState.CraftingMenu_Opening) {
            float alpha = Mathf.Min (_timeInState / FadeTime, 1.0f);

            ShowWithAlpha (_itemWheel, alpha);
            ShowWithAlpha (_craftingBackdrop, alpha);

            for (int i=0; i<5; i++) {
                ShowWithAlpha (_itemQuads [i], alpha);
                ShowWithAlpha (_itemCountQuads [i], alpha);

            }

            if (alpha == 1.0f)
                _state = CraftingMenuState.CraftingMenu_Open;
        
        } else if (_state == CraftingMenuState.CraftingMenu_Open) {
            // nothing
        
        } else if (_state == CraftingMenuState.CraftingMenu_Closing) {
            _craftingButton.renderer.enabled = false;

            float alpha = Mathf.Max (1.0f - (float)(_timeInState / FadeTime), 0.0f);

            ShowWithAlpha (_itemWheel, alpha);
            ShowWithAlpha (_craftingBackdrop, alpha);

            for (int i=0; i<5; i++) {
                ShowWithAlpha (_itemQuads [i], alpha);
                ShowWithAlpha (_itemCountQuads [i], alpha);
                ;

            }

            if (alpha == 0.0f)
                _state = CraftingMenuState.CraftingMenu_Closed;

        } else if (_state == CraftingMenuState.CraftingMenu_Closed) {
            for (int i=0; i<5; i++) {
                ShowWithAlpha (_itemQuads [i], 0.0f);
                ShowWithAlpha (_itemCountQuads [i], 0.0f);

            }
                
        } 

    }

    public void RefreshItemWheel ()
    {
		if (GameManager.Inventory == null || GameManager.Inventory.Items == null)
			return;

        int slot = 0;
        int itemIndex = 0;

        // dont use first slot for now
        _itemQuads [slot].renderer.enabled = false;
        _itemCountQuads [slot].renderer.enabled = false;
        slot++;

        // show what we can
        while ((slot < 5 ) && (itemIndex <= GameManager.Inventory.Items.Count - 1)) {
            _itemQuads [slot].renderer.enabled = true;
            _itemQuads [slot].renderer.material.mainTexture = GameManager.Inventory.Items [itemIndex].GetTexture ();
            _itemQuads [slot].GetComponent<ItemQuad> ().invItem = GameManager.Inventory.Items [itemIndex];
            
            _itemCountQuads [slot].renderer.enabled = true;
            _itemCountQuads [slot].renderer.material.mainTexture = CountQuadFactory.GetTextureForCount (GameManager.Inventory.Items [itemIndex].Quantity);

            slot++;
            itemIndex++;

        }

        // hide any unfilled.
        while (slot < 5) {
            _itemQuads [slot].renderer.enabled = false;
            _itemCountQuads [slot].renderer.enabled = false;
            slot++;

        }

    }

    public void UpdateCraftResult ()
    {
        InventoryItemFactory.ResetIngredients ();

        for (int i=0; i <= _craftingSlots.Length - 1; i++) {
            if (_craftingSlots [i] != null) {
                InventoryItemFactory.AddIngredient (_craftingSlots [i].GetComponent <ItemQuad> ().invItem.Type);

            }

        }

        _craftResult = InventoryItemFactory.GetCraftResult ();

        if (_craftResult != null) {
            // show proper icon with create button.
            _craftingButton.renderer.enabled = true;

        } else {
            _craftingButton.renderer.enabled = false;
			//_sound.Play(_sound.NotACombination,0.5f);

        }

    }

    public void CycleToNextItem ()
    {
        _currentItem++;
        if (_currentItem >= _inventory.Weapons.Count)
            _currentItem = 0;
        
        RefreshItemWheel ();
    }

    public void CycleToPreviousItem ()
    {
        _currentItem--;
        if (_currentItem < 0)
            _currentItem = _inventory.Weapons.Count - 1;
        
        RefreshItemWheel ();
    }

    public bool IsOpen ()
    {
        return(_state == CraftingMenuState.CraftingMenu_Open);

    }

	public GameObject WeaponWheel {
		get { return _weaponWheel; }

	}
}