using UnityEngine;
using System;
using System.Collections;

public class ZombieFSM : CharacterFiniteStateMachineBase
{
    // How high the zombie jumps
    public float JumpHeight = 4.0f;

    // How fast the zombie runs
    public float MaxHorizontalSpeed = 7.0f;

    // How fast the zombie accelerates
    public float HorizontalAcceleration = 6.0f;

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
		LevelingSystem.UpdateExp();		
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

    public bool PlayerIsInRange()
    {
        if (LevelAttributes.Instance.Player != null)
            return Mathf.Abs(transform.position.x - LevelAttributes.Instance.Player.transform.position.x) < 10;
        return false;
    }
}
