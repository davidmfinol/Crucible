using UnityEngine;
using System.Collections;

public class ShakeEffect {
	// saved distance modifier from camera
	public float OldDistanceModifier;

	// position, target, and how fast to get to target.
	// if close enough, choose new target. 
	private Vector3 _pos;
	private Vector3 _target;
	private float _speed;

	// lifetime / start lifetime used for scaling of ranges/speeds
	private float _lifetime = 0.0f;
	private float _startLifetime = 0.0f;

	// how close is good enough?
	private const float _closeEnough = 3.0f;

	// always have a minspeed, up to a max speed
	private const float _minSpeed = 175.0f;
	private const float _maxSpeed = 250.0f;

	// spread of target
	private const float _maxXSpread = 10.0f;
	private const float _maxYSpread = 10.0f;
	private const float _maxZSpread = 5.0f;

	public ShakeEffect (float lifetime, float oldDistanceModifier) {
		_pos = new Vector3 (0.0f, 0.0f, 0.0f);

		_startLifetime = lifetime;
		_lifetime = lifetime;

		PickNewTarget ();

		OldDistanceModifier = oldDistanceModifier;
	}

	void PickNewTarget() {
		float normalizedLifetime = (_lifetime / _startLifetime);

		_target = new Vector3 (Random.Range (-_maxXSpread, _maxXSpread) * normalizedLifetime, 
		                       Random.Range (-_maxYSpread, _maxYSpread) * normalizedLifetime, 
		                       Random.Range (-_maxZSpread, _maxZSpread) * normalizedLifetime);
		_speed = Random.Range(_minSpeed, _maxSpeed * normalizedLifetime);

	}

	public bool IsDone() {
		return(_lifetime <= 0.0f);

	}
	
	public Vector3 Shake (float time) {
		// if close enough, pick new, otherwise, get closer
		Vector3 dist = _target - _pos;
		float d = dist.magnitude;

		if (d <= _closeEnough) {
			PickNewTarget ();

		} else {
			Vector3 dir = dist.normalized;

			_pos += (dir * (_speed * time));

		}

		_lifetime -= time;

		return _pos;

	}

}
