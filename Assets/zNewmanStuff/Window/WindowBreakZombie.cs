using UnityEngine;
using System.Collections;

[RequireComponent(typeof(Collider))]
public class WindowBreakEnemy : MonoBehaviour {
	
    public Transform Enemy;
	private Transform EnemyInGame;
	
	private int AnimationSteps = 2;
	private float moveDistance = 1.5f;
	private float movePerFrame;
	
	private bool isEnemyBreakoutWindow; // = false;	
	private bool isBroken = false;
	
	public float EnemyChance = 0.15f;

	void Awake () {
		if(Random.value < EnemyChance)
			isEnemyBreakoutWindow = true;
		else
			isEnemyBreakoutWindow = false;		
	}
	
	// Use this for initialization
	void Start () {
		movePerFrame = moveDistance / AnimationSteps;
	}
	
	// Update is called once per frame
	void Update () {
		if(isBroken){
			Vector3 newZombPos = new Vector3(EnemyInGame.transform.position.x, EnemyInGame.transform.position.y, EnemyInGame.transform.position.z - movePerFrame);
			EnemyInGame.transform.position = newZombPos;
			AnimationSteps--;
			if(AnimationSteps == 0){
				isBroken = false;	
			}
		}
		
	}
	
    void OnTriggerStay(Collider other){	
		
		if(isEnemyBreakoutWindow && !isBroken && other.tag.Equals("Player")){
			isBroken = true;
			isEnemyBreakoutWindow = false;
			this.transform.FindChild("Glass1").gameObject.SetActive(false);
			this.transform.FindChild("Glass3").gameObject.SetActive(true);	
			// Vector3 spawnPosition = this.gameObject.transform.position;
			Vector3 spawnPosition = this.transform.FindChild("Glass1").position;
			spawnPosition.z += 1;
			spawnPosition.y += 1;
			//MonoBehaviour.Instantiate(Enemy, spawnPosition, Quaternion.identity);
			EnemyInGame = (Transform) Instantiate(Enemy, spawnPosition, Quaternion.identity);
			//this.transform.GetComponent<EnemyCollider>().startCollisionTimer(zombCopy, 2.0f);			
			//Vector3 newZombPos = new Vector3(zombCopy.transform.position.x, zombCopy.transform.position.y, zombCopy.transform.position.z - 1);
			//zombCopy.transform.position = newZombPos;
		}
	}	
	
	public bool willEnemyPopOut(){
		return isEnemyBreakoutWindow;	
	}
	
}
