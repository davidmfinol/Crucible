using UnityEngine;
using System.Collections.Generic;

/// <summary>
/// Olympus awareness updates olympus's material so that it's color changes to reflect it's current awareness level.
/// </summary>
[AddComponentMenu("Character/Non-Player Character/Olympus/Olympus Awareness")]
public class OlympusAwareness : MonoBehaviour
{
    public Color ChasingColor = Color.red;
    public Color SearchingColor = Color.yellow;
    public Color WanderingColor = Color.white;
    private List<Material> _changeableMaterials;

    void Start ()
    {
        _changeableMaterials = FindChangeableMaterials ();

    }

    public void ChangeAwareness (EnemyAI.AwarenessLevel awareness)
    {
        Color newColor = Color.black;
        switch (awareness) {
        case EnemyAI.AwarenessLevel.Unaware:
            newColor = WanderingColor;
            break;
        case EnemyAI.AwarenessLevel.Searching:
            newColor = SearchingColor;
            break;
        case EnemyAI.AwarenessLevel.Chasing:
            newColor = ChasingColor;
            break;
        }

        foreach (Material mat in _changeableMaterials)
            mat.color = newColor;

    }

    public List<Material> FindChangeableMaterials ()
    {
        List<Material> changeableMaterials = new List<Material> ();
        foreach (MeshRenderer render in GetComponentsInChildren<MeshRenderer>())
            if (render.gameObject.CompareTag ("Changeable Material"))
                changeableMaterials.Add (render.material);
        return changeableMaterials;

    }

}
