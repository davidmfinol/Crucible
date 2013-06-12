using UnityEngine;
using System;
using System.Collections;

public class Zombie_Attacking : CharacterStateMachineState
{
    Transform _bone_L;
    Transform _bone_R;

    public Zombie_Attacking(ZombieStateMachine controller) : base(controller) { }

    public override void StartState()
    {
        base.StartState();
        Controller.animation["Attacking"].wrapMode = WrapMode.Once;
        Controller.animation.CrossFade("Attacking");
        Direction = LevelAttributes.Instance.Player.transform.position.x > Controller.transform.position.x ? Vector3.right : Vector3.left;
        VerticalSpeed = GroundVerticalSpeed;

        // TODO: ACTUALLY Set up the hit boxes
        _bone_L = CharacterStateMachineBase.SearchHierarchyForBone(Controller.transform, "forearm_L");
        _bone_R = CharacterStateMachineBase.SearchHierarchyForBone(Controller.transform, "forearm_R");
        _bone_L.GetComponent<Collider>().enabled = false;
        _bone_L.GetComponent<HitBox>().enabled = false;
        _bone_R.GetComponent<Collider>().enabled = false;
        _bone_R.GetComponent<HitBox>().enabled = false;
    }

    protected override Enum OnUpdate()
    {
        ZombieStates nextState = ZombieStates.Zombie_Attacking;

        // Do movement
        float targetSpeed = 0;
        if (Controller.animation["Attacking"].time > 0.2 && Controller.animation["Attacking"].time < 0.7)
            targetSpeed = ((ZombieStateMachine)Controller).MaxHorizontalSpeed;
        float accelerationSmoothing = 3.0f * Time.deltaTime;
        HorizontalSpeed = Mathf.Lerp(HorizontalSpeed, targetSpeed, accelerationSmoothing);

        // Determine next state
        if (!IsGrounded)
            nextState = ZombieStates.Zombie_Falling;
        else if (!Controller.animation.IsPlaying("Attacking"))
            nextState = ZombieStates.Zombie_Idle;

        return nextState;
    }

    public override void ExitState()
    {
        _bone_L.GetComponent<Collider>().enabled = false;
        _bone_L.GetComponent<HitBox>().enabled = false;
        _bone_R.GetComponent<Collider>().enabled = false;
        _bone_R.GetComponent<HitBox>().enabled = false;
    }

    private bool PlayerIsInRange()
    {
        if (LevelAttributes.Instance.Player != null)
            return Mathf.Abs(Controller.transform.position.x - LevelAttributes.Instance.Player.transform.position.x) < 10;
        return false;
    }
}