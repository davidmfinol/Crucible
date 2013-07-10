using UnityEngine;
using System.Collections;

public class Mine : Weapon {
	
	public Transform mineObject;
	public Transform explosion1;
	public Transform explosion2;
	
	private bool minePlaced = false;
	Transform mineCopy;
	
	static ArrayList allPlacedMines = new ArrayList();
	int mineAmount = 5;
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
			//blow all up	
			for(int i = 0; i < allPlacedMines.Count; i++){
				MonoBehaviour.Instantiate(explosion1, minePos, Quaternion.identity);
				MonoBehaviour.Instantiate(explosion2, minePos, Quaternion.identity);				
				Destroy((GameObject) allPlacedMines[i]);
				
			}
		}
		/*
		Debug.Log (" Mine Attack ");
		if(!minePlaced && mineAmount > 0){
			//minePos = new Vector3(0,0,0);
			minePos = this.gameObject.transform.position;
			//MonoBehaviour.Instantiate(mineObject, minePos, Quaternion.identity);
			mineCopy = (Transform) Instantiate(mineObject, minePos, Quaternion.identity);
			mineAmount--;
			minePlaced = true;
		}
		else{
			if(!allMinesExploded){
				MonoBehaviour.Instantiate(explosion1, minePos, Quaternion.identity);
				MonoBehaviour.Instantiate(explosion2, minePos, Quaternion.identity);
				Destroy(mineCopy.gameObject);
				minePlaced = false;
				if(mineAmount == 0)
					allMinesExploded = true;
			}
			
		}*/
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
