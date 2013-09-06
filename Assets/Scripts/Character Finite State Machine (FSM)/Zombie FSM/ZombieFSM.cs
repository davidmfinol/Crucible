using UnityEngine;
using System;
using System.Collections;

/// <summary>
/// Zombie FSM controls zombies.
/// </summary>
[RequireComponent(typeof(Seeker))]
public class ZombieFSM : CharacterFiniteStateMachineBase
{
    // TODO: Constants to calculate jumping elsewhere (used by A*)?...
    public static float MaxJump = 9.0f; // jumpheight + capsulecollider.height/2
    public static float MaxSpeed = 16.0f;
    public static float MaxGravity = 40.0f;

    // How high the zombie jumps
    public float JumpHeight = 5.0f;

    // How fast the zombie runs
    public float MaxHorizontalSpeed = 16.0f;

    // How fast the zombie accelerates
    public float HorizontalAcceleration = 6.0f;
	
	// How fast the zombie climbs ledges
	public float LedgeClimbingSpeed = 7.5f;
	
	// How long it takes the zombie to climb a ledge
    public float LedgeClimbingDuration = 0.7f;
	
	// How long it takes the zombie to land
	public float LandingDuration = 0.12f;
	
	// How long it takes the zombie to attack
	public float AttackDuration = 0.75f;

    // How far away can an opponent be and still be in range of a zombie's attack?
    public float AttackRange = 5.0f;

    // How far away the zombie can notice and become aware of the player
    public float AwarenessRange = 100.0f;

    // Is the zombie aware of the player?
    private bool _awareOfPlayer = false;

    // Making zombie sounds
    private ZombieAudioSource _zombieAudioSource;

    // Current brain of the Zombie(tells it what to do)
    private ZombieBrain _brain;
    private PlayerCharacterFSM _playerController;
	
	// A* Settings
	public float RepathTime = 0.75f; // How many seconds between every calculation of a new path

    public void Start()
    {
        _zombieAudioSource = GetComponentInChildren<ZombieAudioSource>();
        _brain = new ZombieBrain(this);
        _playerController = GameLevel.Player.GetComponent<PlayerCharacterFSM>();
    }

    public override Type GetStateEnumType()
    {
        return typeof(ZombieStates);
    }

    public override Enum GetDefaultState()
    {
        return ZombieStates.Zombie_Idle;
    }

    /// <summary>
    /// Returns whether a zombie can jump from one position to another
    /// </summary>
    /// <param name="a">the starting position of the zombie</param>
    /// <param name="b">the ending position the zombie is considering</param>
    /// <returns></returns>
    public static bool CanJump(Vector3 a, Vector3 b)
    {
        float xDist = Mathf.Abs(b.x - a.x);
        float yDist = b.y - a.y;
        float yVel = Mathf.Sqrt(2 * MaxJump * MaxGravity);
        float t = yVel / MaxGravity;
        float yMax = MaxJump;
        if (xDist > MaxSpeed * t)
        {
            t = xDist / MaxSpeed;
            yMax = (yVel * t) + ((-MaxGravity * t * t) / 2);
        }
        return yDist < yMax;
    }

    public override void OnDeath()
    {
		LevelingSystem.UpdateExp();		
        animation.Stop();
        ZombieAudioSource.PlayDeath();
        ActivateRagDoll(transform);
        CharacterFSMVisualDebugger debug = GetComponent<CharacterFSMVisualDebugger>();
        if (debug != null)
            Destroy(debug);
        ZombieAIDebugger debug2 = GetComponent<ZombieAIDebugger>();
        if (debug2 != null)
            Destroy(debug2);
        Destroy(this);
        Destroy(Controller);
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
        Transform player = GameLevel.Player;
        if (player != null)
            return (Mathf.Abs(transform.position.x - player.transform.position.x) < AwarenessRange)
                && (Mathf.Abs(transform.position.y - player.transform.position.y) < AwarenessRange)
                && ZLevel == _playerController.ZLevel;
        return false;
    }
    // Is the player in the range that the zombie could feasibly hit him?
    public bool PlayerIsInAttackRange()
    {
        Transform player = GameLevel.Player;
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
