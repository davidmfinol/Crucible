using UnityEngine;
using System.Collections;

/// <summary>
/// Death trigger is attached to a game object that will automatically trigger an instant death.
/// </summary>
public class DeathTrigger : MonoBehaviour
{

    // Whoever enters the DeathTrigger gets an OnDeath message sent to them; no response is necessary
    public void OnTriggerEnter(Collider other)
    {
        other.gameObject.SendMessage("OnDeath", SendMessageOptions.DontRequireReceiver);
    }

    // We'll draw a gizmo in the scene view, so it can be seen
    public void OnDrawGizmos()
    {
        Gizmos.DrawIcon(transform.position, "Skull and Crossbones Icon.tif");
    }
}
