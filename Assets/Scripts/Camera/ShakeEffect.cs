using UnityEngine;
using System.Collections;

public class ShakeEffect
{
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
	// (175.0f, 250.0f) for a good hit effect
    private float _minSpeed;
    private float _maxSpeed;

    // spread of target (10.0f, 10.0f, 5.0f) for being hit.
    private float _maxXSpread;
    private float _maxYSpread;
    private float _maxZSpread;
	
    public ShakeEffect (float lifetime, float oldDistanceModifier, Vector3 spread, float minSpeed, float maxSpeed)
    {
        _pos = new Vector3 (0.0f, 0.0f, 0.0f);

        _startLifetime = lifetime;
        _lifetime = lifetime;

		_maxXSpread = spread.x;
		_maxYSpread = spread.y;
		_maxZSpread = spread.z;

		_minSpeed = minSpeed;
		_maxSpeed = maxSpeed;

        PickNewTarget ();

        OldDistanceModifier = oldDistanceModifier;

    }

    void PickNewTarget ()
    {
        float normalizedLifetime = (_lifetime / _startLifetime);

        _target = new Vector3 (Random.Range (-_maxXSpread, _maxXSpread) * normalizedLifetime, 
                               Random.Range (-_maxYSpread, _maxYSpread) * normalizedLifetime, 
                               Random.Range (-_maxZSpread, _maxZSpread) * normalizedLifetime);
        _speed = Random.Range (_minSpeed, _maxSpeed * normalizedLifetime);

    }
    
    public Vector3 Shake (float time)
    {
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
    
    public bool IsDone {
        get { return _lifetime <= 0.0f; } 
    }

}
