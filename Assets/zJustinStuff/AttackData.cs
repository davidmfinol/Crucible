using UnityEngine;
using System.Collections;


public enum WeaponType {
	Weapon_None = 0,
	Weapon_OlympusMelee = 1
	
};


public class AttackData : MonoBehaviour {
	
	private float _radius = 0.0f;
	public GameObject FromObject = null; 
	public WeaponType FromWeaponType = 0;
	public float HorizontalDir = 0;
	public int DamageAmount = 0;
	public bool CanStun = false;
	public bool CanStealthKill = false;
	public float DestroyTime = 0.0f;

	public void MakeOlympusMelee(GameObject from, float horizontalDir) {
		Radius = 2.0f;
		FromObject = from;
		FromWeaponType = WeaponType.Weapon_OlympusMelee;
		HorizontalDir = horizontalDir;
		DamageAmount = 1;
		CanStun = false;
		DestroyTime = 0.1f;
	
	}

	void Update() {
		DestroyTime -= Time.deltaTime;

		if (DestroyTime <= 0.0f)
			Destroy (this.gameObject);

	}

	// Generic Properties
	public float Radius
	{
		get { return _radius; }
		set { 
			_radius = value; 
			GetComponent<SphereCollider>().radius = value / 2.0f; 
			transform.localScale = new Vector3(value, value, value);
		}
	}

}