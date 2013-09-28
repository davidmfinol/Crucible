using UnityEngine;
using System.Collections;

/// <summary>
/// Player character defines the motion for the character that the player controls.
/// </summary>
[RequireComponent(typeof(PlayerCharacterSettings))]
[RequireComponent(typeof(PlayerCharacterInput))]
[AddComponentMenu("Character/Player Character/Player Character Animator")]
public class PlayerCharacterAnimator : CharacterAnimator
{
    public void Spawn()
    {
		Heart.HitPoints = Heart.MaxHitPoints;
        transform.position = Settings.SpawnPoint.transform.position;
    }
				
	protected override void Die(float elapsedTime)
	{
		MecanimAnimator.SetBool(Settings.Die, false);
		
		if(MecanimAnimator.GetCurrentAnimatorStateInfo(0).normalizedTime > 0.9)
        	Spawn();
	}
	
	protected override void Update()
	{
		base.Update();
		
		//TODO ACTIVATE WEAPONS AS NECESSARY
	}
	
	/* TODO: DETERMINE HOW WE PICK STUFF UP
    public override void OnControllerColliderHit(ControllerColliderHit hit)
    {
        base.OnControllerColliderHit(hit);

        // We can pick up items
        if (hit.gameObject.tag == "Item")
        {
            HasPackage = true; // TODO: seperate script for inventory
            Destroy(hit.gameObject);
        }
    }
    */
	
	public new PlayerCharacterSettings Settings
	{
		get { return (PlayerCharacterSettings) base.Settings; }
	}
	public new PlayerCharacterInput CharInput
	{
		get { return (PlayerCharacterInput) base.CharInput; }
	}
}
