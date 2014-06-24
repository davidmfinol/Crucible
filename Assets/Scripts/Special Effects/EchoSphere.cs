using UnityEngine;
using System;
using System.Collections;

[Serializable]
public class EchoSphere
{
    public Material EchoMaterial;
    public Vector3 Position;
    public int SphereIndex = 0;
    
    // Echo sphere Properties
    public float SphereMaxRadius = 10.0f;       //Final size of the echo sphere.
    private float _sphereCurrentRadius = 0.0f;  //Current size of the echo sphere
    
    public float FadeDelay = 0.0f;          //Time to delay before triggering fade.
    public float FadeRate = 1.0f;           //Speed of the fade away
    public float EchoSpeed = 1.0f;          //Speed of the sphere growth.
    
    private bool _isAnimating = false;      //If true, pulse is currently running.
    private float _deltaTime = 0.0f;
    private float _fade = 0.0f;
    
    public EchoSphere(){}
    
    public void Update ()
    {
        if(EchoMaterial == null)
            return;
        
        _deltaTime += Time.deltaTime;
        
        UpdateEcho();
        UpdateProperties();
        
    }
    
    public void TriggerPulse()
    {
        _deltaTime = 0.0f;
        _sphereCurrentRadius = 0.0f;
        _fade = 0.0f;
        _isAnimating = true;
        
    }
    
    void HaltPulse()
    {
        _isAnimating = false;
        
    }
    
    void ClearPulse()
    {
        _fade = 0.0f;
        _sphereCurrentRadius = 0.0f;
        _isAnimating = false;
        
    }
    
    void UpdateEcho()
    {
        if(!_isAnimating)
            return;
        
        if(_sphereCurrentRadius >= SphereMaxRadius){
            HaltPulse();
        } else {
            _sphereCurrentRadius += Time.deltaTime * EchoSpeed;  
        }
        
        float maxFade = SphereMaxRadius / EchoSpeed;
        if(_fade > maxFade){
            return;
        }
        
        if(_deltaTime > FadeDelay)
            _fade += Time.deltaTime * FadeRate;
        
    }
    
    void UpdateProperties()
    {
        if(!_isAnimating)
            return;
        
        float maxRadius = SphereMaxRadius;
        float maxFade = SphereMaxRadius / EchoSpeed;
        
        EchoMaterial.SetVector("_EchoPosition"+SphereIndex.ToString(),Position);
        EchoMaterial.SetFloat("_EchoRadius"+SphereIndex.ToString(),_sphereCurrentRadius);
        EchoMaterial.SetFloat("_EchoFade"+SphereIndex.ToString(),_fade);
        
        EchoMaterial.SetFloat("_EchoMaxRadius",maxRadius);
        EchoMaterial.SetFloat("_EchoMaxFade",maxFade);
        
    }
    
}