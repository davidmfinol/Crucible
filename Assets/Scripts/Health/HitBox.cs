using UnityEngine;
using System.Collections;

/// <summary>
/// Hitbox keeps data about an attack and transfers it to a heartbox.
/// </summary>
[RequireComponent(typeof(BoxCollider))]
[RequireComponent(typeof(Rigidbody))]
[AddComponentMenu("Health/HitBox")]
public class HitBox : MonoBehaviour
{
    public TeamAllegiance Allegiance;
    public int Damage;
    public Vector2 KnockForce;
    public bool DoesFloat;
    public bool DoesVETO;
    public bool CanStealthKill;
    public float Lifetime = 0.1f;

    void Start() 
    {
        gameObject.layer = LayerMask.NameToLayer("Hitboxes");
        rigidbody.useGravity = false;
        rigidbody.isKinematic = true;
    }

    public void MakePlayerFloat()
    {
        // TODO: 

    }

    public void MakePlayerVETO ()
    {
        // TODO:

    }
    
    public void MakePlayerStealthKill ()
    {
        Allegiance = TeamAllegiance.Player;
        CanStealthKill = true;
        
    }

    public void MakePlayerMINEExplosion()
    {
        // TODO: 

    }
    
    public void MakeBabyBotExplosion (float HorizontalDir)
    {
        Allegiance = TeamAllegiance.Explosions;
        Damage = 3;
        KnockForce = Vector3.right * HorizontalDir * 20.0f + Vector3.up * 15.0f;
        // TODO: Radius = 5.0f;
        
    }
    
    public void MakeOlympusMelee (float HorizontalDir)
    {
        Allegiance = TeamAllegiance.Enemies;
        Damage = 1;
        KnockForce = Vector3.right * HorizontalDir * 15.0f + Vector3.up * 10.0f;
        // TODO: Radius = 5.0f;

    }
    
    void Update ()
    {
        Lifetime -= Time.deltaTime;
        
        if (Lifetime <= 0.0f)
            gameObject.SetActive(false);

    }
    
}