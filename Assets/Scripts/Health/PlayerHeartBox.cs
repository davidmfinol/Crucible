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

	// The last hitbox we took this frame, or null if no hit this frame
	private HitBox _hitbox = null;

	// how fast do we regen HP?
	private float _regenTimer = 6.0f;
	// how long at this health?  how far along in regen?
	private float _timeUntilRegen = 0.0f;

	private PlayerCharacterAnimator _player;


	protected override void OnStart()
	{
		Controller.ModifyState = UpdateHealth;
		_player = transform.root.GetComponent<PlayerCharacterAnimator> ();
	}

	void FixedUpdate()
	{
		if (Controller.CurrentState.IsName("Base Layer.Waiting For Respawn") && (Controller.CharInput.InteractionPressed || Controller.CharInput.JumpPressed) )
			GameManager.SpawnPlayer ();
	}
	
	protected override void Interpret(HitBox hitbox)
	{
		_hitbox = hitbox;
	}
	public void UpdateHealth(float elapsedTime) 
	{
		// process attacks
		if (_hitbox != null)
        {
			Vector2 knockForce = new Vector2(_hitbox.KnockBackAmount * _hitbox.HorizontalDir, _hitbox.KnockUpAmount);

			// fly in direction of hit
			//Controller.VerticalSpeed = Mathf.Sqrt(2 * Controller.Settings.JumpHeight * Controller.Settings.Gravity);
			//Controller.HorizontalSpeed = Controller.Settings.MaxHorizontalSpeed * (_hitbox.HorizontalDir > 0 ? 1.0f : -1.0f);
			// adjust health, do particles, etc.
			AdjustHealth (-1 * _hitbox.DamageAmount, knockForce );
			Destroy (_hitbox.gameObject);
			_hitbox = null;

		} else
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
			Controller.MakeDamaged (knockForce);

			// TODO OBJECT POOL
			Transform effect = (Transform) Instantiate(HurtEffect, _player.transform.position, HurtEffect.rotation);
			if(_hitbox.HorizontalDir > 0)
				effect.Rotate(new Vector3(0, 180, 0));
			effect.parent = transform;
			Destroy(effect.gameObject, 2.0f);


		// killed
		} else if (HitPoints == 0) {
			Controller.OnDeath ();

		// hurt or healed
		} else if(deltaHealth != 0 && HitPoints == MaxHitPoints) {

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
