using UnityEngine;
using System.Collections.Generic;

/// <summary>
/// Newman shader is responsible for managing the settings for the shader attached to the player character.
/// </summary>
[AddComponentMenu("Character/Player Character/Newman Shader")]
public class NewmanShader : MonoBehaviour
{
    public enum ShaderType : int
    {
        Shader_Default = 0,
        Shader_Sneak,
        Shader_Shadow
    }
    ;

    private List<Material> _changeableMaterials;

    // used to see if moving slow enough to sneak
    private CharacterAnimator _anim;

    // currently hidden
    private bool _inShadow = false;

    // current shader that we need to LERP our color info to.
    private ShaderType _currShader;
    
    void Start()
    {
        _changeableMaterials = FindChangeableMaterials();

        _anim = GetComponent<NewmanAnimator>();

        _inShadow = false;

        // what is our curr shader, and how long have we been in it?
        _currShader = ShaderType.Shader_Sneak;

    }
    
    public List<Material> FindChangeableMaterials()
    {
        List<Material> changeableMaterials = new List<Material>();
        foreach (SkinnedMeshRenderer render in GetComponentsInChildren<SkinnedMeshRenderer>()) {
            if (render.gameObject.CompareTag("Changeable Material")) {
                changeableMaterials.AddRange(render.materials);
            }
        }
        return changeableMaterials;

    }
    
    void OnTriggerEnter(Collider other)
    {
        if (other.CompareTag("Shadow")) {
            _inShadow = true;
        }
        
    }
    
    void OnTriggerExit(Collider other)
    {
        if (other.CompareTag("Shadow")) {
            _inShadow = false;
        }
        
    }
    
    public void Update()
    {
        // shader transitions
        if (GameManager.AI.EnemiesChasing > 0) {
            if (_currShader != ShaderType.Shader_Default) {
                _currShader = ShaderType.Shader_Default;
            }
            
        } else if (_inShadow) { 
            if (_currShader != ShaderType.Shader_Shadow) {
                _currShader = ShaderType.Shader_Shadow;
            }
            
        } else if (_anim.IsGrounded && _anim.IsSneaking) {
            if (_currShader != ShaderType.Shader_Sneak) {
                _currShader = ShaderType.Shader_Sneak;
            }
            
        } else if (_currShader != ShaderType.Shader_Default) {
            _currShader = ShaderType.Shader_Default;
        }
        
        ModulateColors();
        
    }
    
    public void ModulateColors()
    {
        Color srcColor = _changeableMaterials [0].GetColor("_Color");
        Color srcOutlineColor = _changeableMaterials [0].GetColor("_OutlineColor");
        
        Color newColor;
        Color newOutlineColor;

        float rate = 5.0f * Time.deltaTime;

        if (_currShader == ShaderType.Shader_Sneak) {
            newColor = Color.Lerp(srcColor, new Color(0.5f, 0.5f, 0.5f, 1.0f), rate);
            newOutlineColor = Color.Lerp(srcOutlineColor, new Color(0.7f, 0.7f, 0.7f, 0.2f), rate);

        } else if (_currShader == ShaderType.Shader_Shadow) {
            newColor = Color.Lerp(srcColor, new Color(1.0f, 1.0f, 1.0f, 0.0f), rate);
            newOutlineColor = Color.Lerp(srcOutlineColor, new Color(1.0f, 1.0f, 1.0f, 0.3f), rate);

            // default shader if none else.
        } else {
            newColor = Color.Lerp(srcColor, new Color(0.8f, 0.8f, 0.8f, 1.0f), rate);
            newOutlineColor = Color.Lerp(srcOutlineColor, Color.clear, rate);

        }

        foreach (Material mat in _changeableMaterials) {
            mat.SetColor("_Color", newColor);
            mat.SetColor("_OutlineColor", newOutlineColor);
            
        }
                
    }
    
    public bool InShadow {
        get { return _inShadow; }
    }
    
}
