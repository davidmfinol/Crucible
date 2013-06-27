using UnityEngine;
using System;
using System.Collections;

[RequireComponent(typeof(Seeker))]
public class ZombieFSM : CharacterFiniteStateMachineBase
{
    // How high the zombie jumps
    public float JumpHeight = 6.0f;

    // How fast the zombie runs
    public float MaxHorizontalSpeed = 7.0f;

    // How fast the zombie accelerates
    public float HorizontalAcceleration = 6.0f;

    // How far away the zombie can notice and become aware of the player
    public float AwarenessRange = 100.0f;

    //How far away can an opponent be and still be in range of a zombie's attack?
    public float AttackRange = 1.0f;

    // Is the zombie aware of the player?
    private bool _awareOfPlayer = false;

    // Making zombie sounds
    private ZombieAudioSource _zombieAudioSource;

    // Current brain of the Zombie(tells it what to do)
    private ZombieBrain _brain;
    private PlayerCharacterFSM _playerController;

    void Start()
    {
        _zombieAudioSource = GetComponentInChildren<ZombieAudioSource>();
        _brain = new ZombieBrain(this);
        _playerController = LevelAttributes.Instance.Player.GetComponent<PlayerCharacterFSM>();
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

    // Is the player in the range that the zombie can notice?
    public bool PlayerIsInNoticeRange()
    {
        Transform player = LevelAttributes.Instance.Player;
        if (player != null)
            return (Mathf.Abs(transform.position.x - player.transform.position.x) < AwarenessRange)
                && (Mathf.Abs(transform.position.y - player.transform.position.y) < AwarenessRange)
                && ZLevel == _playerController.ZLevel;
        return false;
    }
    // Is the player in the range that the zombie could feasibly hit him?
    public bool PlayerIsInAttackRange()
    {
        Transform player = LevelAttributes.Instance.Player;
        if (player != null)
            return (Mathf.Abs(transform.position.x - player.transform.position.x) < AttackRange)
                && (Mathf.Abs(transform.position.y - player.transform.position.y) < AttackRange)
                && ZLevel == _playerController.ZLevel;
        return false;
    }

    public float ApplyRunning(float targetSpeed)
    {
        float accelerationSmoothing = HorizontalAcceleration * Time.deltaTime;
        return Mathf.Lerp(HorizontalSpeed, targetSpeed, accelerationSmoothing);
    }

    public bool AwareOfPlayer
    {
        get { return _awareOfPlayer; }
        set { _awareOfPlayer = value; }
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
