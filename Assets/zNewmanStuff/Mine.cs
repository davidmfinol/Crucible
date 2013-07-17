using UnityEngine;
using System.Collections;

public class Mine : Weapon {
	
	public Transform mineObject;
	public Transform explosion1;
	public Transform explosion2;
	
	private bool minePlaced = false;
	Transform mineCopy;
	
	static ArrayList allPlacedMines = new ArrayList();
	int mineAmount = 100000;
	bool allMinesExploded = false;
	Vector3 minePos;
	
	
    private bool _hitBoxesActive = false;
    public string IdleAnimationName = "Idle";
    public string AttackAnimationName = "Attack";
	
	
	// Use this for initialization
	void Start () {
		//PlayerCharacterFSM playerController = Player.GetComponent<PlayerCharacterFSM>();
        SetHitBoxes(transform, _hitBoxesActive);
	}
	
	// Update is called once per frame
	void Update () {
		
	}
	
    public override void ActivateAttack(int attackID)
    {
		if(attackID == 0){
			//place mine
			if(mineAmount > 0){
				minePos = this.gameObject.transform.position;
				mineCopy = (Transform) Instantiate(mineObject, minePos, Quaternion.identity);
				mineAmount--;
				allPlacedMines.Add(mineCopy.gameObject);
			}
		}
		else if(attackID == 1){
       		//base.ActivateAttack(1);
        	//ActivateHitBox(true);			
			//blow all up	
			for(int i = 0; i < allPlacedMines.Count; i++){
				
				Transform explo1Copy = (Transform) Instantiate(explosion1, ((GameObject) allPlacedMines[i]).transform.position, Quaternion.identity);
				Transform explo2Copy = (Transform) Instantiate(explosion2, ((GameObject) allPlacedMines[i]).transform.position, Quaternion.identity);
				
				//MonoBehaviour.Instantiate(explosion1, minePos, Quaternion.identity);
				//MonoBehaviour.Instantiate(explosion2, minePos, Quaternion.identity);
				Destroy((GameObject) allPlacedMines[i]);				
			}
			allPlacedMines = new ArrayList();

		}
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
