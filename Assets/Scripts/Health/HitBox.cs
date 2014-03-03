using UnityEngine;
using System.Collections;

public enum TeamAllegiance
{
	Player = 0,
	Enemies = 1,
	Explosions = 2
};

/// <summary>
/// Hitbox keeps data about an attack and transfers it to a heartbox.
/// </summary>
[RequireComponent(typeof(Collider))]
[RequireComponent(typeof(Rigidbody))]
[AddComponentMenu("Health/HitBox")]
public class HitBox : MonoBehaviour
{
	public TeamAllegiance Allegiance;
	public GameObject FromObject = null; 
	public int DamageAmount = 0;
	public float KnockBackAmount = 0;
	public float KnockUpAmount = 0;
	public bool CanStun = false;
	public bool CanStealthKill = false;
    public bool DoesFloat = false;
	public float DestroyTime = Mathf.NegativeInfinity;
	
	private float _radius = 0.0f;
	
	
	public void MakeOlympusMelee(GameObject from)
	{
		Allegiance = TeamAllegiance.Enemies;
		FromObject = from;
		DamageAmount = 1;
		KnockBackAmount = 15.0f;
		KnockUpAmount = 10.0f;
		CanStun = false;
		DestroyTime = 0.1f;
		Radius = 2.0f;
	}

    public void MakeBabyBotExplosion(GameObject from)
    {
        Allegiance = TeamAllegiance.Explosions;
        FromObject = from;
        DamageAmount = 5;
		KnockBackAmount = 20.0f;
		KnockUpAmount = 15.0f;
		CanStun = false;
		DestroyTime = 0.1f;
		Radius = 5.0f;
    }

	public void MakePlayerStealthKill(GameObject from)
	{
		Allegiance = TeamAllegiance.Player;
		FromObject = from;
		DamageAmount = 1;
		KnockBackAmount = 0.0f;
		KnockUpAmount = 0.0f;
		CanStun = false;
		CanStealthKill = true;
		DestroyTime = 0.1f;
		Radius = 2.0f;

	}
	
	void Update()
	{
        if(DestroyTime == Mathf.NegativeInfinity)
            return;

		DestroyTime -= Time.deltaTime;
		
		if (DestroyTime <= 0.0f)
			Destroy (this.gameObject);
	}
	
	// Generic Properties
	public float Radius
	{
		get { return _radius; }
		set
		{ 
			_radius = value; 
			SphereCollider coll = GetComponent<SphereCollider>();
			if(coll != null)
				coll.radius = value / 2.0f; 
			transform.localScale = new Vector3(value, value, value);
		}
	}
	
}