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
    public bool DoesStealthKill;
    public bool DoesFloat;
    public bool DoesVETO;
    public float Lifetime = 0.1f;

    void Start() 
    {
        gameObject.layer = LayerMask.NameToLayer("Hitboxes");
        rigidbody.useGravity = false;
        rigidbody.isKinematic = true;

    }
    
    public void MakePlayerStealthKill ()
    {
        Allegiance = TeamAllegiance.Player;
        Damage = 0;
        KnockForce = Vector2.zero; // This is overwritten in the receiver's CharacterAnimator
        DoesStealthKill = true;
        DoesFloat = false; 
        DoesVETO = false;
        Lifetime = 0.1f;
        BoxCollider col = (BoxCollider)collider;
        col.size = 2 * (Vector3.right + Vector3.up + Vector3.forward);
        
    }

    public void MakePlayerGravityShot()
    {
        Allegiance = TeamAllegiance.Player;
        Damage = 0;
        KnockForce = Vector2.zero;
        DoesStealthKill = false;
        DoesFloat = true;
        DoesVETO = false;
        Lifetime = 0.5f;
        BoxCollider col = (BoxCollider)collider;
        col.size = 100 * Vector3.right + 5 * Vector3.up + Vector3.forward;

    }

    public void MakePlayerVETO ()
    {
        Allegiance = TeamAllegiance.Player;
        Damage = 0;
        KnockForce = Vector2.zero;
        DoesStealthKill = false;
        DoesFloat = false;
        DoesVETO = true;
        Lifetime = 0.5f;
        BoxCollider col = (BoxCollider)collider;
        col.size = 100 * Vector3.right + 5 * Vector3.up + Vector3.forward;

    }

    public void MakePlayerMINEExplosion()
    {
        Allegiance = TeamAllegiance.Explosions;
        Damage = 2;
        KnockForce = 25000 * Vector2.right + 15000 * Vector2.up; // This might be overwritten somewhere
        DoesStealthKill = false;
        DoesFloat = false;
        DoesVETO = false;
        Lifetime = 1.0f;
        BoxCollider col = (BoxCollider)collider;
        col.size = 10 * (Vector3.right + Vector3.up + Vector3.forward);

    }
    
    public void MakeBabyBotExplosion ()
    {
        Allegiance = TeamAllegiance.Explosions;
        Damage = 3;
        KnockForce = 25000 * Vector2.right + 15000 * Vector2.up; // This might be overwritten somewhere
        DoesStealthKill = false;
        DoesFloat = false;
        DoesVETO = false;
        Lifetime = 1.0f;
        BoxCollider col = (BoxCollider)collider;
        col.size = 10 * (Vector3.right + Vector3.up + Vector3.forward);
        
    }
    
    public void MakeOlympusMelee (float horizontalDir)
    {
        Allegiance = TeamAllegiance.Enemies;
        Damage = 1;
        KnockForce = Vector3.right * horizontalDir * 15.0f + Vector3.up * 10.0f;
        DoesStealthKill = false;
        DoesFloat = false;
        DoesVETO = false;
        Lifetime = 0.1f;
        BoxCollider col = (BoxCollider)collider;
        col.size = 10 * (Vector3.right + Vector3.up + Vector3.forward);

    }
    
    void Update ()
    {
        Lifetime -= Time.deltaTime;
        
        if (Lifetime <= 0.0f)
            gameObject.SetActive(false);

    }
    
}