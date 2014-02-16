using UnityEngine;
using System.Collections;

/// <summary>
/// Enemy heart box keeps track of an enemy's health and indicates where it can be hit.
/// </summary>
[AddComponentMenu("Health/Enemy Heart Box")]
public class EnemyHeartBox : HeartBox
{
	// We disable attacks hitting too frequently
    public float TimeSinceHit = 0;
	public float TimeBetweenHits = 1;

	// We need to track the awareness of the enemy
	private EnemyAI _ai;


	protected override void OnStart()
	{
		_ai = transform.parent.GetComponent<EnemyAI> ();
	}
	
	void Update()
	{
		TimeSinceHit+= Time.deltaTime;
	}

    protected override void Interpret(HitBox hitbox)
    {
		if (TimeSinceHit < TimeBetweenHits)
			return;

		if(hitbox.CanStealthKill && _ai.Awareness == EnemyAI.AwarenessLevel.Unaware)
			Controller.OnDeath();
		else if(hitbox.CanStun)
			Controller.MecanimAnimator.SetBool("Stun", true);

		TimeSinceHit = 0;
    }
}
