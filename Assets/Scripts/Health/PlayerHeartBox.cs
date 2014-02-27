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

	private PlayerCharacterAnimator _player;
	private CameraScrolling _camScroll;

	protected override void OnStart()
	{
		_player = transform.root.GetComponent<PlayerCharacterAnimator> ();
		_camScroll = Camera.main.GetComponent<CameraScrolling> ();
	}

	void FixedUpdate()
	{
		if (Controller.CurrentState.IsName("Base Layer.Waiting For Respawn") && (Controller.CharInput.InteractionPressed || Controller.CharInput.JumpPressed) )
			GameManager.SpawnPlayer ();
	}

	public override void UpdateHealth(float elapsedTime) 
	{
		// process attacks
		if (LastHit != null)
        {
			Vector2 dirToPlayer = new Vector2( transform.position.x - LastHit.transform.position.x, transform.position.y - LastHit.transform.position.y);

			if(dirToPlayer.x < 0)
				dirToPlayer.x = -1;
			else if(dirToPlayer.x > 0)
				dirToPlayer.x = 1;

			Vector2 knockForce = new Vector2(LastHit.KnockBackAmount * dirToPlayer.x, LastHit.KnockUpAmount);

			Debug.Log ("Knocking " + LastHit.KnockBackAmount + " dir " + dirToPlayer.x);

			// fly in direction of hit
			//Controller.VerticalSpeed = Mathf.Sqrt(2 * Controller.Settings.JumpHeight * Controller.Settings.Gravity);
			//Controller.HorizontalSpeed = Controller.Settings.MaxHorizontalSpeed * (Hitbox.HorizontalDir > 0 ? 1.0f : -1.0f);
			// adjust health, do particles, etc.
			AdjustHealth (-1 * LastHit.DamageAmount, knockForce );
			Destroy (LastHit.gameObject);
			LastHit = null;

		}
		else
		{
			TryRegenHealth ();
		}
	}

	private void AdjustHealth(int deltaHealth, Vector2 knockForce)
	{
		_timeUntilRegen = 0.0f;
		HitPoints += deltaHealth;
		
		// hurt but not killed,
		if (deltaHealth < 0 && HitPoints > 0) {
			// TODO OBJECT POOL
			Transform effect = (Transform) Instantiate(HurtEffect, _player.transform.position, HurtEffect.rotation);

			if(knockForce.x > 0)
				effect.Rotate(new Vector3(0, 180, 0));
			effect.parent = transform;
			Destroy(effect.gameObject, 2.0f);


			Controller.MakeDamaged (knockForce);
			// shake when hit
			_camScroll.AddShake();

		// killed
		} else if (HitPoints <= 0) {
			Controller.OnDeath (knockForce);
			_camScroll.AddShake();

		// healed
		} else if(deltaHealth > 0 && HitPoints == MaxHitPoints) {
			// TODO OBJECT POOL
			Transform effect = (Transform) Instantiate(RegenEffect, _player.transform.position, RegenEffect.rotation);
			effect.parent = transform;
			Destroy(effect.gameObject, 2.0f);
		}

	}

	private void TryRegenHealth()
	{
		// try to regen actual HP
		_timeUntilRegen += Time.deltaTime;
		if( (_timeUntilRegen >= _regenTimer) && (HitPoints < MaxHitPoints)  && (HitPoints > 0) )
			AdjustHealth(1, new Vector2(0.0f, 0.0f) );
	}
}
