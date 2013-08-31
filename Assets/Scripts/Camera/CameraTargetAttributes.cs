using UnityEngine;
using System.Collections;

/// <summary>
/// Camera target attributes defines how the CameraScrolling script follows its target.
/// Attach this script to a game object that you want CameraScrolling to be able to follow.
/// This entire script may end up being replaced.
/// </summary>
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
	/*
    public float Chaos = 0.0f;

    private float prevHeight;
    private float prevDist;
    private bool needed = false;

    // We will likely need to find the surrounding amount of "chaos" here
    void Update()
    {
        // @TODO CALCULATE CHAOS
        if (transform.GetComponent<PlayerCharacterFSM>().ZLevel == 16)
        {
            prevHeight = HeightOffset;
            prevDist = DistanceModifier;
            HeightOffset = 5;
            DistanceModifier = 1.6f;
            needed = true;
        }
        else 
        {
            needed = false;
            HeightOffset = 0;
            DistanceModifier = 1;
        }
    }
    */
}
