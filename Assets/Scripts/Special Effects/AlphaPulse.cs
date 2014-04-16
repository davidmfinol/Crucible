using UnityEngine;
using System.Collections;
using System.Collections.Generic;

/// <summary>
/// Alpha pulse can be attached to an object to give it a pulsing effect by changing it's materials alpha values.
/// NOTE: MUST HAVE CHANGEABLE MATERIALS TAGGED ON THE OBJECT.
/// </summary>
[AddComponentMenu("Special Effects/Alpha Pulse")]
public class AlphaPulse : MonoBehaviour
{
    // thresholds
    public float MinAlpha = 0.0f;
    public float MaxAlpha = 1.0f;
    // time for a full cycle
    public float Period = 2.0f;
    public bool StartOn = false;

    // find a list of materials to change.
    private List<Material> _changeableMaterials;
    private bool _on;
    // -1 as it fades down, 1 as it fades up
    private int _dir;
    // track the alpha
    private float _alpha;

    public void Start ()
    {
        if (StartOn)
            _on = true;

        _changeableMaterials = FindChangeableMaterials ();

        _dir = 1;
        _alpha = 0.0f;
        ApplyAlpha ();

    }
    
    public void Update ()
    {

        // When on, pulse
        if (_on) {

            if (_dir == 1 && _alpha >= MaxAlpha)
                _dir = -1;
            else if (_dir == -1 && _alpha <= MinAlpha)
                _dir = 1;

            // when turned off, fade to 0
        } else {
            _dir = -1;

        }
        
        _alpha += (_dir * Period * Time.deltaTime);
        
        // keep to the minimum
        _alpha = Mathf.Max (_alpha, 0.0f);

        ApplyAlpha ();

    }
    
    public void ApplyAlpha ()
    {
        foreach (Material m in _changeableMaterials)
            m.color = new Vector4 (m.color.r, m.color.g, m.color.b, _alpha);

    }

    public List<Material> FindChangeableMaterials ()
    {
        List<Material> changeableMaterials = new List<Material> ();
        foreach (MeshRenderer render in GetComponentsInChildren<MeshRenderer>())
            if (render.gameObject.CompareTag ("Changeable Material"))
                changeableMaterials.Add (render.material);
        return changeableMaterials;
        
    }

    public bool On {
        get { return _on; }
        set { _on = value; }
    }

}
