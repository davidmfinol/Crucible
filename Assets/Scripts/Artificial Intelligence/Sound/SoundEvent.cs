using UnityEngine;
using System.Collections.Generic;

/// <summary>
/// Sound event represents a sound that enemies can hear.
/// </summary>
[RequireComponent(typeof(SphereCollider))]
[AddComponentMenu("Artificial Intelligence/Sound/SoundEvent")]
public class SoundEvent : MonoBehaviour
{
    private List<HearingRadius> _heardBy;

    void Awake()
    {
        _heardBy = new List<HearingRadius>();

    }

    void OnDisable()
    {
        foreach (HearingRadius hearingRadius in _heardBy) {
            if (hearingRadius.ObjectsHeard.Contains(this)) {
                hearingRadius.ObjectsHeard.Remove(this);
            }
        }

    }
    
    void OnDestroy()
    {
        OnDisable();

    }

    public List<HearingRadius> HeardBy {
        get { return _heardBy; }
        set { _heardBy = value; }
    }

}
