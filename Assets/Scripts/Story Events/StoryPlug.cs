using UnityEngine;
using System.Collections;

/// <summary>
/// Story plug represents an in-game event that happens when you place or remove a sparkplug from a sparkplugoutlet
/// </summary>
[AddComponentMenu("Story Events/Story Plug")]
public abstract class StoryPlug : MonoBehaviour
{
    public abstract void TogglePlug();
}
