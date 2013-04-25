using UnityEngine;
using System.Collections;

// This script must be attached to a game object to tell Unity where the death zones are
public class DeathTrigger : MonoBehaviour {

    // Whoever enters the DeathTrigger gets an OnDeath message sent to them; no response is necessary
    void OnTriggerEnter(Collider other)
    {
        other.gameObject.SendMessage("OnDeath", SendMessageOptions.DontRequireReceiver);
    }

    // We'll draw a gizmo in the scene view, so it can be seen
    void OnDrawGizmos()
    {
        Gizmos.DrawIcon(transform.position, "Skull and Crossbones Icon.tif");
    }
}
