using UnityEngine;
using System.Collections;
using System.Collections.Generic;

/// <summary>
/// Enemy awareness keeps track of hwo aware an enemy is of the player, and reflects it onto their body/face.
/// </summary>
[AddComponentMenu("Artificial Intelligence/Enemy Awareness")]
public class EnemyAwareness : MonoBehaviour
{
    public enum AwarenessLevel : int
    {
        Unaware = 0,
        Searching = 1,
        Chasing = 2
    }
    
    public Color WanderingColor = Color.white;
    public Color SearchingColor = Color.yellow;
    public Color ChasingColor = Color.red;

    // How aware is the enemy of the player?
    private AwarenessLevel _level = AwarenessLevel.Unaware;

    // The materials we change to display awareness
    private List<Material> _changeableMaterials;
    
    void Start()
    {
        _changeableMaterials = new List<Material>();
        foreach (MeshRenderer render in GetComponentsInChildren<MeshRenderer>()) {
            if (render.gameObject.CompareTag("Changeable Material")) {
                _changeableMaterials.Add(render.material);
            }
        }

        OnStart();
        
    }

    protected virtual void OnStart()
    {
        // Child classes may override
    }

    public virtual void ChangeAwareness()
    {
        Color newColor = Color.black;
        switch (Level) {
            case AwarenessLevel.Unaware:
                newColor = WanderingColor;
                break;
            case AwarenessLevel.Searching:
                newColor = SearchingColor;
                break;
            case AwarenessLevel.Chasing:
                newColor = ChasingColor;
                break;
        }
        
        foreach (Material mat in _changeableMaterials) {
            mat.color = newColor;
        }

    }

    public AwarenessLevel Level {
        get { return _level; }
        set { _level = value; }
    }

    public List<Material> ChangeableMaterials {
        get { return _changeableMaterials; }
    }

}
