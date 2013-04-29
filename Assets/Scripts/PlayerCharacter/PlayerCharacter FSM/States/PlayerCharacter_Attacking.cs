using UnityEngine;
using System;
using System.Collections;

public class PlayerCharacter_Attacking : PlayerCharacterStateMachineState
{
    private int _attackNumber;
    private bool _attackPressed;
    private Transform hitBox;

    public PlayerCharacter_Attacking(PlayerCharacterStateMachine controller) : base(controller) { }

    protected override void OnStartState()
    {
        Controller.animation["AttackingFirst"].wrapMode = WrapMode.Once;
        Controller.animation.CrossFade("AttackingFirst");
        Controller.Whip.animation.CrossFade("Whip_Attack");
        _attackNumber = 1;
        _attackPressed = false;
        HorizontalSpeed = 0;
        VerticalSpeed = GroundVerticalSpeed;

        // Set up the hit boxes
        Transform bone = SearchHierarchyForBone(Controller.transform, "hand_L");
        hitBox = (Transform)MonoBehaviour.Instantiate(Controller.WhipHitBox, bone.position, bone.transform.rotation);
        hitBox.transform.parent = bone;
    }

    protected override Enum OnUpdate()
    {
        PlayerCharacterStates nextState = PlayerCharacterStates.PlayerCharacter_Attacking;

        // Determine next state and do movement
        if (!IsGrounded)
            nextState = PlayerCharacterStates.PlayerCharacter_Falling;
        else if (_attackNumber == 1)
        {
            _attackPressed = _attackPressed || Input.GetButtonDown("Primary");
            if(Controller.animation["AttackingFirst"].normalizedTime > 0.6f)
                HorizontalSpeed = 1;
            if (!Controller.animation.IsPlaying("AttackingFirst"))
            {
                if (!_attackPressed)
                    nextState = PlayerCharacterStates.PlayerCharacter_Idle;
                else
                {
                    Controller.animation["AttackingSecond"].wrapMode = WrapMode.Once;
                    Controller.animation.CrossFade("AttackingSecond");
                    _attackPressed = false;
                    _attackNumber++;
                }
            }

        }
        else if (_attackNumber == 2)
        {
            _attackPressed = _attackPressed || Input.GetButtonDown("Primary");
            HorizontalSpeed = 2;
            if (!Controller.animation.IsPlaying("AttackingSecond"))
            {
                if (!_attackPressed)
                    nextState = PlayerCharacterStates.PlayerCharacter_Idle;
                else
                {
                    Controller.animation["AttackingLast"].wrapMode = WrapMode.Once;
                    Controller.animation.CrossFade("AttackingLast");
                    _attackPressed = false;
                    _attackNumber++;
                }
            }
        }
        else if (_attackNumber == 3)
        {
            HorizontalSpeed = 2;
            if (Controller.animation["AttackingLast"].normalizedTime > 0.4f)
                HorizontalSpeed = 0.0f;
            if (!Controller.animation.IsPlaying("AttackingLast"))
                nextState = PlayerCharacterStates.PlayerCharacter_Idle;
        }

        // Remove the hitbox
        if (nextState != PlayerCharacterStates.PlayerCharacter_Attacking)
            MonoBehaviour.Destroy(hitBox.gameObject);

        return nextState;
    }

    public override bool IsGroundState()
    {
        return true;
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
