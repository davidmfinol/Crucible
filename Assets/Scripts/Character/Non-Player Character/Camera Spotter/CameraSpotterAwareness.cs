using UnityEngine;
using System.Collections;

/// <summary>
/// Camera awareness updates the camera spotter's vision cone between red and white as appropriate.
/// </summary>
[AddComponentMenu("Character/Non-Player Character/Camera Spotter/Camera Spotter Awareness")]
public class CameraSpotterAwareness : MonoBehaviour
{
    public Color WanderingColor = new Color(1f, 1f, 1f, 0.25f);
    public Color ChasingColor = new Color(1f, 0f, 0f, 0.25f);
    private Material _visionConeMaterial;

    void Start()
    {
        foreach (MeshRenderer render in GetComponentsInChildren<MeshRenderer>()) {
            if (render.gameObject.CompareTag("Changeable Material")) {
                _visionConeMaterial = render.material;
            }
        }

    }
    
    public void ChangeAwareness(EnemyAI.AwarenessLevel awareness)
    {
        Color newColor = WanderingColor;

        if (awareness == EnemyAI.AwarenessLevel.Chasing) {
            newColor = ChasingColor;
        }

        _visionConeMaterial.color = newColor;
        
    }


}
