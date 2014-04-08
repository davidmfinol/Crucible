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
        Shader_Sneak,
		Shader_Shadow
    };

    private List<Material> _changeableMaterials;

	// used to see if moving slow enough to sneak
	private CharacterAnimator _anim;

	// currently hidden
	private bool _inShadow = false;

	private Shader _shaderDefault;
	private Shader _shaderSneak;
	private Shader _shaderShadow;

    void Start ()
    {
        _changeableMaterials = FindChangeableMaterials ();
        if (_changeableMaterials.Count == 0) {
            Debug.LogWarning ("Unable to find changeable material");
            return;
        }

		_anim = GetComponent<PlayerCharacterAnimator> ();

		_shaderDefault = _changeableMaterials [0].shader;
		_shaderSneak = Shader.Find ("Sneak");
		_shaderShadow = Shader.Find ("Shadow");

		_inShadow = false;

    }
    
    public List<Material> FindChangeableMaterials ()
    {
        List<Material> changeableMaterials = new List<Material> ();
        foreach (SkinnedMeshRenderer render in GetComponentsInChildren<SkinnedMeshRenderer>())
            if (render.gameObject.CompareTag ("Changeable Material"))
                changeableMaterials.Add (render.material);
        return changeableMaterials;

    }
    
    public void SetShader (ShaderType type)
    {
        if (_changeableMaterials.Count == 0) {
            Debug.LogWarning ("Unable to find changeable material");
            return;
        }

        Color mainColor = Color.white;
        Color outlineColor = Color.clear;
        
        if (type == ShaderType.Shader_Default) {
            mainColor = new Color (0.8f, 0.8f, 0.8f, 1.0f);
            outlineColor = Color.clear;

        } else if (type == ShaderType.Shader_Sneak) {
			mainColor = new Color (0.4f, 0.4f, 0.4f, 1.0f);
			outlineColor = new Color(1.0f, 1.0f, 1.0f, 0.1f); //Color.white;

		} else if (type == ShaderType.Shader_Shadow) {
			mainColor = new Color (0.4f, 0.4f, 0.4f, 1.0f);
			outlineColor = new Color(1.0f, 1.0f, 1.0f, 0.1f); //Color.white;

		}

        foreach (Material mat in _changeableMaterials) {
			if(type == ShaderType.Shader_Default)
				mat.shader = _shaderDefault;
			else if(type == ShaderType.Shader_Sneak)
				mat.shader = _shaderSneak;
			else if(type == ShaderType.Shader_Shadow)
				mat.shader = _shaderShadow;

            mat.SetColor ("_Color", mainColor);
            mat.SetColor ("_OutlineColor", outlineColor);
        }
        
    }

	public void Update() {
		// in shadow, always use the shadow shader
		if (_inShadow) {
			SetShader (ShaderType.Shader_Shadow);

		} else if(_anim.IsGrounded && _anim.IsSneaking) {
			SetShader (ShaderType.Shader_Sneak);

		} else {
			SetShader (ShaderType.Shader_Default);

		}

	}
    
    public bool InShadow
    {
		get { return _inShadow; }

    }

    void OnTriggerEnter (Collider other)
    {
        if (other.CompareTag ("Shadow"))
			_inShadow = true;

    }

    void OnTriggerExit (Collider other)
    {
        if (other.CompareTag ("Shadow"))
			_inShadow = false;

    }
	
}
