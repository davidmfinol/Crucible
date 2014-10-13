using UnityEngine;
using System.Collections.Generic;

/// <summary>
/// Object pool manager keeps tracks of instances of object to reuse so that we don't have to keep re-creating them.
/// </summary>
[AddComponentMenu("Game/Object Pool Manager")]
public class ObjectPoolManager : MonoBehaviour
{
    // The first set of objects we pool is the footsteps
    private List<FootstepAudioPlayer> _playerFootsteps;
    private List<FootstepAudioPlayer> _robotFootsteps;

    // The second set of objects we pool is the hitboxes
    private List<HitBox> _hitboxes;

    // We need references to the particle effects for
    private GameObject _gravityGunShot;
    private GameObject _vetoGunShot;
    private GameObject _mineExplosion;
    private GameObject _babyBotExplosion;

    // All managers need to let the GameManager know when it is ready
    private bool _ready;

    void Start()
    {
        _playerFootsteps = new List<FootstepAudioPlayer>();
        for (int i = 0; i < 60; i++) {
            GameObject footstep = new GameObject("Footstep - Player");
            footstep.layer = LayerMask.NameToLayer("SoundStealth");
            footstep.transform.parent = transform;
            footstep.AddComponent<SoundEvent>();
            FootstepAudioPlayer footAudio = footstep.AddComponent<FootstepAudioPlayer>();
            footAudio.Lifetime = 10;
            footstep.gameObject.SetActive(false);
            _playerFootsteps.Add(footAudio);
        }

        _robotFootsteps = new List<FootstepAudioPlayer>();
        for (int i = 0; i < 50; i++) {
            GameObject footstep = new GameObject("Footstep - Robot"); 
            footstep.layer = LayerMask.NameToLayer("SoundStealth");
            footstep.transform.parent = transform;
            FootstepAudioPlayer footAudio = footstep.AddComponent<FootstepAudioPlayer>();
            _robotFootsteps.Add(footAudio);
        }

        _hitboxes = new List<HitBox>();
        for (int i = 0; i < 25; i++) {
            GameObject hitbox = new GameObject("Hitbox");
            hitbox.transform.parent = transform;
            _hitboxes.Add(hitbox.AddComponent<HitBox>());
        }

        // Load the particle effects for the hitboxes
        _gravityGunShot = Resources.Load("Prefabs/Particles/Babybot Explosion") as GameObject;
        _vetoGunShot = Resources.Load("Prefabs/Particles/Babybot Explosion") as GameObject;
        _mineExplosion = Resources.Load("Prefabs/Particles/Babybot Explosion") as GameObject;
        _babyBotExplosion = Resources.Load("Prefabs/Particles/Babybot Explosion") as GameObject;

        _ready = true;

    }

    public FootstepAudioPlayer GetPlayerFootstep()
    {
        FootstepAudioPlayer playerFootstep = null;
        foreach (FootstepAudioPlayer footstep in _playerFootsteps) {
            if (!footstep.gameObject.activeSelf) {
                footstep.gameObject.SetActive(true);
                playerFootstep = footstep;
                break;
            }
        }
        if(playerFootstep == null) {
            Debug.LogWarning("PlayerFootstep object pool not big enough! Adding.");
            GameObject footstep = new GameObject("Player Footstep");
            footstep.layer = LayerMask.NameToLayer("SoundStealth");
            footstep.transform.parent = transform;
            footstep.AddComponent<SoundEvent>();
            playerFootstep = footstep.AddComponent<FootstepAudioPlayer>();
            playerFootstep.Lifetime = 10;
            _playerFootsteps.Add(playerFootstep);
        }
        return playerFootstep;

    }

    public FootstepAudioPlayer GetRobotFootstep()
    {
        FootstepAudioPlayer robotFootstep = null;
        foreach (FootstepAudioPlayer footstep in _robotFootsteps) {
            if (!footstep.gameObject.activeSelf) {
                footstep.gameObject.SetActive(true);
                robotFootstep = footstep;
                break;
            }
        }
        if(robotFootstep == null) {
            Debug.LogWarning("RobotFootstep object pool not big enough! Adding.");
            GameObject footstep = new GameObject("Robot Footstep"); 
            footstep.layer = LayerMask.NameToLayer("SoundStealth");
            footstep.transform.parent = transform;
            robotFootstep = footstep.AddComponent<FootstepAudioPlayer>();
            _robotFootsteps.Add(robotFootstep);
        }
        return robotFootstep;

    }

    public FootstepAudioPlayer CreatePlayerFootstep(Vector3 position, AudioClip clip, float volume)
    {
        FootstepAudioPlayer playerFootstep = GetPlayerFootstep();
        playerFootstep.transform.position = position;
        playerFootstep.Play(clip, volume);
        return playerFootstep;

    }

    public FootstepAudioPlayer CreateRobotFootstep(Vector3 position, AudioClip clip, float volume)
    {
        FootstepAudioPlayer robotFootstep = GetRobotFootstep();
        robotFootstep.transform.position = position;
        robotFootstep.Play(clip, volume);
        return robotFootstep;

    }
    
    public HitBox GetHitbox()
    {
        HitBox hitBox = null;
        foreach (HitBox hit in _hitboxes) {
            if (!hit.gameObject.activeSelf) {
                hit.gameObject.SetActive(true);
                hitBox = hit;
                break;
            }
        }
        if (hitBox == null) {
            GameObject box = new GameObject("Hitbox");
            box.transform.parent = transform;
            hitBox = box.AddComponent<HitBox>();
            _hitboxes.Add(hitBox);
        }
        return hitBox;
        
    }
    
    public HitBox CreatePlayerStealthKillEvent(Vector3 position)
    {
        HitBox hitbox = GetHitbox();
        hitbox.MakePlayerStealthKill();
        hitbox.transform.position = position;
        return hitbox;
        
    }

    public HitBox CreatePlayerGravityGun(Vector3 position)
    {
        // Create the visual effect
        GameObject clonedParticle = (GameObject)Instantiate(_gravityGunShot, position, Quaternion.identity);
        Destroy(clonedParticle, 5.0f);

        // Make the hitbox
        HitBox hitbox = GetHitbox();
        hitbox.MakePlayerGravityShot();
        float offsetX = hitbox.collider.bounds.extents.x;
        Vector3 offset = new Vector3((GameManager.Player.Direction.x > 0 ? offsetX : -offsetX), 0, 0);
        hitbox.transform.position = GameManager.Player.transform.position + offset;
        return hitbox;

    }

    public HitBox CreatePlayerVETO(Vector3 position)
    {
        // Create the visual effect (NOTE: THIS ISN'T ACTUALLY POOLED, BUT OH WELL)
        GameObject clonedParticle = (GameObject)Instantiate(_vetoGunShot, position, Quaternion.identity);
        Destroy(clonedParticle, 5.0f);
        
        // Make the hitbox
        HitBox hitbox = GetHitbox();
        hitbox.MakePlayerVETO();
        float offsetX = hitbox.collider.bounds.extents.x;
        Vector3 offset = new Vector3((GameManager.Player.Direction.x > 0 ? offsetX : -offsetX), 0, 0);
        hitbox.transform.position = GameManager.Player.transform.position + offset;
        return hitbox;

    }

    public HitBox CreatePlayerMineExplosion(Vector3 position)
    {
        // Create the visual effect (NOTE: THIS ISN'T ACTUALLY POOLED, BUT OH WELL)
        GameObject clonedParticle = (GameObject)Instantiate(_mineExplosion, position, Quaternion.identity);
        Destroy(clonedParticle, 5.0f);
        
        // Create what actually does the damage
        HitBox mineHitbox = GetHitbox();
        mineHitbox.MakePlayerMINEExplosion();
        mineHitbox.transform.position = position;
        return mineHitbox;

    }

    public HitBox CreateBabyBotExplosion(Vector3 position)
    {
        // Create the visual effect (NOTE: THIS ISN'T ACTUALLY POOLED, BUT OH WELL)
        GameObject clonedParticle = (GameObject)Instantiate(_babyBotExplosion, position, Quaternion.identity);
        Destroy(clonedParticle, 5.0f);

        // Create what actually does the damage
        HitBox babyBotHitbox = GetHitbox();
        babyBotHitbox.MakeBabyBotExplosion();
        babyBotHitbox.transform.position = position;
        return babyBotHitbox;

    }
    
    public HitBox CreateOlympusMelee(Vector3 position)
    {
        HitBox hitbox = GetHitbox();
        float horizontalDir = 0.0f;
        if (GameManager.Player.transform.position.x < transform.position.x) {
            horizontalDir = -1.0f;
        } else {
            horizontalDir = 1.0f;
        }
        hitbox.MakeOlympusMelee(horizontalDir);
        hitbox.transform.position = position;
        return hitbox;

    }
    
    public bool Ready {
        get { return _ready; }
    }
}
