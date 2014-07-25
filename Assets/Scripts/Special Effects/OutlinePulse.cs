using UnityEngine;
using System.Collections.Generic;

/// <summary>
/// Outline pulse makes an object's outline pulse synchronized to time.
/// NOTE: MUST USE OUTLINED SHADER.
/// </summary>
[AddComponentMenu("Special Effects/Outline Pulse")]
public class OutlinePulse : MonoBehaviour
{
	// Normally, we want to use the changeable materials tag to find the materials we want,
	// but we may have another use for the tag and are willing to just use the material on the root object
	public bool SearchForChangeableMaterials = true;
    public bool PulseToWhite = true;
	public bool StartOn = true;

    private List<Material> _changeableMaterials;
    private Color _targetColor;
	private bool _on;

    void Start()
    {
		if(SearchForChangeableMaterials)
        	_changeableMaterials = FindChangeableMaterials ();
		else {
			_changeableMaterials = new List<Material>();
			_changeableMaterials.Add(renderer.material);
		}

        _targetColor = _changeableMaterials[0].GetColor("_OutlineColor");
        if(PulseToWhite)
            _targetColor = Color.white;

		if (StartOn)
			_on = true;
        
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
		if(!_on)
			alpha = 0;
        Color targetColor = new Color (_targetColor.r, _targetColor.g, _targetColor.b, alpha);
    
        foreach (Material mat in _changeableMaterials)
            mat.SetColor ("_OutlineColor", targetColor);

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
