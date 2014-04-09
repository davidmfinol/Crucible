using UnityEngine;
using System.Collections.Generic;

/// <summary>
/// Outline pulse makes an object's outline pulse synchronized to time.
/// NOTE: MUST USED OUTLINED SHADER, in addition to having changeable materials tagged.
/// </summary>
[AddComponentMenu("Special Effects/Outline Pulse")]
public class OutlinePulse : MonoBehaviour
{
    private List<Material> _changeableMaterials;

    void Start()
    {
        _changeableMaterials = FindChangeableMaterials ();
        
        foreach (Material mat in _changeableMaterials)
            mat.SetFloat ("_Outline", 0.002f);

    }

    void Update ()
    {
        float time = Time.timeSinceLevelLoad;
        time %= 2.0f;
        time /= 2.0f;
        time *= 2 * Mathf.PI;
    
        float alpha = Mathf.Cos (time);
        Color itemPickupColor = new Color (1.0f, 1.0f, 1.0f, alpha);
    
        foreach (Material mat in _changeableMaterials)
            mat.SetColor ("_OutlineColor", itemPickupColor);

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
