using UnityEngine;
using System.Collections;

/// <summary>
/// Player heart box indicates where the player can be hit and tracks health.
/// </summary>
[AddComponentMenu("Health/Player Heart Box")]
public class PlayerHeartBox : HeartBox
{
    // How much time does it take to regenerate HP?
    public float RegenerationTime = 6.0f;
    private float _timeUntilRegen = 0.0f;

    // The particle effects that indicate player health change
    private ParticleSystem _damageEffect;
    private ParticleSystem _regenerationEffect;

    protected override void OnStart()
    {
        // NOTE: I CONSIDERED POOLING THESE TWO PARTICLE EFFECTS, BUT THAT DOESN'T REALLY MAKE SENSE SINCE WE CAN GET AWAY WITH JUST 1 INSTANCE OF EACH
        _damageEffect = ((GameObject)Instantiate(Resources.Load("Prefabs/Particles/Damage Effect"))).particleSystem;
        _damageEffect.transform.parent = transform;
        _regenerationEffect = ((GameObject)Instantiate(Resources.Load("Prefabs/Particles/Regeneration Effect"))).particleSystem;
        _regenerationEffect.transform.parent = transform;

    }

    // NOTE: WE SHOULD ONLY HAVE ONE PLAYERHEARTBOX IN THE SCENE, SO IT SHOULD BE OK TO DO THIS CHECK HERE
    void FixedUpdate()
    {
        if (GameManager.Player.IsDead && Controller.CharInput.AnyPressed) {
            GameManager.SpawnPlayer();
        }

    }

    public override void UpdateHealth(float elapsedTime)
    {
        // If we weren't hit this frame, try to regain health
        if (LastHit == null) {
            TryRegenHealth(elapsedTime);
            return;
        }

        // Adjust health, do particles, etc., while flying in the direction of the hit
        AdjustHealth(-LastHit.Damage, LastHit.KnockForce);
        LastHit.gameObject.SetActive(false);
        LastHit = null;

    }
    
    private void TryRegenHealth(float elapsedTime)
    {
        _timeUntilRegen -= elapsedTime;
        if ( (_timeUntilRegen <= 0) && (HitPoints < MaxHitPoints) && (HitPoints > 0) && !GameManager.Player.IsDead ) {
            AdjustHealth(1, Vector2.zero);
        }
        
    }

    private void AdjustHealth(int deltaHealth, Vector2 knockForce)
    {
        HitPoints += deltaHealth;
        HitPoints = Mathf.Clamp(HitPoints, 0, MaxHitPoints);
        
        // Hurt but not killed,
        if (deltaHealth < 0 && HitPoints > 0) {
            _damageEffect.transform.rotation = Quaternion.Euler(Vector3.up * (knockForce.x > 0 ? 180 : 0) ); 
            _damageEffect.Play();
            GameManager.MainCamera.AddShake(1.5f, new Vector3(10.0f, 10.0f, 5.0f), 175.0f, 250.0f);
            Controller.MakeDamaged(knockForce);

            // killed
        } else if (HitPoints <= 0) {
            GameManager.MainCamera.AddShake(1.5f, new Vector3(10.0f, 10.0f, 5.0f), 175.0f, 250.0f);
            Controller.OnDeath(knockForce);

            // healed
        } else if (deltaHealth > 0 && HitPoints == MaxHitPoints) {
            _regenerationEffect.Play();
        }

        _timeUntilRegen = RegenerationTime;

    }
}
