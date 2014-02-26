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
	private CameraScrolling _camScroll;

	protected override void OnStart()
	{
		Controller.ModifyState = UpdateHealth;
		_player = transform.root.GetComponent<PlayerCharacterAnimator> ();
		_camScroll = Camera.main.GetComponent<CameraScrolling> ();
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
			Vector2 dirToPlayer = new Vector2( transform.position.x - _hitbox.transform.position.x, transform.position.y - _hitbox.transform.position.y);

			if(dirToPlayer.x < 0)
				dirToPlayer.x = -1;
			else if(dirToPlayer.x > 0)
				dirToPlayer.x = 1;

			Vector2 knockForce = new Vector2(_hitbox.KnockBackAmount * dirToPlayer.x, _hitbox.KnockUpAmount);

			Debug.Log ("Knocking " + _hitbox.KnockBackAmount + " dir " + dirToPlayer.x);

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
