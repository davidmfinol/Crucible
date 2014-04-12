using UnityEngine;
using System.Collections;

/// <summary>
/// Baby bot AI specifies AI behaviour specific to the BabyBot enemy type.
/// </summary>
[AddComponentMenu("AI/BabyBot AI")]
public class BabyBotAI : EnemyAI
{
    protected override void UpdateAwareness ()
    {
        base.UpdateAwareness ();
        Settings.CanSee = Awareness != AwarenessLevel.Unaware;
    }

    // It may be un-realistic, but babybot will just go after you even just off hearing
    protected override void Search ()
    {
        Chase ();
    }

    protected override void Chase ()
    {
        NavigateToAstarTarget (Settings.ChaseSpeedRatio);
        Animator.CharInput.Attack = IsPlayerInAttackRange && !Animator.IsDead ? 1 : 0;
    }

    public override void NavigateToAstarTarget (float speedRatio)
    {
        Animator.CharInput.Horizontal = GameManager.Player.transform.position.x - transform.position.x;
        Animator.CharInput.Jump = Vector2.up;
    }

}
