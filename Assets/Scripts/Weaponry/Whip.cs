using UnityEngine;
using System.Collections;

public class Whip : Weapon
{
    private bool _hitBoxesActive = false;

    public string IdleAnimationName = "Whip_Idle";
    public string AttackAnimationName = "Whip_Attack";

    void Start()
    {
        SetHitBoxes(transform, _hitBoxesActive);
    }

    public override void ActivateAttack(int attackID)
    {
        base.ActivateAttack(attackID);
        ActivateHitBox(true);
        if (animation != null)
            animation.CrossFade(AttackAnimationName);
    }

    public override void Deactivate()
    {
        base.Deactivate();
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
}
