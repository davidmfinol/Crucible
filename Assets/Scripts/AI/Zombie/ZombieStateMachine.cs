using UnityEngine;
using System;
using System.Collections;

public enum ZombieStates : int
{
    Zombie_Idle,
    Zombie_Running,
    Zombie_Falling,
    Zombie_Jumping,
    Zombie_Landing,
    Zombie_Climbing,
    Zombie_Attacking, 
    Zombie_TakingDamage
};

public class ZombieStateMachine : CharacterStateMachineBase
{
    // How high the zombie jumps
    public float JumpHeight = 4.0f;

    public override Type GetStateEnumType()
    {
        return typeof(ZombieStates);
    }

    public override Enum GetDefaultState()
    {
        return ZombieStates.Zombie_Idle;
    }

    public override void OnDeath()
    {
        animation.Stop();
        ActivateRagDoll(transform);
        VisualDebug debug = GetComponent<VisualDebug>();
        if (debug != null)
            Destroy(debug);
        Destroy(this);
        Destroy(CharacterController);
    }

    // Helper Method to activate the ragdoll of the zombie
    public void ActivateRagDoll(Transform current)
    {
        // activate the ragdoll for all child bones
        for (int i = 0; i < current.GetChildCount(); ++i)
            ActivateRagDoll(current.GetChild(i));

        // activate the ragdoll for the bone we're on
        if (current.GetComponent<ZombieHeartBox>() != null)
            Destroy(current.gameObject);
        else if (current.rigidbody != null && current.collider != null)
        {
            current.collider.enabled = true;
            current.rigidbody.isKinematic = false;
        }
    }
}
