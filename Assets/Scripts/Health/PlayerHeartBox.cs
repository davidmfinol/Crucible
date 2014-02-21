using UnityEngine;
using System.Collections;

/// <summary>
/// Player heart box indicates where the player can be hit and tracks health.
/// </summary>
[AddComponentMenu("Health/Player Character Heart Box")]
public class PlayerHeartBox : HeartBox
{
	// The last hitbox we took this frame, or null if no hit this frame
	private HitBox _hitbox = null;

	// how long do we blink when hurt and healed?  which do we choose based on what happened to us last?
	// how fast do we regen HP?
	private int _lastHealthAdjust = 0;
	private float _hurtBlinkTime = 2.0f;
	private float _healBlinkTime = 0.3f;
	private float _regenTimer = 6.0f;
	// how long at this health?  how far along in regen?
	private float _timeAtHealth = 0.0f;
	private float _timeUntilRegen = 0.0f;
	
	// Used to control the shader settings for the player character
	private PlayerCharacterShader _shader;


	protected override void OnStart()
	{
		_shader = transform.parent.GetComponent<PlayerCharacterShader>();
		Controller.ModifyState = UpdateHealth;
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
			// adjust health, change shaders, etc.
			AdjustHealth (-1 * _hitbox.DamageAmount, knockForce );
			Destroy (_hitbox.gameObject);
			_hitbox = null;

		} else
		{
			BlinkShield();
			TryRegenHealth ();
		}
	}

	private void AdjustHealth(int deltaHealth, Vector2 knockForce)
	{
		int currHealth = HitPoints;
		HitPoints += deltaHealth;
		int newHealth = HitPoints;
	
		_lastHealthAdjust = deltaHealth;
		_timeAtHealth = 0.0f;
		_timeUntilRegen = 0.0f;


		// hurt but not killed,
		if (deltaHealth < 0 && HitPoints > 0) {
			Controller.MakeDamaged (knockForce);

			// apply shield effect
			if(!CharShader.CurrentlyHidden)
				CharShader.SetShader (PlayerCharacterShader.ShaderType.Shader_Hurt);

		// killed
		} else if (HitPoints == 0) {
			Controller.OnDeath ();

			if(!CharShader.CurrentlyHidden)
				CharShader.SetShader (PlayerCharacterShader.ShaderType.Shader_Default);

		// hurt or healed
		} else if(newHealth != currHealth) {
			if (HitPoints > 1 && !CharShader.CurrentlyHidden)
				CharShader.SetShader (PlayerCharacterShader.ShaderType.Shader_Unhurt);
			else if (HitPoints == 1 && !CharShader.CurrentlyHidden)
				CharShader.SetShader (PlayerCharacterShader.ShaderType.Shader_Hurt);
		
		}

	}

	private void BlinkShield()
	{
		_timeAtHealth += Time.deltaTime;

		// blink shield based on whether hurt or healed recently
		if ((_lastHealthAdjust < 0) && (_timeAtHealth >= _hurtBlinkTime) && !CharShader.OnDefaultShader () && !CharShader.CurrentlyHidden) {
			CharShader.SetShader (PlayerCharacterShader.ShaderType.Shader_Default);

		} else if ((_lastHealthAdjust > 0) && (_timeAtHealth >= _healBlinkTime) && !CharShader.OnDefaultShader () && !CharShader.CurrentlyHidden) {
			CharShader.SetShader (PlayerCharacterShader.ShaderType.Shader_Default);

		}
	}

	private void TryRegenHealth()
	{
		// try to regen actual HP
		_timeUntilRegen += Time.deltaTime;
		if( (_timeUntilRegen >= _regenTimer) && (HitPoints < MaxHitPoints)  && (HitPoints > 0) )
			AdjustHealth(1, new Vector2(0.0f, 0.0f) );
	}


	public PlayerCharacterShader CharShader
	{
		get { return _shader; }
	}
}
