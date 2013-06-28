using UnityEngine;
using System.Collections;

public class Mine : Weapon {
	
	public Transform explosion;	
	
	// Use this for initialization
	void Start () {
		
	}
	
	// Update is called once per frame
	void Update () {
		if(Input.GetKeyDown(KeyCode.N)){
			
		}
	}
	
    public virtual void ActivateAttack(int attackID)
    {
		
	}
	
    public override void Deactivate()
    {
		
	}
	
}
