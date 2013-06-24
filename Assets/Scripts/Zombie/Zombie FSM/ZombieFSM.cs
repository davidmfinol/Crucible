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

    // How far away the zombie can notice and become aware of the player
    public float AwarenessRange;

    // Is the zombie aware of the player?
    private bool awareOfPlayer = false;

    // Making zombie sounds
    private ZombieAudioSource _zombieAudioSource;

    // Current brain of the Zombie(tells it what to do)
    private ZombieBrain _brain;

    void Start()
    {
        _zombieAudioSource = GetComponentInChildren<ZombieAudioSource>();
        _brain = new ZombieBrain(this);
    }

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
        ZombieAudioSource.PlayDeath();
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

    // Is the player in the range that a zombie can notice?
    public bool PlayerIsInRange()
    {
        if (LevelAttributes.Instance.Player != null)
            return Mathf.Abs(transform.position.x - LevelAttributes.Instance.Player.transform.position.x) < AwarenessRange;
        return false;
    }

    public bool AwareOfPlayer
    {
        get { return awareOfPlayer; }
        set { awareOfPlayer = value; }
    }

    public ZombieAudioSource ZombieAudioSource
    {
        get { return _zombieAudioSource; }
    }

    public ZombieBrain Brain
    {
        get { return _brain; }
        set { _brain = value; }
    }
}
