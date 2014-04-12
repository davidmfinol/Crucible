using UnityEngine;
using System.Collections;

/// <summary>
/// Camera spotter AI overrides most of the important AI, since it doesn't actually move.
/// </summary>
[AddComponentMenu("AI/Camera Spotter AI")]
public class CameraSpotterAI : EnemyAI
{
    // We're not going to use astar with the camera
    public override bool UpdateAStarPath (float speedRatio, bool repathOnInvalid)
    {
        return false;
    }

    protected override void Chase ()
    {
        // We don't chase as a static camera
    }
}
