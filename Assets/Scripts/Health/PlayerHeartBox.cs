using UnityEngine;
using System.Collections;

/// <summary>
/// Player heart box indicates where the player can be hit and tracks health.
/// </summary>
[AddComponentMenu("Health/Player Character Heart Box")]
public class PlayerHeartBox : HeartBox
{
    public Transform HurtEffect;
    public Transform RegenEffect;

    // how fast do we regen HP?
    private float _regenTimer = 6.0f;
    // how long at this health?  how far along in regen?
    private float _timeUntilRegen = 0.0f;
    private NewmanAnimator _player;
    private CameraScrolling _camScroll;

    protected override void OnStart ()
    {
        _player = transform.root.GetComponent<NewmanAnimator> ();
        _camScroll = Camera.main.GetComponent<CameraScrolling> ();

    }

    void FixedUpdate ()
    {
        if (GameManager.Player.IsDead && (Controller.CharInput.InteractionPressed || Controller.CharInput.JumpPressed))
            GameManager.SpawnPlayer ();

    }

    public override void UpdateHealth (float elapsedTime)
    {
        // process attacks
        if (LastHit != null) {
            Vector2 knockForce;

            if (LastHit.MustCalculateKnockback) {
                if (transform.position.x < LastHit.transform.position.x)
                    knockForce.x = -1 * LastHit.KnockBackAmount;
                else
                    knockForce.x = 1 * LastHit.KnockBackAmount;

                knockForce.y = LastHit.KnockUpAmount;

                // just use provided.
            } else {
                knockForce.x = LastHit.KnockBackAmount;
                knockForce.y = LastHit.KnockUpAmount;

            }

            // adjust health, do particles, etc.
            // fly in direction of hit
            AdjustHealth (-1 * LastHit.DamageAmount, knockForce);
            Destroy (LastHit.gameObject);
            LastHit = null;

        } else {
            TryRegenHealth ();
        }

    }

    private void AdjustHealth (int deltaHealth, Vector2 knockForce)
    {
        _timeUntilRegen = 0.0f;
        HitPoints += deltaHealth;
        
        // hurt but not killed,
        if (deltaHealth < 0 && HitPoints > 0) {
            // TODO OBJECT POOL
            Transform effect = (Transform)Instantiate (HurtEffect, _player.transform.position, HurtEffect.rotation);

            if (knockForce.x > 0)
                effect.Rotate (new Vector3 (0, 180, 0));
            effect.parent = transform;
            Destroy (effect.gameObject, 2.0f);


            Controller.MakeDamaged (knockForce);
            // shake when hit
            _camScroll.AddShake (1.5f, new Vector3(10.0f, 10.0f, 5.0f), 175.0f, 250.0f );

            // killed
        } else if (HitPoints <= 0) {
            Controller.OnDeath (knockForce);
			_camScroll.AddShake (1.5f, new Vector3(10.0f, 10.0f, 5.0f), 175.0f, 250.0f );

            // healed
        } else if (deltaHealth > 0 && HitPoints == MaxHitPoints) {
            // TODO OBJECT POOL
            Transform effect = (Transform)Instantiate (RegenEffect, _player.transform.position, RegenEffect.rotation);
            effect.parent = transform;
            Destroy (effect.gameObject, 2.0f);
        }

    }

    private void TryRegenHealth ()
    {
        // try to regen actual HP
        _timeUntilRegen += Time.deltaTime;
        if ((_timeUntilRegen >= _regenTimer) && (HitPoints < MaxHitPoints) && (HitPoints > 0))
            AdjustHealth (1, new Vector2 (0.0f, 0.0f));

    }
}
