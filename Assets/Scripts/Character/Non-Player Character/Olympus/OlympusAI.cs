using UnityEngine;
using System.Collections;

/// <summary>
/// Olympus AI specifies AI behaviour specific to the Olympus enemy type.
/// </summary>
[RequireComponent(typeof(HeadLookController))]
[AddComponentMenu("Artificial Intelligence/Olympus AI")]
public class OlympusAI : EnemyAI
{
    // If Olympus's next node is within MinimumLook, Olympus will look at the node after it
    public float MinimumLook = 10.0f;

    // Olympus lights up different colors based off awarenesslevel
    private OlympusAwareness _olympusAwareness;

    // Olympus looks at where he's going
    private HeadLookController _headLook;
    
    // Settings for how the Olympus wanders
    private float _timeLeftWandering;
    private float _timeSpentIdling;
    private Bounds _wanderZone;
    
    // Help prevent getting stuck in certain places
    //private Vector3 _lastFrameLocation = Vector3.zero;

    protected override void OnStart()
    {
        _olympusAwareness = GetComponent<OlympusAwareness>();
        _headLook = GetComponent<HeadLookController>();
        _timeLeftWandering = Settings.WanderTime;
        _timeSpentIdling = 0;
        _wanderZone = new Bounds(Vector3.zero, Vector3.zero);
        //_lastFrameLocation = transform.position;

    }

    protected override void UpdateAwareness(float elapsedTime)
    {
        AwarenessLevel oldAwareness = Awareness;

        base.UpdateAwareness(elapsedTime);
        
        // Make sure we update our target when we start chasing
        if (oldAwareness != AwarenessLevel.Chasing && Awareness == AwarenessLevel.Chasing) {
            UpdateAStarTarget(Vector3.zero);

            OlympusAnimator oa = (OlympusAnimator)Animator;
            if (oa != null) {
                oa.OnAcquireTarget();
            }
        }
        
        // Likewise, make sure we update our target when we start wandering
        if (oldAwareness != AwarenessLevel.Unaware && Awareness == AwarenessLevel.Unaware) {
            GetRandomSearchPoint(_wanderZone);

            OlympusAnimator oa = (OlympusAnimator)Animator;
            if (oa != null) {
                oa.StartSearch();
            }
        }

        // initiate the color change on alert
        if (oldAwareness != Awareness) {
            _olympusAwareness.ChangeAwareness(Awareness);

        }

    }

    // Olympus always looks at his next target position
    public override bool UpdateAStarPath(float elapsedTime, float speedRatio, bool repathOnInvalid)
    {
        if (base.UpdateAStarPath(elapsedTime, speedRatio, repathOnInvalid)) {
            Vector3 target = Path.vectorPath [CurrentPathWaypoint];
            if (CurrentPathWaypoint < Path.vectorPath.Count - 2 && Mathf.Abs(target.x - transform.position.x) < MinimumLook) {
                target = Path.vectorPath [CurrentPathWaypoint + 1];
            }
            SetLook(target.y < transform.position.y + Animator.Height, target); // We don't look up
            return true;

        } else { 
            SetLook(false, Vector3.zero);
        } // Can't look if we don't know where to look
        return false;

    }

    // A helper method to make olympus look with his vision cone at a spot
    public void SetLook(bool shouldLook, Vector3 target)
    {
        _headLook.enabled = shouldLook;
        _headLook.target = target;
        foreach (ViewCone cone in PersonalVision.ViewCones) {
            cone.renderer.enabled = shouldLook;
        }

    }

    protected override void Wander(float elapsedTime)
    {
        if (_wanderZone.extents == Vector3.zero && Animator.CurrentZone != null) {
            _wanderZone = Animator.CurrentZone.collider.bounds;
        }

        // We make sure to limit the amount of time that we wander to allow the player to sneak up
        // It then idles for some time 
        if (_timeLeftWandering < 0) {
            if (_timeSpentIdling < Settings.IdleTime) {
                SetLook(false, Vector3.zero); // Stop looking while idling
                _timeSpentIdling += elapsedTime;
                return;
            } else {
                GetRandomSearchPoint(_wanderZone);
                _timeLeftWandering = Settings.WanderTime;
                _timeSpentIdling = 0;
            }
        }
        _timeLeftWandering -= elapsedTime;
        
        // We need to retarget either if we lose or reach our target
        if (Target == Vector3.zero || Animator.Controller.bounds.Contains(Target)) {
            GetRandomSearchPoint(_wanderZone);
        }
        
        // We also retarget if our current path fails us
        if (!UpdateAStarPath(elapsedTime, Settings.WanderSpeedRatio, false)) {
            //Debug.LogWarning("Astar Pathfinding failed while wandering! Choosing new target.");
            GetRandomSearchPoint(_wanderZone);
            return;
        }
        
        // Go to our location
        NavigateToAstarTarget(Settings.WanderSpeedRatio);

    }

    protected override void Chase(float elapsedTime)
    {
        // We honor the parent implementation, but will also add onto it
        base.Chase(elapsedTime);

        // Don't jump at the player
        bool isLastNode = Path != null && (CurrentPathWaypoint >= Path.vectorPath.Count - 1);
        if (isLastNode) {
            Animator.CharInput.Jump = Vector2.zero;
        }
        
        // Determine attack
        bool shouldAttack = IsPlayerInAttackRange && !Animator.IsDead;
        if (shouldAttack) {

            bool isCharging = Animator.MecanimAnimator.GetBool(MecanimHashes.AttackHorizontal);
            bool isPlayerHittableHorizontally = Mathf.Abs(transform.position.x - GameManager.Player.transform.position.x) < 10;
            if (isCharging && isPlayerHittableHorizontally) { 
                Animator.CharInput.Attack = 0;
            } // Release attack after charge and when close enough
            else {
                Animator.CharInput.Attack = 1;
            }

            bool isPlayerAbove = GameManager.Player.transform.position.y > transform.position.y + Animator.Height * 0.5f;
            if (isPlayerAbove) {
                Animator.CharInput.Attack = -1;
            }

            
        }
        
        // Stop moving while the player is knocked back
        if (GameManager.Player.CurrentState.nameHash == NewmanAnimator.DamagedState) {
            Animator.CharInput.Horizontal = 0;
        }

    }

}
