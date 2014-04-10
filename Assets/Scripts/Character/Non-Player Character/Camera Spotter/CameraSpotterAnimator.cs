using UnityEngine;
using System.Collections;
using System.Collections.Generic;

/// <summary>
/// Camera animator defines the in-game camara spotter enemy-type.
/// All it does is have a view-cone which alerts others to the player's presence.
/// </summary>
[AddComponentMenu("Character/Non-Player Character/Camera Spotter/Camera Spotter Animator")]
public class CameraSpotterAnimator : CharacterAnimator
{
    // Mecanim State Hashes
    public static readonly int ScanState = Animator.StringToHash ("Base Layer.Scan");

    // find view cone so we can calculate a direction vector along it for LOS
    private Transform _viewConeEnd;
	private EnemyAI _ai;
	
    protected override void OnStart ()
    {
        _viewConeEnd = CameraSpotterAnimator.SearchHierarchyForTransform (transform, "ViewConeEnd");

		_ai = GetComponent<EnemyAI> ();

    }
    
    protected override void CreateStateMachine ()
    {
        StateMachine [ScanState] = Scan;
    }
    
    protected void Scan (float elapsedTime)
    {
        // calculate min and max vectors.
        // Debug.DrawLine (transform.position, transform.position + (Direction * 30.0f), Color.green, 0.1f, false);

		if(_ai.IsSeeingPlayer) {
			// stop animating, and instead just follow him.
			MecanimAnimator.enabled = false;

		
		} else {
			MecanimAnimator.enabled = true;

		}

    }

	public void UpdateDirection() {
		if (_viewConeEnd == null)
			return;
		
		Vector3 newDir = _viewConeEnd.transform.position - transform.position;
		newDir.Normalize ();
		Direction = newDir;

	}

    public void OnAnimatorMove ()
    {
		UpdateDirection ();

    }


    // Helper Method to find transform for view cone
    public static Transform SearchHierarchyForTransform (Transform current, string name)
    {
        // check if the current bone is the bone we're looking for, if so return it
        if (current.name == name)
            return current;
        
        // search through child bones for the bone we're looking for
        for (int i = 0; i < current.childCount; ++i) {
            // the recursive step; repeat the search one step deeper in the hierarchy
            Transform found = SearchHierarchyForTransform (current.GetChild (i), name);
            
            // a transform was returned by the search above that is not null,
            // it must be the bone we're looking for
            if (found != null)
                return found;
        }
        
        // bone with name was not found
        return null;
        
    }

    public override EnemySaveState.EnemyType EnemyType {
        get { return EnemySaveState.EnemyType.Enemy_CameraSpotter; }
        
    }

}