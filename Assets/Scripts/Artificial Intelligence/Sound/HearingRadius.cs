using UnityEngine;
using System.Collections.Generic;

/// <summary>
/// Hearing radius indicates an area in which an NPC can hear sound.
/// </summary>
[RequireComponent(typeof(SphereCollider))]
[RequireComponent(typeof(Rigidbody))]
[AddComponentMenu("Artificial Intelligence/Sound/Hearing Radius")]
public class HearingRadius : MonoBehaviour
{
    // Settings for how the hearing radius is visually depicted on the floor
    public float EchoTime = 3;
    public Color EchoColor = Color.white;
    public float EchoSpeed = 10;
    
    // HACK: THIS CHECK ALLOWS BABYBOT TO NOT HEAR THE SIGHT PUZZLE IN THE SEWER TUTORIAL
    public bool IgnoreAbove = false;

    // The objects with which we interact
    private LinkedList<SoundEvent> _objectsHeard;
    private List<HeartBox> _charactersCouldHear;
    private List<OutlineInteractive> _barriers;
    private float _timeSincePulse;

    void Awake()
    {
        _objectsHeard = new LinkedList<SoundEvent>();
        _charactersCouldHear = new List<HeartBox>();
        _barriers = new List<OutlineInteractive>();
        _timeSincePulse = 0;

    }
    
    void OnTriggerEnter(Collider other)
    {
        // Manage the list of sounds this character has heard
        SoundEvent sound = other.GetComponent<SoundEvent>();
        FootstepAudioPlayer footstep = other.GetComponent<FootstepAudioPlayer>();
        if (sound && footstep != null && footstep.LifetimeLived == 0) {
            // NOTE: THE SIMPLICITY OF THIS SPHERECOLLIDER ALLOWS SOUNDS TO BE HEARD THROUGH WALLS
            sound.HeardBy.Add(this);
            // HACK: THIS CHECK ALLOWS BABYBOT TO NOT HEAR THE SIGHT PUZZLE IN THE SEWER TUTORIAL
            if (!IgnoreAbove || other.transform.position.y < 70) {
                _objectsHeard.AddFirst(sound);
            }
        }

        HeartBox heart = other.GetComponent<HeartBox>();
        if (heart && !_charactersCouldHear.Contains(heart)) {
            _charactersCouldHear.Add(heart);
        }

        OutlineInteractive barrier = other.GetComponent<OutlineInteractive>();
        if (barrier && !_barriers.Contains(barrier)) {
            _barriers.Add(barrier);
        }

    }

    void Update()
    {
        _timeSincePulse += Time.deltaTime;

        if (_timeSincePulse < EchoTime) {
            return;
        }

        foreach (OutlineInteractive barrier in _barriers) {
            if (barrier.Spheres == null || barrier.Spheres.Count >= barrier.CurrentSphere) {
                continue;
            }

            barrier.Spheres [barrier.CurrentSphere].TriggerPulse();
            barrier.Spheres [barrier.CurrentSphere].Position = transform.position;
            barrier.Spheres [barrier.CurrentSphere].EchoColor = EchoColor;
            barrier.Spheres [barrier.CurrentSphere].SphereMaxRadius = Radius;
            barrier.Spheres [barrier.CurrentSphere].EchoSpeed = EchoSpeed;
            
            barrier.CurrentSphere += 1;
            if (barrier.CurrentSphere >= barrier.Spheres.Count) {
                barrier.CurrentSphere = 0;
            }
        }
        
        _timeSincePulse = 0;

    }

    void OnTriggerExit(Collider other)
    {
        // Manage the list of sounds this character has heard
        SoundEvent sound = other.GetComponent<SoundEvent>();
        if (sound) {
            //sound.HeardBy.Remove(this); 
            _objectsHeard.Remove(sound);
        }
        
        HeartBox heart = other.GetComponent<HeartBox>();
        if (heart) {
            _charactersCouldHear.Remove(heart);
        }
        
        OutlineInteractive barrier = other.GetComponent<OutlineInteractive>();
        if (barrier) {
            _barriers.Remove(barrier);
        }

    }

    public void ForgetAllSounds()
    {
        _objectsHeard.Clear();

    }

    public float Radius {
        get { return ((SphereCollider)collider).radius * transform.lossyScale.x; }
    }

    public LinkedList<SoundEvent> ObjectsHeard {
        get { return _objectsHeard; }
    }

    public List<HeartBox> CharactersCouldHear {
        get { return _charactersCouldHear; }
    }

}
