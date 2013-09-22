using UnityEngine;
using System.Collections.Generic;

/// <summary>
/// Hangable object defines an object that a player can hang off.
/// </summary>
[RequireComponent(typeof(Collider))]
[AddComponentMenu("Platforming/Hangable Object")]
public class HangableObject : MonoBehaviour
{
    public bool FacesZAxis = true;
	
    void OnTriggerEnter(Collider other)
    {
        CharacterAnimator character = other.GetComponent<CharacterAnimator>();
        if (character != null)
            character.AddHangTarget(this);
    }

    void OnTriggerExit(Collider other)
    {
        CharacterAnimator character = other.GetComponent<CharacterAnimator>();
        if (character != null)
            character.RemoveHangTarget(this);
    }

    void OnCollisionEnter(Collision collision)
    {
        CharacterAnimator character = collision.gameObject.GetComponent<CharacterAnimator>();
        if (character != null)
            character.AddHangTarget(this);
    }

    void OnCollisionExit(Collision collision)
    {
        CharacterAnimator character = collision.gameObject.GetComponent<CharacterAnimator>();
        if (character != null)
            character.RemoveHangTarget(this);
    }

    public virtual bool DoesFaceZAxis()
    {
        return FacesZAxis;
    }
    public virtual bool DoesFaceXAxis()
    {
        return !FacesZAxis;
    }
}
