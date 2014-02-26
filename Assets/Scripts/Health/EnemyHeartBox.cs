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
			Controller.OnStealthDeath( new Vector2(0.0f, 0.0f)  );
		else if(hitbox.CanStun)
			Controller.MecanimAnimator.SetBool("Stun", true);
        else if(hitbox.DoesFloat)
            Controller.ActivateFloat();
        else
        {
			Vector2 dirToPlayer = new Vector2( transform.position.x - hitbox.transform.position.x, transform.position.y - hitbox.transform.position.y);

			if(dirToPlayer.x < 0)
				dirToPlayer.x = -1;
			else if(dirToPlayer.x > 0)
				dirToPlayer.x = 1;

            HitPoints -= hitbox.DamageAmount;
            if(HitPoints <= 0)
				Controller.OnDeath( new Vector2(hitbox.KnockBackAmount * dirToPlayer.x, hitbox.KnockUpAmount) );

        }

		TimeSinceHit = 0;
    }
}
