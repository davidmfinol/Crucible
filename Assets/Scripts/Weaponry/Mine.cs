using UnityEngine;
using System.Collections;
using System.Collections.Generic;

/// <summary>
/// Mine is a basic explosive that can be placed onto the scene and detonated.
/// </summary>
[AddComponentMenu("Weaponry/Mine")]
public class Mine : Weapon
{
	public Transform mineObject;
	public Transform explosion1;
	public Transform explosion2;
	
    public string IdleAnimationName = "Idle";
    public string AttackAnimationName = "Attack";

	private List<GameObject> allPlacedMines = new List<GameObject>();
	private GameObject _mineAmountText;
	private int _mineAmount = 100; //TODO: MOVE THIS
	
	private bool _minesCurrentlyExploding = false;
    private bool _hitBoxesActive = false;

	
	private float _mineLastPlacedTime;
	
	void Start ()
	{
        SetHitBoxes(transform, _hitBoxesActive);
		_mineAmountText = GameObject.Find("MineAmountText");
		_mineAmountText.GetComponent<TextMesh>().text = _mineAmount.ToString();
	}
	
    public override void ActivateAttack(int attackID)
    {
		if(attackID == 0)
			PlaceMine();
		else if(attackID == 1)
			DetonateMines();
	}
	
	public void PlaceMine()
	{
		if( Time.time - _mineLastPlacedTime < 1 || _minesCurrentlyExploding || _mineAmount <= 0)
			return;
				
		//minePos = this.gameObject.transform.position;
		Vector3 minePos = new Vector3(transform.position.x, transform.position.y, transform.position.z);// + 1.5f);
		Transform mineCopy = (Transform) Instantiate(mineObject, minePos, Quaternion.identity);
		mineCopy.animation["MineAboutToExplode"].speed = 2.0f;
		_mineAmount--;
		allPlacedMines.Add(mineCopy.gameObject);
		_mineAmountText.GetComponent<TextMesh>().text = _mineAmount.ToString();
		_mineLastPlacedTime = Time.time;
	}
	
	public void DetonateMines()
	{
		if(allPlacedMines.Count <= 0 || _minesCurrentlyExploding)
			return;
				
		for(int i = 0; i < allPlacedMines.Count; i++)
			((GameObject) allPlacedMines[i]).animation.CrossFade("MineAboutToExplode");

		StartCoroutine(AnimateExplosions(0.44f));  // Time it takes to animate mine before exploding
	}
	
	// Waits until animation is over to explode mines.
	IEnumerator AnimateExplosions(float waitTime)
	{
		_minesCurrentlyExploding = true;

		yield return new WaitForSeconds(waitTime);
		
		for(int i = 0; i < allPlacedMines.Count; i++)
		{
			Instantiate(explosion1, ((GameObject) allPlacedMines[i]).transform.position, Quaternion.identity);
			Instantiate(explosion2, ((GameObject) allPlacedMines[i]).transform.position, Quaternion.identity);		
			Destroy((GameObject) allPlacedMines[i]);
		}
		
		allPlacedMines = new List<GameObject>();

		_minesCurrentlyExploding = false;
	}

    public void ActivateHitBox(bool activate)
    {
        if (activate != _hitBoxesActive)
            SetHitBoxes(transform, activate);
        _hitBoxesActive = activate;
    }	
	
    public void SetHitBoxes(Transform current, bool active)
    {
        // activate the hitbox for the bone we're on
        BoxCollider collider = current.GetComponent<BoxCollider>();
        HitBox hitBox = current.GetComponent<HitBox>();
        if (collider != null && hitBox != null)
        {
            collider.enabled = active;
            hitBox.enabled = active;
        }

        // activate the hit box for all child bones
        for (int i = 0; i < current.childCount; ++i)
            SetHitBoxes(current.GetChild(i), active);
    }
    
    public override Vector3 Rotation
    {
        get { return new Vector3(90, 0, 90); }
    }
    
    public override Vector3 Translation
    {
        get { return new Vector3(0.2f, 0.1f, 0.1f); }
    }
}
