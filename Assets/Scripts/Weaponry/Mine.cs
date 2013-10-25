using UnityEngine;
using System.Collections;

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
	
	private static ArrayList allPlacedMines = new ArrayList();
	private int mineAmount = 100;
	
	private bool minesCurrentlyExploding = false;
    private bool _hitBoxesActive = false;
	
	private GameObject MineAmountText;
	
	
	void Start ()
	{
        SetHitBoxes(transform, _hitBoxesActive);
		MineAmountText = GameObject.Find("MineAmountText");
		MineAmountText.GetComponent<TextMesh>().text = mineAmount.ToString();
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
		if(minesCurrentlyExploding || mineAmount <= 0)
			return;
				
		//minePos = this.gameObject.transform.position;
		Vector3 minePos = new Vector3(transform.position.x, transform.position.y, transform.position.z);// + 1.5f);
		Transform mineCopy = (Transform) Instantiate(mineObject, minePos, Quaternion.identity);
		mineCopy.animation["MineAboutToExplode"].speed = 2.0f;
		mineAmount--;
		allPlacedMines.Add(mineCopy.gameObject);
		MineAmountText.GetComponent<TextMesh>().text = mineAmount.ToString();
	}
	
	public void DetonateMines()
	{
		if(allPlacedMines.Count <= 0)
			return;
				
		for(int i = 0; i < allPlacedMines.Count; i++)
			((GameObject) allPlacedMines[i]).animation.CrossFade("MineAboutToExplode");
		
		minesCurrentlyExploding = true;
		StartCoroutine(AnimateExplosions(0.44f));  // Time it takes to animate mine before exploding
	}
	
	// Waits until animation is over to explode mines.
	IEnumerator AnimateExplosions(float waitTime)
	{
		yield return new WaitForSeconds(waitTime);
		
		for(int i = 0; i < allPlacedMines.Count; i++)
		{
			//Transform explo1Copy = (Transform) 
			Instantiate(explosion1, ((GameObject) allPlacedMines[i]).transform.position, Quaternion.identity);
			//Transform explo2Copy = (Transform) 
			Instantiate(explosion2, ((GameObject) allPlacedMines[i]).transform.position, Quaternion.identity);		
			Destroy((GameObject) allPlacedMines[i]);
		}
		
		allPlacedMines = new ArrayList();
		minesCurrentlyExploding = false;
	}

    public void ActivateHitBox(bool activate)
    {
        if (activate != _hitBoxesActive)
            SetHitBoxes(transform, activate);
        _hitBoxesActive = activate;
    }	
	
    public static void SetHitBoxes(Transform current, bool active)
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
