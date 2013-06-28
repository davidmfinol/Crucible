using UnityEngine;
using System.Collections;

public class Mine : Weapon {
	
	public Transform mine;
	public Transform explosion;	
	
	private bool minePlaced = false;
	
	ArrayList allMines = new ArrayList();
	
	// Use this for initialization
	void Start () {
		//PlayerCharacterFSM playerController = Player.GetComponent<PlayerCharacterFSM>();
	}
	
	// Update is called once per frame
	void Update () {
		if(Input.GetKeyDown(KeyCode.N)){
			//MonoBehaviour.Instantiate(mine, spawnPosition, Quaternion.identity);
		}
	}
	
    public virtual void ActivateAttack(int attackID)
    {
		Debug.Log (" Mine Attack ");
		if(!minePlaced){
			//MonoBehaviour.Instantiate(mine, spawnPosition, Quaternion.identity);
		}
	}
	
    public override void Deactivate()
    {
		
	}
	
    //public override void ActivateHitBox(bool activate)
    //{
	//	
	//}
		
	
}
