using UnityEngine;
using System.Collections;

/// <summary>
/// Object pool manager keeps tracks of instances of object to reuse so that we don't have to keep re-creating them.
/// </summary>
[AddComponentMenu("Game/Object Pool Manager")]
public class ObjectPoolManager : MonoBehaviour
{
    // All managers need to let the GameManager know when it is ready
    private bool _ready;

    void Start()
    {
        _ready = true;

    }
    
    public bool Ready {
        get { return _ready; }
    }
}
