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
    */
}