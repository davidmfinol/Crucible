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

	private static List<GameObject> allPlacedMines = new List<GameObject>(); // FIXME: THIS SHOULDN'T BE STATIC
	private bool _minesCurrentlyExploding = false;
	private float _mineLastPlacedTime;
	

    public override void ActivateAttack(float attackID)
    {
		if(attackID == 0)
			PlaceMine();
		else 
			DetonateMines();
	}
	
	public void PlaceMine()
	{
        // Don't place a mine if we've placed one within a past second, or if they're already exploding
		if( Time.time - _mineLastPlacedTime < 1 || _minesCurrentlyExploding)
			return;
				
        // Create the new mine
		Vector3 minePos = new Vector3(transform.position.x, transform.position.y, transform.position.z);// + 1.5f);
		Transform mineCopy = (Transform) Instantiate(mineObject, minePos, Quaternion.identity);
		mineCopy.animation["MineAboutToExplode"].speed = 2.0f;
		allPlacedMines.Add(mineCopy.gameObject);
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
            // TODO: SET UP HITBOX
			Instantiate(explosion2, ((GameObject) allPlacedMines[i]).transform.position, Quaternion.identity);		
			Destroy((GameObject) allPlacedMines[i]);
		}
		
		allPlacedMines = new List<GameObject>();

		_minesCurrentlyExploding = false;
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
