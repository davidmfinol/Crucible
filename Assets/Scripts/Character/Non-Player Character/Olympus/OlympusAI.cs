using UnityEngine;
using System.Collections;

/// <summary>
/// Olympus AI specifies AI behaviour specific to the Olympus enemy type.
/// </summary>
[RequireComponent(typeof(HeadLookController))]
[RequireComponent(typeof(OlympusAwareness))]
[AddComponentMenu("Artificial Intelligence/Olympus AI")]
public class OlympusAI : EnemyAI
{
    // If Olympus's next waypoint is within the MinimumLook distance, Olympus will look at the waypoint after it
    public float MinimumLook = 10.0f;

    // Olympus looks at where he's going
    private HeadLookController _headLook;
    
    // Settings for how the Olympus wanders
    private float _timeLeftWandering;
    private float _timeSpentIdling;
    private Bounds _wanderZone;

    protected override void OnStart()
    {
        _headLook = GetComponent<HeadLookController>();
        _timeLeftWandering = Settings.WanderTime;
        _timeSpentIdling = 0;
        _wanderZone = new Bounds(Vector3.zero, Vector3.zero);

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

    protected override void Wander(float elapsedTime, bool awarenessChanged)
    {
        if (_wanderZone.extents == Vector3.zero && CharAnimator.CurrentZone != null) {
            _wanderZone = CharAnimator.CurrentZone.collider.bounds;
        }

        // We make sure to limit the amount of time that we wander to allow the player to sneak up
        // It then idles for some time 
        if (_timeLeftWandering <= 0) {
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
        if (Target == Vector3.zero || CharAnimator.Controller.bounds.Contains(Target)) {
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

    protected override void Chase(float elapsedTime, bool awarenessChanged)
    {
        // We honor the parent implementation, but will also add onto it
        base.Chase(elapsedTime, awarenessChanged);

        // Don't jump at the player
        bool isLastNode = Path != null && (CurrentPathWaypoint >= Path.vectorPath.Count - 1);
        if (isLastNode) {
            CharAnimator.CharInput.Jump = Vector2.zero;
        }
        
        // Determine attack
        bool shouldAttack = IsPlayerInAttackRange && !CharAnimator.IsDead;
        if (shouldAttack) {

            bool isCharging = CharAnimator.MecanimAnimator.GetBool(MecanimHashes.AttackHorizontal);
            bool isPlayerHittableHorizontally = Mathf.Abs(transform.position.x - GameManager.Player.transform.position.x) < 10;
            if (isCharging && isPlayerHittableHorizontally) { 
                CharAnimator.CharInput.Attack = 0;
            } // Release attack after charge and when close enough
            else {
                CharAnimator.CharInput.Attack = 1;
            }

            bool isPlayerAbove = GameManager.Player.transform.position.y > transform.position.y + CharAnimator.Height * 0.5f;
            if (isPlayerAbove) {
                CharAnimator.CharInput.Attack = -1;
            }

            
        }
        
        // Stop moving while the player is knocked back
        if (GameManager.Player.CurrentState.nameHash == NewmanAnimator.DamagedState) {
            CharAnimator.CharInput.Horizontal = 0;
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
            SetLook(target.y < transform.position.y + CharAnimator.Height, target); // We don't look up
            return true;
            
        } else { 
            SetLook(false, Vector3.zero);
        } // Can't look if we don't know where to look
        return false;
        
    }

}
