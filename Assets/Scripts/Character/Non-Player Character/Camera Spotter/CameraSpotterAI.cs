using UnityEngine;
using System.Collections;

/// <summary>
/// Camera spotter AI overrides most of the important AI, since it doesn't actually move.
/// </summary>
[AddComponentMenu("Artificial Intelligence/Camera Spotter AI")]
public class CameraSpotterAI : EnemyAI
{
    // We're not going to use astar with the camera
    public override bool UpdateAStarPath(float elapsedTime, float speedRatio, bool repathOnInvalid)
    {
        return false;

    }

    // We don't move as a static camera
    protected override void Wander(float elapsedTime, bool awarenessChanged)
    {
    }
    protected override void Search(float elapsedTime, bool awarenessChanged)
    {
    }
    protected override void Chase(float elapsedTime, bool awarenessChanged)
    {
    }

}
