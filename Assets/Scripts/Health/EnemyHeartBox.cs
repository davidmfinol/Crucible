using UnityEngine;
using System.Collections;

/// <summary>
/// Enemy heart box keeps track of an enemy's health and indicates where it can be hit.
/// </summary>
[AddComponentMenu("Health/Enemy Heart Box")]
public class EnemyHeartBox : HeartBox
{
    // We disable attacks hitting too frequently
    public float TimeBetweenHits = 1;
    public float _timeSinceHit = 0;

    // We need to track the awareness of the enemy
    private EnemyAI _ai;

    protected override void OnStart()
    {
        _ai = transform.parent.GetComponent<EnemyAI>();

    }

    public override void UpdateHealth(float elapsedTime)
    {
        _timeSinceHit += elapsedTime;
        if (_timeSinceHit < TimeBetweenHits || LastHit == null) {
            return;
        }

        if (LastHit.CanStealthKill && _ai.Awareness == EnemyAI.AwarenessLevel.Unaware) {
            Controller.OnStealthDeath();
        } else if (LastHit.DoesVETO) {
            // TODO: 
        } else if (LastHit.DoesFloat) {
            Controller.DoFloat(LastHit.Damage);
        } 

        LastHit = null;
        _timeSinceHit = 0;
    }

}
