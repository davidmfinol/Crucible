using UnityEngine;
using System.Collections;

/// <summary>
/// Footstep audio player plays footstep sounds.
/// </summary>
[AddComponentMenu("Audio/Sound Effects/Footstep Audio Player")]
public class FootstepAudioPlayer : AudioPlayer
{
    public float Lifetime = 1;
    private float _lifetimeLived = 0;

    void OnEnable()
    {
        _lifetimeLived = 0;

    }
    
    void Update()
    {
        _lifetimeLived += Time.deltaTime;
        
        if (_lifetimeLived > Lifetime) {
            gameObject.SetActive(false);
        }
        
    }

    public float LifetimeLived { 
        get { return _lifetimeLived; }
    }

}
