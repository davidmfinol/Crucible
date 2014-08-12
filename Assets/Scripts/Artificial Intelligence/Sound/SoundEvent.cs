using UnityEngine;
using System.Collections.Generic;

/// <summary>
/// Sound event represents a sound that enemies can hear.
/// </summary>
[RequireComponent(typeof(SphereCollider))]
[AddComponentMenu("Artificial Intelligence/Sound/SoundEvent")]
public class SoundEvent : MonoBehaviour
{
    // How long the sound event exists within the scene before it is deleted
    public float DecayTime = 1;
    private float _existTime = 0;

    // Who has heard this sound event?
    private List<HearingRadius> _heardBy;

    void Awake()
    {
        _heardBy = new List<HearingRadius>();

    }
    
    void Update()
    {
        _existTime += Time.deltaTime;
        if (_existTime > DecayTime) {
            Destroy(this.gameObject);
        }
        
    }
    
    void OnDestroy()
    {
        foreach (HearingRadius hearingRadius in _heardBy) {
            if (hearingRadius.ObjectsHeard.Contains(this)) {
                hearingRadius.ObjectsHeard.Remove(this);
            }
        }

    }

    public List<HearingRadius> HeardBy {
        get { return _heardBy; }
        set { _heardBy = value; }
    }

}
