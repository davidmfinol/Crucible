using UnityEngine;
using System.Collections;

/// <summary>
/// Whip is a melee weapon that uses a set of child colliders to provide variable hitboxes.
/// </summary>
[AddComponentMenu("Weaponry/Whip")]
public class Whip : Weapon
{
    public WeaponAudioPlayer sound;
	
    private bool _hitBoxesActive = false;

    public string IdleAnimationName = "Whip_Idle";
    public string AttackAnimationName = "Whip_Attack";

    void Start()
    {
        SetHitBoxes(transform, _hitBoxesActive);
    }

    public override void ActivateAttack(int attackID)
    {
        if(sound != null)
            sound.Play(attackID);
		
        ActivateHitBox(true);
        if (animation != null)
            animation.CrossFade(AttackAnimationName);
    }

    public override void Deactivate()
    {
        ActivateHitBox(false);
        if (animation != null)
            animation.CrossFade(IdleAnimationName);
    }

    public void ActivateHitBox(bool activate)
    {
        if (activate != _hitBoxesActive)
            SetHitBoxes(transform, activate);
        _hitBoxesActive = activate;
    }

    public static void SetHitBoxes(Transform current, bool active)
    {
        // activate the hitbox for the bone we're on
        BoxCollider collider = current.GetComponent<BoxCollider>();
        HitBox hitBox = current.GetComponent<HitBox>();
        if (collider != null && hitBox != null)
        {
            collider.enabled = active;
            hitBox.enabled = active;
        }

        // activate the hit box for all child bones
        for (int i = 0; i < current.childCount; ++i)
            SetHitBoxes(current.GetChild(i), active);
    }
    
    public override Vector3 Rotation
    {
        get { return base.Rotation; }
    }
    
    public override Vector3 Translation
    {
        get { return base.Translation; }
    }
}
