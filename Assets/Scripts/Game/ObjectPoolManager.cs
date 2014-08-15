using UnityEngine;
using System.Collections.Generic;

/// <summary>
/// Object pool manager keeps tracks of instances of object to reuse so that we don't have to keep re-creating them.
/// </summary>
[AddComponentMenu("Game/Object Pool Manager")]
public class ObjectPoolManager : MonoBehaviour
{
    // The first set of objects we pool is the footsteps
    private Transform _footstepContainer;
    private List<AudioPlayer> _playerFootsteps;
    private List<AudioPlayer> _robotFootsteps;

    // The second set of objects we pool is the hitboxes
    private Transform _hitboxContainer;
    private List<HitBox> _hitboxes;

    // All managers need to let the GameManager know when it is ready
    private bool _ready;

    void Start()
    {
        GameObject footstepContainer = new GameObject("Footsteps");
        _footstepContainer = footstepContainer.transform;
        _footstepContainer.parent = transform;
        //_robotFootsteps = new List<AudioPlayer>();
        // TODO:

        /*
        // TODO: object pooling (IT IS REALLY SLOW RIGHT NOW TO CREATE FOOTSTEPS)
        Vector3 footStepPosition = transform.position;
        footStepPosition.y -= Height * 0.5f;
        GameObject footstep = new GameObject("Newman Footstep");
        footstep.layer = LayerMask.NameToLayer("SoundStealth");
        footstep.transform.position = footStepPosition;
        footstep.AddComponent<SoundEvent>();
        AudioPlayer footAudio = footstep.AddComponent<AudioPlayer>();
        footAudio.GetComponent<AudioPlayer>().Play(_sound.Footsteps [footIndex], _sound.FootstepsVolume);
        
        // TODO: object pooling (IT IS REALLY SLOW RIGHT NOW TO CREATE FOOTSTEPS)
        GameObject footstep = new GameObject("Newman Landrolling");
        footstep.layer = LayerMask.NameToLayer("SoundStealth");
        footstep.transform.position = footStepPosition;
        footstep.AddComponent<SoundEvent>();
        AudioPlayer footAudio = footstep.AddComponent<AudioPlayer>();
        footAudio.GetComponent<AudioPlayer>().Play(_sound.LandRoll, _sound.LandRollingVolume);
        */
        _ready = true;

    }

    public void CreatePlayerFootstep(Vector3 position, AudioClip clip, float volume)
    {

    }

    public void CreatePlayerLandRoll(Vector3 position, AudioClip clip, float volume)
    {

    }

    public void CreateOlympusFootstep(Vector3 position, AudioClip clip, float volume)
    {

    }

    public void CreateOlympusLanding(Vector3 position, AudioClip clip, float volume)
    {

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
        return null;
    }
    
    public bool Ready {
        get { return _ready; }
    }
}
