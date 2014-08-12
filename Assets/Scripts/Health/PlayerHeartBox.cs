using UnityEngine;
using System.Collections;

/// <summary>
/// Player heart box indicates where the player can be hit and tracks health.
/// </summary>
[AddComponentMenu("Health/Player Character Heart Box")]
public class PlayerHeartBox : HeartBox
{
    // TODO: OBJECT POOL
    public Transform HurtEffect;
    public Transform RegenEffect;

    // How fast do we regen HP?
    private float _regenTimer = 6.0f;

    // How long at this health?  how far along in regen?
    private float _timeUntilRegen = 0.0f;

    // NOTE: WE SHOULD ONLY HAVE ONE PLAYERHEARTBOX IN THE SCENE, SO IT SHOULD BE OK TO DO THIS CHECK HERE
    void FixedUpdate()
    {
        if (GameManager.Player.IsDead && Controller.CharInput.AnyPressed) {
            GameManager.SpawnPlayer();
        }

    }

    public override void UpdateHealth(float elapsedTime)
    {
        // Process attacks
        if (LastHit != null) {
            Vector2 knockForce;

            if (LastHit.MustCalculateKnockback) {
                if (transform.position.x < LastHit.transform.position.x) {
                    knockForce.x = -1 * LastHit.KnockBackAmount;
                } else {
                    knockForce.x = 1 * LastHit.KnockBackAmount;
                }

                knockForce.y = LastHit.KnockUpAmount;

                // just use provided.
            } else {
                knockForce.x = LastHit.KnockBackAmount;
                knockForce.y = LastHit.KnockUpAmount;

            }

            // adjust health, do particles, etc., while flying in the direction of the hit
            AdjustHealth(-1 * LastHit.DamageAmount, knockForce);
            Destroy(LastHit.gameObject);
            LastHit = null;

        } else {
            TryRegenHealth();
        }

    }

    private void AdjustHealth(int deltaHealth, Vector2 knockForce)
    {
        _timeUntilRegen = 0.0f;
        HitPoints += deltaHealth;
        
        // Hurt but not killed,
        if (deltaHealth < 0 && HitPoints > 0) {
            // TODO OBJECT POOL
            Transform effect = (Transform)Instantiate(HurtEffect, GameManager.Player.transform.position, HurtEffect.rotation);

            if (knockForce.x > 0) {
                effect.Rotate(new Vector3(0, 180, 0));
            }
            effect.parent = transform;
            Destroy(effect.gameObject, 2.0f);

            Controller.MakeDamaged(knockForce);
            // shake when hit
            GameManager.MainCamera.AddShake(1.5f, new Vector3(10.0f, 10.0f, 5.0f), 175.0f, 250.0f);

            // killed
        } else if (HitPoints <= 0) {
            GameManager.MainCamera.AddShake(1.5f, new Vector3(10.0f, 10.0f, 5.0f), 175.0f, 250.0f);
            Controller.OnDeath(knockForce * 1000);

            // healed
        } else if (deltaHealth > 0 && HitPoints == MaxHitPoints) {
            // TODO OBJECT POOL
            Transform effect = (Transform)Instantiate(RegenEffect, GameManager.Player.transform.position, RegenEffect.rotation);
            effect.parent = transform;
            Destroy(effect.gameObject, 2.0f);
        }

    }

    private void TryRegenHealth()
    {
        // try to regen actual HP
        _timeUntilRegen += Time.deltaTime;
        if ((_timeUntilRegen >= _regenTimer) && (HitPoints < MaxHitPoints) && (HitPoints > 0)) {
            AdjustHealth(1, new Vector2(0.0f, 0.0f));
        }

    }
}
