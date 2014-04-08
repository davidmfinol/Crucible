using UnityEngine;
using System.Collections;
using System.Collections.Generic;

[AddComponentMenu("Character/Non-Player Character/Camera/Camera Animator")]
public class CameraAnimator : CharacterAnimator
{
    // Mecanim State Hashes
    public static readonly int ScanState = Animator.StringToHash ("Base Layer.Scan");

    // find view cone so we can calculate a direction vector along it for LOS
    Transform _viewConeEnd;
    
    protected override void OnStart ()
    {
        _viewConeEnd = CameraAnimator.SearchHierarchyForTransform (transform, "ViewConeEnd");

        //MecanimAnimator.speed = 0.5f;

    }
    
    protected override void CreateStateMachine ()
    {
        StateMachine [ScanState] = Scan;
    }
    
    protected void Scan (float elapsedTime)
    {
        // calculate min and max vectors.
        // Debug.DrawLine (transform.position, transform.position + (Direction * 30.0f), Color.green, 0.1f, false);

    }
    
    public void OnAnimatorMove ()
    {
        if (_viewConeEnd == null)
            return;

        Vector3 newDir = _viewConeEnd.transform.position - transform.position;
        newDir.Normalize ();
        Direction = newDir;

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