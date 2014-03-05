using UnityEngine;
using System.Collections.Generic;

/// <summary>
/// Player character shader is responsible for managing the settings for the shader attached to the player character.
/// </summary>
[AddComponentMenu("Character/Player Character/Player Character Shader")]
public class PlayerCharacterShader : MonoBehaviour
{
	public enum ShaderType : int
	{
		Shader_Default = 0,
		Shader_Stealth
	};

	private List<Material> _changeableMaterials;
	private bool _currentlyHidden = false;

	private ShaderType _currentShader;

	void Start()
	{
		_changeableMaterials = FindChangeableMaterials();
		if (_changeableMaterials.Count == 0)
		{
			Debug.LogWarning("Unable to find changeable material");
			return;
		}

		SetShader (ShaderType.Shader_Default);
    }
    
    public List<Material> FindChangeableMaterials()
    {
        List<Material> changeableMaterials = new List<Material> ();
        foreach (SkinnedMeshRenderer render in GetComponentsInChildren<SkinnedMeshRenderer>())
            if(render.gameObject.CompareTag("Changeable Material"))
                changeableMaterials.Add(render.material);
        return changeableMaterials;
    }
    
    public void SetShader(ShaderType type)
    {
        if (_changeableMaterials.Count == 0)
        {
            Debug.LogWarning("Unable to find changeable material");
            return;
        }
        
        _currentShader = type;

        Color mainColor = Color.white;
        Color outlineColor = Color.clear;
        
        if (type == ShaderType.Shader_Default)
        {
            mainColor = new Color(0.7f, 0.7f, 0.7f, 1.0f);
            outlineColor = Color.clear;
        }
        else if (type == ShaderType.Shader_Stealth)
        {
            mainColor = new Color (0.0f, 0.0f, 0.0f, 1.0f);
            outlineColor = Color.white;
        }

        foreach (Material mat in _changeableMaterials)
        {
            mat.SetColor("_Color", mainColor);
            mat.SetColor("_OutlineColor", outlineColor);
        }
        
    }
    
    public bool OnDefaultShader()
    {
        if (_changeableMaterials.Count == 0)
        {
            Debug.LogWarning("Unable to find changeable material");
            return false;
        }
        
        return(_currentShader == ShaderType.Shader_Default);
    }

	void OnTriggerEnter(Collider other)
	{
		if (other.CompareTag ("Shadow") )
			CurrentlyHidden = true;
	}

	void OnTriggerExit(Collider other)
	{
		if (other.CompareTag ("Shadow"))
			CurrentlyHidden = false;
	}


	public bool CurrentlyHidden
	{
		get { return _currentlyHidden; }
		set
		{
			_currentlyHidden = value;
			if(_currentlyHidden)
				SetShader (ShaderType.Shader_Stealth);
			else
				SetShader (ShaderType.Shader_Default);
		}
	}
}
