using UnityEngine;
using System.Collections;

/// <summary>
/// Baby bot AI specifies AI behaviour specific to the BabyBot enemy type.
/// </summary>
[AddComponentMenu("AI/BabyBot AI")]
public class BabyBotAI : EnemyAI
{
    BabyBotAwareness _babyBotAwareness;

    protected override void OnStart()
    {
        _babyBotAwareness = GetComponent<BabyBotAwareness> ();

    }

    protected override void UpdateAwareness ()
    {
        AwarenessLevel oldAwareness = Awareness;

        base.UpdateAwareness ();

        Settings.CanSee = Awareness != AwarenessLevel.Unaware;

		// if baby bot attacking, remain in chasing mode.
		if(Animator.CurrentState.nameHash == BabyBotAnimator.AttackState)
            Awareness = AwarenessLevel.Chasing;

        // update the babybot's face as appropriate
        if(oldAwareness != Awareness)
            _babyBotAwareness.ChangeAwareness (Awareness);

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
