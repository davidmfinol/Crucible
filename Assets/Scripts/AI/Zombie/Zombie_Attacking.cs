using UnityEngine;
using System;
using System.Collections;

public class Zombie_Attacking : CharacterStateMachineState
{
    private Transform hitBox_L;
    private Transform hitBox_R;

    public Zombie_Attacking(ZombieStateMachine controller) : base(controller) { }

    public override void StartState()
    {
        base.StartState();
        Controller.animation["Attacking"].wrapMode = WrapMode.Once;
        Controller.animation.CrossFade("Attacking");
        VerticalSpeed = GroundVerticalSpeed;

        // Set up the hit boxes
        Transform bone_L = SearchHierarchyForBone(Controller.transform, "hand_L");
        hitBox_L = (Transform)MonoBehaviour.Instantiate(((ZombieStateMachine)Controller).ZombieHitBox, bone_L.position, bone_L.transform.rotation);
        hitBox_L.transform.parent = bone_L;
        Transform bone_R = SearchHierarchyForBone(Controller.transform, "hand_R");
        hitBox_R = (Transform)MonoBehaviour.Instantiate(((ZombieStateMachine)Controller).ZombieHitBox, bone_R.position, bone_R.transform.rotation);
        hitBox_R.transform.parent = bone_R;
    }

    protected override Enum OnUpdate()
    {
        ZombieStates nextState = ZombieStates.Zombie_Attacking;

        // Do movement
        float targetSpeed = 10;
        float accelerationSmoothing = 0.5f * Time.deltaTime;
        HorizontalSpeed = Mathf.Lerp(HorizontalSpeed, targetSpeed, accelerationSmoothing);

        // Determine next state
        if (!IsGrounded)
            nextState = ZombieStates.Zombie_Falling;
        else if(!Controller.animation.IsPlaying("Attacking"))
            nextState = ZombieStates.Zombie_Idle;

        // Remove the hitbox
        if (nextState != ZombieStates.Zombie_Attacking)
        {
            MonoBehaviour.Destroy(hitBox_L.gameObject);
            MonoBehaviour.Destroy(hitBox_R.gameObject);
        }

        return nextState;
    }

    public Transform SearchHierarchyForBone(Transform current, string name)
    {
        // check if the current bone is the bone we're looking for, if so return it
        if (current.name == name)
            return current;

        // search through child bones for the bone we're looking for
        for (int i = 0; i < current.GetChildCount(); ++i)
        {
            // the recursive step; repeat the search one step deeper in the hierarchy
            Transform found = SearchHierarchyForBone(current.GetChild(i), name);

            // a transform was returned by the search above that is not null,
            // it must be the bone we're looking for
            if (found != null)
                return found;
        }

        // bone with name was not found
        return null;
    }
}