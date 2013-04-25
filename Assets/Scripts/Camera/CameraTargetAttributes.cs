using UnityEngine;
using System.Collections;

// A GameObject that uses this script has properties that affect how the camera follows it
public class CameraTargetAttributes : MonoBehaviour
{
    // How high in world space should the camera look above the target?
    public float HeightOffset = 0.0f;

    // How much should we zoom the camera based on this target?
    public float DistanceModifier = 1.0f;

    // How much time in the future should the camera look ahead of this target?
    // This value will be multiplied by this target's velocity to find the look ahead distance
    public float VelocityLookAhead = 0.15f;

    // What's the maximum distance we should let the camera look ahead?
    public Vector2 MaxLookAhead = new Vector2(3.0f, 3.0f);

    // How much should the camera shake based off the amount of "action" surrounding this target?
    public float Chaos = 0.0f;

    // We will likely need to find the surrounding amount of "chaos" here
    void Update()
    {
        // @TODO CALCULATE CHAOS
    }
}
