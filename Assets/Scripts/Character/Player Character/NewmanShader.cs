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
        Shader_Shadow,
        Shader_Camo
    }
    ;

    // These are the materials we are going to be changing
    private List<Material> _changeableMaterials;

    // Used to see if the character this is attached to is moving slow enough to sneak
    private CharacterAnimator _anim;

    // Currently hidden in shadow?
    private bool _inShadow = false;

    // How much longer the camo will be active
    private float _camoTime = 0;

    // Current shader that we need to LERP our color info to.
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
        foreach (MeshRenderer render in GetComponentsInChildren<MeshRenderer>()) {
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

    public void ActivateCamo()
    {
        _camoTime = 5;

    }
    
    void Update()
    {
        _camoTime -= Time.deltaTime;

        if (_camoTime > 0) {
            _currShader = ShaderType.Shader_Camo;
        } else if (GameManager.AI.EnemiesChasing > 0) {
            _currShader = ShaderType.Shader_Default;
        } else if (_inShadow) {
            _currShader = ShaderType.Shader_Shadow;
        } else if (_anim.IsGrounded && _anim.IsSneaking) { 
            _currShader = ShaderType.Shader_Sneak;
        } else {
            _currShader = ShaderType.Shader_Default;
        }
        
        ModulateColors();
        
    }
    
    public void ModulateColors()
    {
        Color srcColor = _changeableMaterials [0].GetColor("_Color");
        Color srcOutlineColor = _changeableMaterials [0].GetColor("_OutlineColor");

        // Choose new color
        float rate = 5.0f * Time.deltaTime;
        Color newColor = Color.Lerp(srcColor, new Color(0.8f, 0.8f, 0.8f, 1.0f), rate);
        Color newOutlineColor = Color.Lerp(srcOutlineColor, Color.clear, rate);
        if (_currShader == ShaderType.Shader_Sneak) {
            newColor = Color.Lerp(srcColor, new Color(0.5f, 0.5f, 0.5f, 1.0f), rate);
            newOutlineColor = Color.Lerp(srcOutlineColor, new Color(0.7f, 0.7f, 0.7f, 0.2f), rate);

        } else if (_currShader == ShaderType.Shader_Shadow) {
            newColor = Color.Lerp(srcColor, new Color(1.0f, 1.0f, 1.0f, 0.0f), rate);
            newOutlineColor = Color.Lerp(srcOutlineColor, new Color(1.0f, 1.0f, 1.0f, 0.3f), rate);
            
        } else if (_currShader == ShaderType.Shader_Camo) {
            newColor = Color.Lerp(srcColor, new Color(0f, 0f, 0f, 0f), rate);
            newOutlineColor = Color.Lerp(srcOutlineColor, new Color(0f, 0f, 0f, 0.1f), rate);

            if ((_camoTime < 1.0f && _camoTime > 0.75f) || (_camoTime < 0.5f && _camoTime > 0.25f)) {
                newColor = Color.Lerp(srcColor, new Color(1.0f, 1.0f, 1.0f, 0.0f), rate);
                newOutlineColor = Color.Lerp(srcOutlineColor, new Color(1.0f, 1.0f, 1.0f, 0.3f), rate);
            }
        }

        // Actually apply the colors
        foreach (Material mat in _changeableMaterials) {
            mat.SetColor("_Color", newColor);
            mat.SetColor("_OutlineColor", newOutlineColor);
        }
                
    }
    
    public bool IsInShadow {
        get { return _inShadow; }
    }

    public bool IsCamoActive {
        get { return _camoTime > 0; }
    }
    
}
