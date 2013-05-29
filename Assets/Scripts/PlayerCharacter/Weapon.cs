using UnityEngine;
using System.Collections;

public class Weapon : MonoBehaviour
{
    public AnimationClip IdleAnimation = null;
    public AnimationClip AttackAnimation = null;

    public AudioSource AttackSound1 = null;
    public AudioSource AttackSound2 = null;
    public AudioSource AttackSound3 = null;

    public AudioSource[] SoundGroupX;
    public AudioSource[] SoundGroupY;

    public int soundGroupNum;

    public void Activate()
    {
        SetHitBoxes(transform, true);
    }

    public void Deactivate()
    {
        SetHitBoxes(transform, false);
    }

    private void SetHitBoxes(Transform current, bool active)
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
