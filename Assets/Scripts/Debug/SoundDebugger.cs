using UnityEngine;
using System.Collections;

/// <summary>
/// Sound debugger.
/// </summary>
[AddComponentMenu("Debug/Sound Debugger")]
public class SoundDebugger : MonoBehaviour
{
    public Transform SoundPrefab;
    
    void Awake()
    {
        enabled = Debug.isDebugBuild;

    }

    void Update()
    {
        if (Input.GetKeyDown(KeyCode.J)) {
            Instantiate(SoundPrefab, GameManager.Player.transform.position, Quaternion.identity);
        }

    }
}
