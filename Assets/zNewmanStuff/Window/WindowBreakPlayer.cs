using UnityEngine;
using System.Collections;

[RequireComponent(typeof(Collider))]
public class WindowBreakPlayer : MonoBehaviour {
	
    public Transform Enemy;	
	
	private bool isBroken = false;
	public float EnemyChance = 0.05f;
	
	// Use this for initialization
	void Start () {		
		isBroken = this.transform.parent.GetComponent<WindowBreakEnemy>().willEnemyPopOut();
	}
	
	// Update is called once per frame
	void Update () {
		
	}
	
    void OnTriggerStay(Collider other){
		if(!isBroken){
			if(other.gameObject.layer == 9 || other.gameObject.layer == 8){	
				if(other.gameObject.GetComponent<HitBox>().Allegiance == BoxAllegiance.Player){
				//if(other.tag.Equals("Player")){
					this.gameObject.SetActive(false);
					this.transform.parent.FindChild("Glass3").gameObject.SetActive(true);
					randomSpawner();
					isBroken = true;		
				}
			}	
		}
	}	
	
	void randomSpawner(){  // currently just spawns Enemies
		if(Random.value < EnemyChance){
			Vector3 spawnPosition = this.gameObject.transform.position;
			spawnPosition.z += 1;
			spawnPosition.y += 1;
			MonoBehaviour.Instantiate(Enemy, spawnPosition, Quaternion.identity);
			this.transform.parent.GetComponent<EnemyCollider>().startCollisionTimer(Enemy, 0.1f);
		}
	}
}

