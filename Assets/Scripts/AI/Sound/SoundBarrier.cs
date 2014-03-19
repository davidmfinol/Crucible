using UnityEngine;
using System.Collections.Generic;

/// <summary>
/// Sound barrier represents an object through which Enemy characters cannot hear.
/// </summary>
[AddComponentMenu("AI/Sound/SoundBarrier")]
[RequireComponent(typeof(BoxCollider))]
public class SoundBarrier : MonoBehaviour
{
    private List<HearingRadius> _heardBy;

    void Start ()
    {
        _heardBy = new List<HearingRadius> ();
    }

    void OnDestroy ()
    {
        foreach (HearingRadius hearingRadius in _heardBy)
            if (hearingRadius.SoundBarriers.Contains (this))
                hearingRadius.SoundBarriers.Remove (this);
    }

    public List<HearingRadius> HeardBy {
        get { return _heardBy; }
        set { _heardBy = value; }
    }
}
