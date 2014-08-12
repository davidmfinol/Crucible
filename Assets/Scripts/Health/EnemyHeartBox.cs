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
        _ai = transform.parent.GetComponent<EnemyAI>();

    }

    public override void UpdateHealth(float elapsedTime)
    {
        TimeSinceHit += elapsedTime;
        if (TimeSinceHit < TimeBetweenHits || LastHit == null) {
            return;
        }

        if (LastHit.CanStealthKill && _ai.Awareness == EnemyAI.AwarenessLevel.Unaware) {
            Controller.OnStealthDeath();
        } else if (LastHit.CanStun) {
            Controller.MecanimAnimator.SetBool("Stun", true);
        } else if (LastHit.DoesFloat) {
            Controller.DoFloat(LastHit.DamageAmount);
        } else {
            Vector2 dirToPlayer = new Vector2(transform.position.x - LastHit.transform.position.x, transform.position.y - LastHit.transform.position.y);

            if (dirToPlayer.x < 0) {
                dirToPlayer.x = -1;
            } else if (dirToPlayer.x > 0) {
                dirToPlayer.x = 1;
            }

            HitPoints -= LastHit.DamageAmount;

            if (HitPoints <= 0) {
                Controller.OnDeath(new Vector2(LastHit.KnockBackAmount * dirToPlayer.x, LastHit.KnockUpAmount));
            }

        }

        LastHit = null;
        TimeSinceHit = 0;

    }
}
