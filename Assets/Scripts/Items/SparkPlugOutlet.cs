using UnityEngine;
using System.Collections;

/// <summary>
/// Spark plug outlet indicates a location where the player can use his spark plug to trigger story events.
/// </summary>
[AddComponentMenu("Items/Spark Plug Outlet")]
public class SparkPlugOutlet : MonoBehaviour
{
    public StoryPlug StoryPlugInstance;

    public void TogglePlug()
    {
        StoryPlugInstance.TogglePlug();

    }

    void OnTriggerEnter(Collider other)
    {
        NewmanAnimator character = other.GetComponent<NewmanAnimator>();
        if (character != null) {
            character.sparkPlugOutlet = this;
        }

    }

    void OnTriggerExit(Collider other)
    {
        NewmanAnimator character = other.GetComponent<NewmanAnimator>();
        if (character != null) {
            character.sparkPlugOutlet = null;
        }

    }

}
