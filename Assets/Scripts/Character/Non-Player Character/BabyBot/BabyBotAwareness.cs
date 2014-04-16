using UnityEngine;
using System.Collections;
using System.Collections.Generic;

/// <summary>
/// Baby bot awareness changes the babybot's face to let the player know when it asleep.
/// </summary>
[AddComponentMenu("Character/Non-Player Character/BabyBot/BabyBot Awareness")]
public class BabyBotAwareness : MonoBehaviour
{
    public Texture SleepingFace;

    private Material _faceMaterial;
    private Texture _defaultFace;

    void Start() 
    {
        _faceMaterial = FindChangeableMaterials () [0];
        _defaultFace = _faceMaterial.mainTexture;
        _faceMaterial.mainTexture = SleepingFace;

    }
    
    public void ChangeAwareness (EnemyAI.AwarenessLevel awareness)
    {
        Texture texture = _defaultFace;
        if (awareness == EnemyAI.AwarenessLevel.Unaware)
            texture = SleepingFace;

        _faceMaterial.mainTexture = texture;

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
