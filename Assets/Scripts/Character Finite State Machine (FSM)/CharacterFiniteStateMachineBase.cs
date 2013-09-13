using UnityEngine;
using System;
using System.Collections;
using System.Collections.Generic;

/// <summary>
/// Character finite state machine base runs the finite state machine (FSM) that controls characters in the game.
/// Basically, it keeps track of the character's current state and tells that state to do the appropriate processing.
/// It also holds appropriate information about platforming/ZLevel/character-physics.
/// </summary>
[RequireComponent(typeof(CharacterController))]
public abstract class CharacterFiniteStateMachineBase : MonoBehaviour
{
	/*
    void Awake()
    {
        // Zlevel setup
        ZLevel = transform.position.z;
        Z_Down = ZLevel;
        Z_Up = ZLevel;
    }

    // Update() is called once per frame, and this is where the states are processed by the state machine
    public void Update()
    {
        // Correct our Z value when we are in only one zone
        if (Zones.Count == 1 && !CanTransitionZ)
        {
            IEnumerator<Zone> it = Zones.GetEnumerator();
            it.MoveNext();
            Z_Down = it.Current.transform.position.z;
            Z_Up = it.Current.transform.position.z;
            ZLevel = it.Current.transform.position.z;
        }
    }

    // Helper Method to find a bone attached to a character
    public static Transform SearchHierarchyForBone(Transform current, string name)
    {
        // check if the current bone is the bone we're looking for, if so return it
        if (current.name == name)
            return current;

        // search through child bones for the bone we're looking for
        for (int i = 0; i < current.GetChildCount(); ++i)
        {
            // the recursive step; repeat the search one step deeper in the hierarchy
            Transform found = SearchHierarchyForBone(current.GetChild(i), name);

            // a transform was returned by the search above that is not null,
            // it must be the bone we're looking for
            if (found != null)
                return found;
        }

        // bone with name was not found
        return null;
    }

    // Helper method to determine what a character's VerticalSpeed should be while mid-air
    public float ApplyGravity()
    {
        float speed = VerticalSpeed;
        speed -= Gravity * Time.deltaTime;
        speed = Mathf.Max(-1.0f * MaxFallSpeed, speed);
        return speed;
    }
    */
}