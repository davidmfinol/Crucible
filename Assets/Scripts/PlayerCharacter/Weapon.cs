using UnityEngine;
using System.Collections;

public class Weapon : MonoBehaviour
{
    private bool _hitBoxesActive = false;

    public string IdleAnimationName = "Idle";
    public string AttackAnimationName = "Attack";
    public AudioSource[] AttackSoundEffects = new AudioSource[3];

    void Start()
    {
        SetHitBoxes(transform, _hitBoxesActive);
    }

    public void ActivateAttack(int attackID)
    {
        ActivateHitBox(true);
        if(animation != null)
            animation.CrossFade(AttackAnimationName);
        AttackSoundEffects[attackID].Play();
    }

    public void Deactivate()
    {
        ActivateHitBox(false);
        if (animation != null)
            animation.CrossFade(IdleAnimationName);
    }

    private void ActivateHitBox(bool activate)
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
        for (int i = 0; i < current.GetChildCount(); ++i)
            SetHitBoxes(current.GetChild(i), active);
    }
}
