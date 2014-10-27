using UnityEngine;
using System.Collections.Generic;

/// <summary>
/// Olympus awareness updates olympus's material so that it's color changes to reflect it's current awareness level.
/// </summary>
[AddComponentMenu("Character/Non-Player Character/Olympus/Olympus Awareness")]
public class OlympusAwareness : EnemyAwareness
{
    private OlympusAnimator _anim;

    protected override void OnStart()
    {
        _anim = GetComponent<OlympusAnimator>();

    }

    public override void ChangeAwareness()
    {
        base.ChangeAwareness();
        
        if (Level == AwarenessLevel.Searching) {
            _anim.StartSearch();
        }

        if (Level == AwarenessLevel.Chasing) {
            _anim.OnAcquireTarget();
        }

    }

}
