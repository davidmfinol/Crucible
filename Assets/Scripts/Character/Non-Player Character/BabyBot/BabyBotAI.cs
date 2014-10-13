using UnityEngine;
using System.Collections;

/// <summary>
/// Baby bot AI specifies AI behaviour specific to the BabyBot enemy type.
/// </summary>
[AddComponentMenu("Artificial Intelligence/BabyBot AI")]
public class BabyBotAI : EnemyAI
{
    private BabyBotAwareness _babyBotAwareness;

    protected override void OnStart()
    {
        _babyBotAwareness = GetComponent<BabyBotAwareness>();

    }

    protected override void UpdateAwareness(float elapsedTime)
    {
        AwarenessLevel oldAwareness = Awareness;

        base.UpdateAwareness(elapsedTime);

        Settings.CanSee = Awareness != AwarenessLevel.Unaware;

        // If babybot is attacking, remain in the chasing mode
        if (Animator.CurrentState.nameHash == BabyBotAnimator.AttackState) {
            Awareness = AwarenessLevel.Chasing;
        }
        
        // Make sure we update our target when we start chasing
        if (Awareness != AwarenessLevel.Unaware) {
            UpdateAStarTarget(Vector3.zero);
        }

        // Update the babybot's face as appropriate
        if (oldAwareness != Awareness) {
            _babyBotAwareness.ChangeAwareness(Awareness);
        }

    }

    // It may be un-realistic, but babybot will just go after you even just off hearing
    protected override void Search(float elapsedTime)
    {
        Chase(elapsedTime);

    }

    protected override void Chase(float elapsedTime)
    {
        if (!UpdateAStarPath(elapsedTime, Settings.ChaseSpeedRatio)) {
            return;
        }
        NavigateToAstarTarget(Settings.ChaseSpeedRatio);
        Animator.CharInput.Attack = IsPlayerInAttackRange && !Animator.IsDead ? 1 : 0;

    }

    public override void NavigateToAstarTarget(float speedRatio)
    {
        base.NavigateToAstarTarget(speedRatio);
        if (Animator.IsGrounded) {
            Animator.CharInput.Jump = Vector2.up + Vector2.right * (GameManager.Player.transform.position.x - Animator.transform.position.x);
        }

    }

}
