using UnityEngine;
using System.Collections.Generic;

/// <summary>
/// Hearing radius indicates an area in which an NPC can hear sound.
/// </summary>
[RequireComponent(typeof(SphereCollider))]
[AddComponentMenu("AI/Sound/Hearing Radius")]
public class HearingRadius : MonoBehaviour
{
    public float PulseTime = 5;

    private List<SoundEvent> _objectsHeard;
    private List<HeartBox> _charactersCouldHear;
    private List<OutlineInteractive> _barriers;

    private SphereCollider _sphereCollider;
    private float _timeSincePulse;

    void Start ()
    {
        _objectsHeard = new List<SoundEvent> ();
        _charactersCouldHear = new List<HeartBox>();
        _barriers = new List<OutlineInteractive>();

        _sphereCollider = GetComponent<SphereCollider>();
        _timeSincePulse = 0;

    }
    
    void OnTriggerEnter (Collider other)
    {
        // Manage the list of sounds this character has heard
        SoundEvent sound = other.GetComponent<SoundEvent> ();
        if (sound) { // TODO: ONLY HEARD IN DISTANCE
            sound.HeardBy.Add (this);
            _objectsHeard.Add (sound);
        }

        HeartBox heart = other.GetComponent<HeartBox>();
        if (heart) {
            _charactersCouldHear.Add(heart);
        }

        OutlineInteractive barrier = other.GetComponent<OutlineInteractive>();
        if(barrier) {
            _barriers.Add(barrier);
        }

    }

    void Update()
    {
        _timeSincePulse += Time.deltaTime;

        if(_timeSincePulse < PulseTime)
            return;

        float radius = _sphereCollider.radius * transform.lossyScale.x;

        foreach (OutlineInteractive barrier in _barriers) {
            barrier.Spheres[barrier.CurrentSphere].TriggerPulse();
            barrier.Spheres[barrier.CurrentSphere].Position = transform.position;
            
            barrier.CurrentSphere += 1;
            if(barrier.CurrentSphere >= barrier.Spheres.Count)
                barrier.CurrentSphere = 0;
        }
        
        _timeSincePulse = 0;

    }

    void OnTriggerExit (Collider other)
    {
        // Manage the list of sounds this character has heard
        SoundEvent sound = other.GetComponent<SoundEvent> ();
        if (sound) {
            //sound.HeardBy.Remove(this); 
            _objectsHeard.Remove (sound);
        }
        
        HeartBox heart = other.GetComponent<HeartBox>();
        if (heart) {
            _charactersCouldHear.Remove(heart);
        }
        
        OutlineInteractive barrier = other.GetComponent<OutlineInteractive>();
        if(barrier) {
            _barriers.Remove(barrier);
        }

    }



    public void ForgetAllSounds ()
    {
        _objectsHeard.Clear ();

    }

    public List<SoundEvent> ObjectsHeard {
        get { return _objectsHeard; }
    }

    public List<HeartBox> CharactersCouldHear {
        get { return _charactersCouldHear; }
    }

}
