using UnityEngine;
using System.Collections;

/// <summary>
/// Heart box receives hits from hitboxes and keeps track of health.
/// </summary>
[RequireComponent(typeof(Collider))]
[AddComponentMenu("Health/Heartbox")]
public abstract class HeartBox : MonoBehaviour
{
	public TeamAllegiance Allegiance;
	public int HitPoints;
	public int MaxHitPoints = 2;
	
	// We need to be able to call OnDeath() as necessary
	private CharacterAnimator _controller;


	void Start()
	{
		HitPoints = MaxHitPoints;

		_controller = transform.parent.GetComponent<CharacterAnimator>();

		OnStart ();
	}
	protected virtual void OnStart() { } // Child classes may override
	
	void OnTriggerStay(Collider other)
	{
		HitBox attackData = other.GetComponent<HitBox>();
		if (attackData != null && attackData.enabled && attackData.Allegiance != this.Allegiance)
			Interpret(attackData);
	}
	protected virtual void Interpret(HitBox hitbox)
	{
		// Child classes should override
	}


	public CharacterAnimator Controller
	{
		get { return _controller; }
	}
}