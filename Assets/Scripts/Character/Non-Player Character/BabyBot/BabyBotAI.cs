using UnityEngine;
using System.Collections;

/// <summary>
/// Baby bot AI specifies AI behaviour specific to the BabyBot enemy type.
/// </summary>
[RequireComponent(typeof(BabyBotAwareness))]
[AddComponentMenu("Artificial Intelligence/BabyBot AI")]
public class BabyBotAI : EnemyAI
{

    // Babybot does not wander, as he just sleeps all the time
    protected override void Wander(float elapsedTime, bool awarenessChanged)
    {
        Settings.CanSee = false;

    }

    // It may be un-realistic, but babybot will just hunt the player down even just off hearing
    protected override void Search(float elapsedTime, bool awarenessChanged)
    {
        Chase(elapsedTime, awarenessChanged);

    }

    protected override void Chase(float elapsedTime, bool awarenessChanged)
    {
        // Target the player when it starts chasing
        Settings.CanSee = false;
        if (awarenessChanged) {
            UpdateAStarTarget(Vector3.zero);
        }

        // Use Astar by default
        if (UpdateAStarPath(elapsedTime, Settings.ChaseSpeedRatio)) {
            NavigateToAstarTarget(Settings.ChaseSpeedRatio);

            // Ignore the astar if they're on the same platform
            int nodeOffset = Path.vectorPath.Count - Path.path.Count;
            ZoneNode nextNode = null;
            if (CurrentPathWaypoint - nodeOffset < Path.path.Count) {
                nextNode = (ZoneNode)Path.path [CurrentPathWaypoint - nodeOffset];
            }
            if (nextNode != null && GameManager.Player.ActivePlatform != null && nextNode.GO == GameManager.Player.ActivePlatform.gameObject) {
                CharAnimator.CharInput.Horizontal = GameManager.Player.transform.position.x > transform.position.x ? 1.0f : -1.0f;
            }

        }  // Keep moving towards the player if we're at the end of the path
        else if (Path != null && CurrentPathWaypoint >= Path.vectorPath.Count) {
            CharAnimator.CharInput.Horizontal = GameManager.Player.transform.position.x > transform.position.x ? 1.0f : -1.0f;
        }

        // Jump if on ground
        if (CharAnimator.IsGrounded) {
            CharAnimator.CharInput.Jump = Vector2.up + Vector2.right * (GameManager.Player.transform.position.x - CharAnimator.transform.position.x);
        }
        // Attack if in range
        CharAnimator.CharInput.Attack = IsPlayerInAttackRange && !CharAnimator.IsDead ? 1 : 0;

    }

    // Since babybot is always mid-air, he modifies his path midair
    public override bool UpdateAStarPath(float elapsedTime, float speedRatio = 1.0f, bool repathOnInvalid = true)
    {
        if (!base.UpdateAStarPath(elapsedTime, speedRatio, repathOnInvalid)) {
            return false;
        } 

        if (!CharAnimator.IsGrounded && IsTouchingNextWaypoint) {
            CurrentPathWaypoint++;
        }

        return CurrentPathWaypoint < Path.vectorPath.Count;
        
    }

    // Babybot is super simple: move left or right
    public override void NavigateToAstarTarget(float speedRatio)
    {
        CharAnimator.CharInput.Horizontal = NextWaypoint.x - transform.position.x > 0 ? speedRatio : -speedRatio;

    }

    public override bool IsSeeingPlayer {
        get { return base.IsSeeingPlayer || CharAnimator.CurrentState.nameHash == BabyBotAnimator.AttackState; }
    }

    // Babybot only cares about x-position on waypoints
    public override bool IsTouchingNextWaypoint { 
        get { return Mathf.Abs(FootPosition.x - NextWaypoint.x) < Settings.TargetLeniency && Mathf.Abs(FootPosition.y - NextWaypoint.y) < CharAnimator.Settings.JumpHeight; }
    }

}
