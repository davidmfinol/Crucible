using UnityEngine;
using System.Collections;

/// <summary>
/// Camera spotter AI overrides most of the important AI, since it doesn't actually move.
/// </summary>
[AddComponentMenu("AI/Camera Spotter AI")]
public class CameraSpotterAI : EnemyAI
{
    private CameraSpotterAwareness _cameraSpotterAwareness;
    
    protected override void OnStart()
    {
        _cameraSpotterAwareness = GetComponent<CameraSpotterAwareness>();
        
    }

    protected override void UpdateAwareness(float elapsedTime)
    {
        AwarenessLevel oldAwareness = Awareness;
        
        base.UpdateAwareness(elapsedTime);

        if (oldAwareness != Awareness) {
            _cameraSpotterAwareness.ChangeAwareness(Awareness);
        }
        
    }

    // We're not going to use astar with the camera
    public override bool UpdateAStarPath(float elapsedTime, float speedRatio, bool repathOnInvalid)
    {
        return false;

    }

    protected override void Chase(float elapsedTime)
    {
        // We don't chase as a static camera
    }
}
