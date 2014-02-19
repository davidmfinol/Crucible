using UnityEngine;
using System.Collections;

public enum TeamAllegiance
{
	Player = 0,
	Enemies = 1,
	Explosions = 2
};

public enum WeaponType
{
	Weapon_None = 0,
	Weapon_Melee = 1,
	Weapon_Trap = 2,
	Weapon_Projectile = 3
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
	public WeaponType FromWeaponType = 0;
	public float HorizontalDir = 0;
	public int DamageAmount = 0;
	public bool CanStun = false;
	public bool CanStealthKill = false;
    public bool DoesFloat = false;
	public float DestroyTime = Mathf.NegativeInfinity;
	
	private float _radius = 0.0f;
	
	
	public void MakeOlympusMelee(GameObject from, float horizontalDir)
	{
		Allegiance = TeamAllegiance.Enemies;
		FromObject = from;
		FromWeaponType = WeaponType.Weapon_Melee;
		HorizontalDir = horizontalDir;
		DamageAmount = 1;
		CanStun = false;
		DestroyTime = 0.1f;
		Radius = 2.0f;
	}

    public void MakeBabyBotExplosion(GameObject from)
    {
        Allegiance = TeamAllegiance.Explosions;
        FromObject = from;
        FromWeaponType = WeaponType.Weapon_Trap;
        DamageAmount = 5;
		Radius = 5.0f;
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