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
    }
    ;

    private List<Material> _changeableMaterials;
    private ShaderType _currentShader;

	// used to see if moving slow enough to sneak
	private CharacterAnimator _anim;

	// currently hidden
	private bool _inShadow = false;


    void Start ()
    {
        _changeableMaterials = FindChangeableMaterials ();
        if (_changeableMaterials.Count == 0) {
            Debug.LogWarning ("Unable to find changeable material");
            return;
        }

		_anim = GetComponent<PlayerCharacterAnimator> ();
		_inShadow = false;


        SetShader (ShaderType.Shader_Default);

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
        
        _currentShader = type;

        Color mainColor = Color.white;
        Color outlineColor = Color.clear;
        
        if (type == ShaderType.Shader_Default) {
            mainColor = new Color (0.8f, 0.8f, 0.8f, 1.0f);
            outlineColor = Color.clear;
        } else if (type == ShaderType.Shader_Stealth) {
            mainColor = new Color (0.4f, 0.4f, 0.4f, 1.0f);
			outlineColor = new Color(1.0f, 1.0f, 1.0f, 0.1f); //Color.white;
        }

        foreach (Material mat in _changeableMaterials) {
            mat.SetColor ("_Color", mainColor);
            mat.SetColor ("_OutlineColor", outlineColor);
        }
        
    }

	public void Update() {
		//Debug.Log (_anim.IsGrounded + " " + _anim.IsSneaking);

		if( (_anim.IsGrounded && _anim.IsSneaking) || _inShadow) {
			SetShader (ShaderType.Shader_Stealth);

		} else {
			SetShader (ShaderType.Shader_Default);

		}

	}
    
    public bool IsStealth
    {
		get { return _currentShader == ShaderType.Shader_Stealth; }

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
