using UnityEngine;
using System.Collections;

public enum TeamAllegiance
{
    Player = 0,
    Enemies = 1,
    Explosions = 2
}
;

/// <summary>
/// Hitbox keeps data about an attack and transfers it to a heartbox.
/// </summary>
[RequireComponent(typeof(Collider))]
[RequireComponent(typeof(Rigidbody))]
[AddComponentMenu("Health/HitBox")]
public class HitBox : MonoBehaviour
{
    public TeamAllegiance Allegiance;
    public GameObject FromObject;
    public WeaponType FromWeapon;         // used to reduce our pipe durability on a successful hit.
    public int DamageAmount;
    public bool MustCalculateKnockback;   // some attacks have a builtin direction and some, like explosions, must create one.
    // for each thing that they hit.
    public float KnockBackAmount;
    public float KnockUpAmount;
    public bool CanStun;
    public bool CanStealthKill;
    public bool DoesFloat;
    public float DestroyTime = Mathf.NegativeInfinity;
    private float _radius = 0.0f;
    
    public void MakeOlympusMelee (GameObject from, float HorizontalDir)
    {
        Allegiance = TeamAllegiance.Enemies;
        FromObject = from;
        DamageAmount = 1;
        MustCalculateKnockback = false;
        KnockBackAmount = HorizontalDir * 15.0f;   // give proper direction
        KnockUpAmount = 10.0f;
        CanStun = false;
        DestroyTime = 0.1f;
        Radius = 2.0f;

    }

    public void MakeBabyBotExplosion (GameObject from, float HorizontalDir)
    {
        Allegiance = TeamAllegiance.Explosions;
        FromObject = from;
        DamageAmount = 5;
        MustCalculateKnockback = false;
        KnockBackAmount = HorizontalDir * 20.0f;
        KnockUpAmount = 15.0f;
        CanStun = false;
        DestroyTime = 0.1f;
        Radius = 5.0f;

    }

    public void MakePlayerStealthKill (GameObject from)
    {
        Allegiance = TeamAllegiance.Player;
        FromObject = from;
        DamageAmount = 1;
        MustCalculateKnockback = false;
        KnockBackAmount = 0.0f;
        KnockUpAmount = 0.0f;
        CanStun = false;
        CanStealthKill = true;
        DestroyTime = 0.1f;
        Radius = 2.0f;

    }
    
    void Update ()
    {
        if (DestroyTime == Mathf.NegativeInfinity)
            return;

        DestroyTime -= Time.deltaTime;
        
        if (DestroyTime <= 0.0f)
            Destroy (this.gameObject);

    }

    public float Radius {
        get { return _radius; }
        set { 
            _radius = value; 
            SphereCollider coll = GetComponent<SphereCollider> ();
            if (coll != null)
                coll.radius = value / 2.0f; 
            transform.localScale = new Vector3 (value, value, value);
        }
    }
    
}