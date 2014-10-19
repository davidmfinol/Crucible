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
        // Use Astar by default
        if (UpdateAStarPath(elapsedTime, Settings.ChaseSpeedRatio)) {
            //NavigateToAstarTarget(Settings.ChaseSpeedRatio);

            // Ignore the astar if they're on the same platform
            int nodeOffset = Path.vectorPath.Count - Path.path.Count;
            ZoneNode nextNode = null;
            if (CurrentPathWaypoint - nodeOffset < Path.path.Count) {
                nextNode = (ZoneNode)Path.path [CurrentPathWaypoint - nodeOffset];
            }
            if(nextNode != null && GameManager.Player.ActivePlatform != null && nextNode.GO == GameManager.Player.ActivePlatform.gameObject) {
                Animator.CharInput.Horizontal = GameManager.Player.transform.position.x > transform.position.x ? 1.0f : -1.0f;
                Animator.CharInput.Jump = Vector2.up + Vector2.right * (GameManager.Player.transform.position.x - Animator.transform.position.x);
            }
        }

        // Keep moving towards the player if we're at the end of the path
        else if (Path != null && CurrentPathWaypoint >= Path.vectorPath.Count) {
            Animator.CharInput.Horizontal = GameManager.Player.transform.position.x > transform.position.x ? 1.0f : -1.0f;
            Animator.CharInput.Jump = Vector2.up + Vector2.right * (GameManager.Player.transform.position.x - Animator.transform.position.x);
        }

        Animator.CharInput.Attack = IsPlayerInAttackRange && !Animator.IsDead ? 1 : 0;

    }

    public override bool UpdateAStarPath(float elapsedTime, float speedRatio = 1.0f, bool repathOnInvalid = true)
    {
        if (!base.UpdateAStarPath(elapsedTime, speedRatio, repathOnInvalid)) {
            return false;
        } 

        // Babybot is more lenient about when it can repath (since it doesn't need to be on the ground)
        bool isTouchingNextNode = Mathf.Abs(FootPosition.x - Path.vectorPath [CurrentPathWaypoint].x) < Settings.TargetLeniency;
        if (!Animator.IsGrounded && isTouchingNextNode) {
            CurrentPathWaypoint++;
        }

        return CurrentPathWaypoint < Path.vectorPath.Count;
        
    }

    public override void NavigateToAstarTarget(float speedRatio)
    {
        // Determine horizontal
        Vector3 targetPos = Path.vectorPath [CurrentPathWaypoint];
        bool isNodeToRight = targetPos.x - transform.position.x > 0;
        Animator.CharInput.Horizontal = isNodeToRight ? speedRatio : -speedRatio;
        
        // Determine Jump
        if (Animator.IsGrounded) {
            Animator.CharInput.Jump = Vector2.up + Vector2.right * (GameManager.Player.transform.position.x - Animator.transform.position.x);
        }

    }

}
