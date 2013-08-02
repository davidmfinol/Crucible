using UnityEngine;
using System.Collections;

public class Mine : Weapon {
	
	public Transform mineObject;
	public Transform explosion1;
	public Transform explosion2;
	
	private bool minePlaced = false;
	private bool minesCurrentlyExploding = false;
	Transform mineCopy;
	
	static ArrayList allPlacedMines = new ArrayList();
	int mineAmount = 100;
	bool allMinesExploded = false;
	Vector3 minePos;
	
	
    private bool _hitBoxesActive = false;
    public string IdleAnimationName = "Idle";
    public string AttackAnimationName = "Attack";
	
	private GameObject MineAmountText;
	
	// Use this for initialization
	void Start () {
		
		
		//PlayerCharacterFSM playerController = Player.GetComponent<PlayerCharacterFSM>();
        SetHitBoxes(transform, _hitBoxesActive);
		MineAmountText = GameObject.Find("MineAmountText");
		MineAmountText.GetComponent<TextMesh>().text = mineAmount.ToString();
		
	}
	
	// Update is called once per frame
	void Update () {
		
	}
	
    public override void ActivateAttack(int attackID)
    {
		
		if(attackID == 0){
			if(!minesCurrentlyExploding){
				//place mine
				if(mineAmount > 0){
					//minePos = this.gameObject.transform.position;
					minePos = new Vector3(transform.position.x, transform.position.y, transform.position.z);// + 1.5f);
					mineCopy = (Transform) Instantiate(mineObject, minePos, Quaternion.identity);
					mineCopy.animation["MineAboutToExplode"].speed = 2.0f;
					mineAmount--;
					allPlacedMines.Add(mineCopy.gameObject);
					MineAmountText.GetComponent<TextMesh>().text = mineAmount.ToString();
				}
			}
		}
		else if(attackID == 1){		
			//blow all up
			if(allPlacedMines.Count > 0){
				for(int i = 0; i < allPlacedMines.Count; i++){
					
					//((GameObject) allPlacedMines[i]).animation.Play("MineAboutToExplode");
					((GameObject) allPlacedMines[i]).animation.CrossFade("MineAboutToExplode");
					//Transform explo1Copy = (Transform) Instantiate(explosion1, ((GameObject) allPlacedMines[i]).transform.position, Quaternion.identity);
					//Transform explo2Copy = (Transform) Instantiate(explosion2, ((GameObject) allPlacedMines[i]).transform.position, Quaternion.identity);
					
	
					//Destroy((GameObject) allPlacedMines[i]);				
				}
				minesCurrentlyExploding = true;
				StartCoroutine(AnimateExplosions(0.44f));  // Time it takes to animate mine before exploding
			}
			
			// allPlacedMines = new ArrayList();

		}
	}
	
	// Waits until animation is over to explode mines.
	IEnumerator AnimateExplosions(float waitTime){
		yield return new WaitForSeconds(waitTime);
		for(int i = 0; i < allPlacedMines.Count; i++){
			Transform explo1Copy = (Transform) Instantiate(explosion1, ((GameObject) allPlacedMines[i]).transform.position, Quaternion.identity);
			Transform explo2Copy = (Transform) Instantiate(explosion2, ((GameObject) allPlacedMines[i]).transform.position, Quaternion.identity);		
			Destroy((GameObject) allPlacedMines[i]);
			minesCurrentlyExploding = false;
		}
		allPlacedMines = new ArrayList();
	}
	
    public override void Deactivate()
    {
		
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
        for (int i = 0; i < current.GetChildCount(); ++i)
            SetHitBoxes(current.GetChild(i), active);
    }
}
