using UnityEngine;
using System.Collections.Generic;

/// <summary>
/// Hearing radius indicates an area in which an NPC can hear sound.
/// </summary>
[RequireComponent(typeof(SphereCollider))]
[AddComponentMenu("AI/Sound/Hearing Radius")]
public class HearingRadius : MonoBehaviour
{
    private List<SoundEvent> _objectsHeard;

    void Start ()
    {
        _objectsHeard = new List<SoundEvent> ();

    }
    
    void OnTriggerEnter (Collider other)
    {
        SoundEvent sound = other.GetComponent<SoundEvent> ();
        if (sound) {
            sound.HeardBy.Add (this);
            _objectsHeard.Add (sound);
        }

    }

    void OnTriggerExit (Collider other)
    {
        SoundEvent sound = other.GetComponent<SoundEvent> ();
        if (sound) {
            //sound.HeardBy.Add(this);
            _objectsHeard.Remove (sound);
        }

    }

    public void ForgetAllSounds ()
    {
        _objectsHeard.Clear ();

    }

    public List<SoundEvent> ObjectsHeard {
        get { return _objectsHeard; }
        set { _objectsHeard = value; }
    }
}
