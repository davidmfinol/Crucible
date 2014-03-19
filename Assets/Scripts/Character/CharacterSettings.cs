﻿using UnityEngine;

/// <summary>
/// Character settings stores variables about how this character moves.
/// It also provides some helper methods used by the animator.
/// Used by CharacterAnimator.cs
/// </summary>
[AddComponentMenu("Character/Character Settings")]
public sealed class CharacterSettings : MonoBehaviour
{
    // Noise player makes when running
    public Transform FootStepNoise;

    // What is the name of the rooot bone? Used to zero-root based animation motion
    public string RootBoneName;     // = "hip";

    // How fast the character runs
    public float MaxHorizontalSpeed;   // = 16.0f;

    // How fast the character accelerates
    public float HorizontalAcceleration;  // = 6.0f;

    // How high the character jumps
    public float JumpHeight;  // = 6.0f;
    
    // Rate of change of vertical fall speed
    public float Gravity;  // = 50.0f;

    // Maximum fall speed
    public float MaxFallSpeed;  // = 35.0f;
    
    // How fast the character rotates
    public float RotationSmoothing;  // = 6.0f;

    // How fast the character moves across the Z-Axis
    public float ZLerp;  // = 10.0f;
    
    // How fast the character climbs ledges
    public float LedgeClimbingSpeed;  // = 6.0f;
    
    // How fast the character climbs ladders
    public float LadderClimbingSpeed;  // = 5.0f;
    
    // How fast the character strafes ladders
    public float LadderStrafingSpeed;  // = 5.0f;

    // How long you can wall slide before you get auto-dropped
    public float WallSlideDuration;  // = 1.0f;

    // How fast you slide down walls that you have grabbed
    public float WallSlideSpeed;  // = -5.0f;

    // You must be moving at least this fast vertically to grab onto a wall
    public float MinWallGrabSpeed;  // = -30.0f;

    // how close do we need to be to initiate a stealth kill?
    public float StealthKillRange;  // = 3.0f;

    // how much friction is applied to the character as it slides across the ground on death
    public float DeathFriction;  // = 12.0f;

	public GameObject MineSoundEventPrefab;  // get the mine sound event.
    

    // Helper Method to find a bone attached to a character
    public static Transform SearchHierarchyForBone (Transform current, string name)
    {
        // check if the current bone is the bone we're looking for, if so return it
        if (current.name == name)
            return current;

        // search through child bones for the bone we're looking for
        for (int i = 0; i < current.childCount; ++i) {
            // the recursive step; repeat the search one step deeper in the hierarchy
            Transform found = SearchHierarchyForBone (current.GetChild (i), name);

            // a transform was returned by the search above that is not null,
            // it must be the bone we're looking for
            if (found != null)
                return found;
        }

        // bone with name was not found
        return null;

    }
    
    // Helper Method to activate the ragdoll of a character
    public static void ActivateRagDoll (Transform current, bool disable, bool useGravity)
    {
        // activate the ragdoll for all child bones
        for (int i = 0; i < current.childCount; ++i)
            ActivateRagDoll (current.GetChild (i), disable, useGravity);
        
        // activate the ragdoll for the bone we're on
        if (current.rigidbody != null && current.collider != null) {
            current.collider.enabled = !disable;
            current.rigidbody.isKinematic = disable;
            current.rigidbody.useGravity = useGravity;
        }

    }
}
