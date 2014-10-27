using UnityEngine;
using System.Collections;
using System.Collections.Generic;

/// <summary>
/// Baby bot awareness changes the babybot's face to let the player know when it asleep.
/// </summary>
[AddComponentMenu("Character/Non-Player Character/BabyBot/BabyBot Awareness")]
public class BabyBotAwareness : EnemyAwareness
{
    public Texture SleepingFace;
    private Texture _defaultFace;
    private BabyBotAnimator _animator;

    protected override void OnStart()
    {
        _defaultFace = FaceMaterial.mainTexture;
        FaceMaterial.mainTexture = SleepingFace;

    }
    
    public override void ChangeAwareness()
    {
        Texture texture = _defaultFace;
        if (Level == AwarenessLevel.Unaware) {
            texture = SleepingFace;
        }

        FaceMaterial.mainTexture = texture;

    }

    public Material FaceMaterial {
        get { return ChangeableMaterials[0]; }
    }

}
