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
    
    // The last hitbox we took this frame, or null if no hit this frame
    private HitBox _lastHit = null;
    
    // We need to be able to call OnDeath() as necessary
    private CharacterAnimator _controller;

    void Start ()
    {
        HitPoints = MaxHitPoints;

        _controller = transform.parent.GetComponent<CharacterAnimator> ();

        Controller.ModifyState = UpdateHealth;

        OnStart ();

    }

    // Child classes may override
    protected virtual void OnStart ()
    {
    }

    // TODO: figure out why OnTriggerStay causes repeated executes.
    void OnTriggerEnter (Collider other)
    {
        HitBox attackData = other.GetComponent<HitBox> ();
        if (attackData != null && attackData.enabled && attackData.Allegiance != this.Allegiance) {
            _lastHit = attackData;

            if (attackData.FromWeapon == Weapon.WeaponType.Weapon_PipeWeapon) {
                GameManager.Inventory.TryRemoveAmmo (Weapon.WeaponType.Weapon_PipeWeapon, 1);
                GameManager.UI.RefreshWeaponWheel ();
            }

        }

    }

    // Child classes must override updatehealth
    public abstract void UpdateHealth (float elapsedTime);

    public CharacterAnimator Controller {
        get { return _controller; }
    }

    public HitBox LastHit {
        get { return _lastHit; }
        set { _lastHit = value; }
    }
    
}