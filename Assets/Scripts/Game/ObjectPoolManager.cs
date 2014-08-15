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

    public HitBox CreatePlayerGravityGun(Vector3 position)
    {
        // TODO: 
        /*
        GameObject hitbox = (GameObject)Instantiate(GunHitbox, GameManager.Player.transform.position, Quaternion.identity);
        float offsetX = hitbox.collider.bounds.extents.x;
        Vector3 offset = new Vector3((GameManager.Player.Direction.x > 0 ? offsetX : -offsetX), 0, 0);
        hitbox.transform.position = hitbox.transform.position + offset;
        */
        return null;

    }

    public HitBox CreatePlayerVETO(Vector3 position)
    {
        // TODO:
        return null;

    }

    public HitBox CreatePlayerStealthKillEvent(Vector3 position)
    {
        /*
        // find where to place the attack event
        Vector3 killPos = transform.position;
        killPos.x += (Direction.x * StealthKillRange);
        
        // place so enemy can die appropriately
        // TODO: OBJECT POOLING
        GameObject o = (GameObject)Instantiate(StealthKillEvent, killPos, Quaternion.identity);
        HitBox d = o.GetComponent<HitBox>();
        d.MakePlayerStealthKill();*/
        return null;

    }

    public HitBox CreateBabyBotExplosion(Vector3 position)
    {
        // TODO: OBJECT POOLING
        /*
        GameObject o = (GameObject)Instantiate(MeleeEvent, transform.position, Quaternion.identity);
        o.transform.parent = GameManager.Player.transform;
        HitBox d = o.GetComponentInChildren<HitBox>();
        d.MakeBabyBotExplosion(this.gameObject, horizontalDir);
        */
        return null;

    }
    
    public HitBox CreateOlympusMelee(Vector3 position)
    {
        // TODO: 
        /*
        GameObject o = (GameObject)Instantiate(MeleeEvent, meleePos, Quaternion.identity);
        HitBox d = o.GetComponent<HitBox>();
        
        // Make the attack push in the correct direction
        float horizontalDir = 0.0f;
        if (GameManager.Player.transform.position.x < transform.position.x) {
            horizontalDir = -1.0f;
        } else {
            horizontalDir = 1.0f;
        }
        d.MakeOlympusMelee(horizontalDir);
*/

        return null;
    }
    
    public bool Ready {
        get { return _ready; }
    }
}
